(in-package #:aubio)

(defmacro with-fvecs (fvecs &body body)
  "Bind multiple fvecs and free them after block ends."
  (let ((vars (mapcar #'car fvecs)))
    `(let ,(mapcar (lambda (x) `(,(car x) (aubio:new_fvec ,@(cdr x))))
            fvecs)
       (unwind-protect (progn ,@body)
         ,@(mapcar (lambda (x) `(aubio:del_fvec ,x))
                   vars)))))

(defmacro with-fvec ((var hop-size) &body body)
  "Bind a fvec and free it after block ends."
  `(let ((,var (aubio:new_fvec ,hop-size)))
     (unwind-protect (progn ,@body)
       (aubio:del_fvec ,var))))

;;--------------------------------------------------

(defmacro with-onset ((var &key
                           (method "default")
                           (threshold .3)
                           (minioi-ms 12)
                           (silence -90)
                           (buf-size *default-buf-size*)
                           (hop-size *default-hop-size*)
                           (sample-rate *default-sample-rate*))
                      &body body)
  "Allocate an onset ANALYSIS object and free it after block ends."
  `(let ((,var (aubio:new_aubio_onset ,method ,buf-size ,hop-size ,sample-rate)))
     (aubio:aubio_onset_set_silence ,var (sample ,silence))
     (aubio:aubio_onset_set_minioi_ms ,var (sample ,minioi-ms))
     (aubio:aubio_onset_set_threshold ,var (sample ,threshold))
     (unwind-protect (progn ,@body)
       (aubio:del_aubio_onset ,var))))

(defmacro with-tempo ((var &key
                           (method "specdiff")
                           (threshold .3)
                           (silence -70)
                           (buf-size *default-buf-size*)
                           (hop-size *default-hop-size*)
                           (sample-rate *default-sample-rate*))
                      &body body)
  "Allocate an tempo ANALYSIS object and free it after block ends."
  `(let ((,var (aubio:new_aubio_tempo ,method ,buf-size ,hop-size (round ,sample-rate))))
     (aubio:aubio_tempo_set_threshold ,var (sample ,threshold))
     (aubio:aubio_tempo_set_silence ,var (sample ,silence))
     (unwind-protect (progn ,@body)
       (aubio:del_aubio_tempo ,var))))

(defmacro with-pitch ((var &key
                           (method "yinfft")
                           (confidence .8)
                           (silence -90)
                           (buf-size *default-buf-size*)
                           (hop-size *default-hop-size*)
                           (sample-rate *default-sample-rate*))
                      &body body)
  "Allocate an audio pitch ANALYSIS object and free it after block ends."
  `(let ((,var (aubio:new_aubio_pitch ,method ,buf-size ,hop-size (round ,sample-rate))))
     (aubio:aubio_pitch_set_unit ,var "midi")
     (aubio:aubio_pitch_set_silence ,var ,silence)
     (aubio:aubio_pitch_set_tolerance ,var (sample ,confidence))
     (unwind-protect (progn ,@body)
       (aubio:del_aubio_pitch ,var))))

;;--------------------------------------------------

(defmacro with-source ((var filepath &key
                            (sample-rate *default-sample-rate*)
                            (hop-size *default-hop-size*))
                       &body body)
  "Input. Allocate a SOURCE and free it after block ends.
   Example:
   (with-source (s \"/home/user/a.wav\")
     ...)"
  `(progn
     (assert (uiop:file-exists-p ,filepath))
     (let ((,var (aubio:new_aubio_source ,filepath ,sample-rate ,hop-size)))
       (unwind-protect (progn ,@body)
         (aubio:del_aubio_source ,var)))))

;;----------------------------------------

(defun test-onset (filename)
  "returns a list of the seconds where a set is found"
  (setf filename (namestring filename))
  (let ((total-frames-counter 0)
        (seconds '())
        (frames '()))
    (aubio:with-source (source filename)
      (aubio:with-onset (onset :buf-size 1024 :hop-size 512)
        (aubio:with-fvecs ((sample-buffer 512)
                           (out-fvec 1))
          (cffi:with-foreign-object (read-buffer :int)
            (loop
               ;; Perform onset calculation
               (aubio:aubio_source_do source sample-buffer read-buffer)
               (sb-int:with-float-traps-masked (:divide-by-zero)
                 (aubio:aubio_onset_do onset sample-buffer out-fvec))
               ;; Retrieve result
               (let ((onset-new-peak (aubio:fvec_get_sample out-fvec 0))
                     (no-of-bytes-read (cffi:mem-ref read-buffer :int)))
                 (incf total-frames-counter no-of-bytes-read)
                 (when (> onset-new-peak 0)
                   (let ((second (aubio:aubio_onset_get_last_s onset)))
                     (push second seconds)
                     (push (round (* second 44100)) frames)))
                 (when (not (= 512 no-of-bytes-read))
                   ;; Let's output one last onset to mark the end of the file
                   (push (sample (/ total-frames-counter 44100)) seconds)
                   (push total-frames-counter frames)
                   (return))))
            (values (reverse seconds) (reverse frames))))))))

;;--------------------------------------------------

(defun test-beats (filename)
  "returns a list of the seconds where a set is found"
  (setf filename (namestring filename))
  (let ((total-frames-counter 0)
        (seconds '())
        (frames '()))
    (aubio:with-source (source filename)
      (aubio:with-tempo (tempo :buf-size 1024 :hop-size 512)
        (aubio:with-fvecs ((sample-buffer 512)
                           (out-fvec 1))
          (cffi:with-foreign-object (read-buffer :int)
            (loop
              ;; Perform onset calculation
              (aubio:aubio_source_do source sample-buffer read-buffer)
              (sb-int:with-float-traps-masked (:divide-by-zero)
                (aubio:aubio_tempo_do tempo sample-buffer out-fvec))
              ;; Retrieve result
              (let ((in-beat (aubio:fvec_get_sample out-fvec 0))
                    (no-of-bytes-read (cffi:mem-ref read-buffer :int)))
                (incf total-frames-counter no-of-bytes-read)
                (when (> in-beat 0)
                  (push (aubio:aubio_tempo_get_last_s tempo) seconds)
                  (push (aubio:aubio_tempo_get_last tempo) frames))
                (when (not (= 512 no-of-bytes-read))
                  ;; Let's output one last onset to mark the end of the file
                  (push (sample (/ total-frames-counter 44100)) seconds)
                  (push total-frames-counter frames)
                  (return))))
            (values (reverse seconds) (reverse frames))))))))

;;--------------------------------------------------

;; (defun test-bpm (filename)
;;   (setf filename (namestring filename))
;;   (let* ((beats (test-beats filename))
;;          (lbeats (length beats)))
;;     (if (> lbeats 2)
;;         (let* ((beat-periods
;;                 (loop :for (x y) :on beats :while (and x y)
;;                    :collect (- y x)))
;;                ;; use interquartile median to discourage outliers               
;;                (s (length beat-periods))
;;                (qrt-lower-idx (floor (/ s 4f0)))
;;                (qrt-upper-idx (* 3 qrt-lower-idx))
;;                (interquartile-beat-periods (subseq beat-periods qrt-lower-idx qrt-upper-idx))
;;                ;; Calculate median
;;                (iqs (length interquartile-beat-periods))
;;                (iq-median-beat-period )))
;;         60f0)))
