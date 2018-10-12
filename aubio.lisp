(in-package :aubio)

(defmacro with-fvecs (fvecs &body body)
  (let ((vars (mapcar #'car fvecs)))
    `(let ,(mapcar (lambda (x) `(,(car x) (aubio:new_fvec ,@(cdr x))))
                   fvecs)
      (unwind-protect (progn ,@body)
        ,@(mapcar (lambda (x) `(aubio:del_fvec ,x))
                  vars)))))

(defmacro with-fvec ((var hop-size) &body body)
  `(let ((,var (aubio:new_fvec ,hop-size)))
     (unwind-protect (progn ,@body)
       (aubio:del_fvec ,var))))

(defmacro with-onset
    ((var &key (method "default") (buf-size 1024) (hop-size 512) (sample-rate 44100))
     &body body)
  `(let ((,var (aubio:new_aubio_onset ,method ,buf-size ,hop-size ,sample-rate)))
     (aubio:aubio_onset_set_minioi_ms ,var (sample 12))
     (aubio:aubio_onset_set_threshold ,var (sample .3))
     (unwind-protect (progn ,@body)
       (aubio:del_aubio_onset ,var))))

(defmacro with-tempo
    ((var &key (method "specdiff") (buf-size 1024) (hop-size 512) (sample-rate 44100))
     &body body)
  `(let ((,var (aubio:new_aubio_tempo ,method ,buf-size ,hop-size ,sample-rate)))
     (unwind-protect (progn ,@body)
       (aubio:del_aubio_tempo ,var))))

(defmacro with-source
    ((var filepath &key (sample-rate 44100) (window-size 512)) &body body)
  `(progn
     (assert (uiop:file-exists-p ,filepath))
     (let ((,var (aubio:new_aubio_source ,filepath ,sample-rate ,window-size)))
      (unwind-protect (progn ,@body)
        (aubio:del_aubio_source ,var)))))

;;----------------------------------------

(defun test-onset (filename)
  "returns a list of the seconds where a set is found"
  (declare (string filename))
  (let ((total-frames-counter 0))
    (aubio:with-source (source filename)
      (aubio:with-onset (onset :buf-size 1024 :hop-size 512)
        (aubio:with-fvecs ((sample-buffer 512)
                           (out-fvec 1))
          (cffi:with-foreign-object (read-buffer :int)
            (loop
               :with times = '()
               :do
               ;; Perform onset calculation
               (aubio:aubio_source_do source sample-buffer read-buffer)
               (sb-int:with-float-traps-masked (:divide-by-zero)
                 (aubio:aubio_onset_do onset sample-buffer out-fvec))
               ;; Retrieve result
               (let ((onset-new-peak (aubio:fvec_get_sample out-fvec 0))
                     (no-of-bytes-read (cffi:mem-ref read-buffer :int)))
                 (incf total-frames-counter no-of-bytes-read)
                 (when (> onset-new-peak 0)
                   (push (aubio:aubio_onset_get_last_s onset) times))
                 (when (not (= 512 no-of-bytes-read))
                   ;; Let's output one last onset to mark the end of the file
                   (push (/ total-frames-counter 44100f0) times)
                   (return (reverse times)))))))))))

;;--------------------------------------------------

(defun test-beats (filename)
  "returns a list of the seconds where a set is found"
  (declare (string filename))
  (let ((total-frames-counter 0))
    (aubio:with-source (source filename)
      (aubio:with-tempo (tempo :buf-size 1024 :hop-size 512)
        (aubio:with-fvecs ((sample-buffer 512)
                           (out-fvec 1))
          (cffi:with-foreign-object (read-buffer :int)
            (loop
               :with times = '()
               :do
               ;; Perform onset calculation
               (aubio:aubio_source_do source sample-buffer read-buffer)
               (sb-int:with-float-traps-masked (:divide-by-zero)
                 (aubio:aubio_tempo_do tempo sample-buffer out-fvec))
               ;; Retrieve result
               (let ((in-beat (aubio:fvec_get_sample out-fvec 0))
                     (no-of-bytes-read (cffi:mem-ref read-buffer :int)))
                 (incf total-frames-counter no-of-bytes-read)
                 (when (> in-beat 0)
                   (push (aubio:aubio_tempo_get_last_s tempo) times))
                 (when (not (= 512 no-of-bytes-read))
                   ;; Let's output one last onset to mark the end of the file
                   (push (/ total-frames-counter 44100f0) times)
                   (return (reverse times)))))))))))

