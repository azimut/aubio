(in-package :aubio)
;; (aubio:new_aubio_onset METHOD AUBIO::BUF_SIZE AUBIO::HOP_SIZE
;;                 AUBIO::SAMPLERATE)

(defmacro with-fvec ((var hop-size) &body body)
  `(let ((,var (aubio:new_fvec ,hop-size)))
     (unwind-protect (progn ,@body)
       (aubio:del_fvec ,var))))

(defmacro with-onset ((var method buf-size hop-size sample-rate) &body body)
  `(let ((,var (aubio:new_aubio_onset ,method ,buf-size ,hop-size ,sample-rate)))
     (unwind-protect (progn ,@body)
       (aubio:del_aubio_onset ,var))))

(defun test ()
  (let* ((sample-rate 44100)
         (win-size 1024)
         (hop-size (/ win-size 4)))
    (with-fvec (out hop-size)
      (with-onset (o "default" win-size hop-size sample-rate)
  ;; do {
  ;;   // put some fresh data in input vector
  ;;   aubio_source_do(source, in, &read);
  ;;   // execute onset
  ;;   aubio_onset_do(o,in,out);
  ;;   // do something with the onsets
  ;;   if (out->data[0] != 0) {
  ;;     PRINT_MSG("onset at %.3fms, %.3fs, frame %d\n",
  ;;         aubio_onset_get_last_ms(o), aubio_onset_get_last_s(o),
  ;;         aubio_onset_get_last(o));
  ;;   }
  ;;   n_frames += read;
  ;; } while ( read == hop_size );
))))
