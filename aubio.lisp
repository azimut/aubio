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
     (aubio:aubio_onset_set_minioi_ms ,var 12f0)
     (aubio:aubio_onset_set_threshold ,var .3f0)
     (unwind-protect (progn ,@body)
       (aubio:del_aubio_onset ,var))))

(defmacro with-source
    ((var filepath &key (sample-rate 44100) (window-size 512)) &body body)
  `(progn
     (assert (uiop:file-exists-p ,filepath))
     (let ((,var (aubio:new_aubio_source ,filepath ,sample-rate ,window-size)))
      (unwind-protect (progn ,@body)
        (aubio:del_aubio_source ,var)))))

(defun test-onset (filename)
  (declare (string filename))
  (let ((total-frames-counter 0))
    (with-source (source filename)
      (with-onset (onset :buf-size 1024 :hop-size 512)
        (with-fvecs ((sample-buffer 512)
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
                   (push (/ total-frames-counter 44100f0) times)
                   (return (reverse times)))))))))))

