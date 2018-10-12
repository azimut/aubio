(uiop:define-package  #:aubio
    (:use #:cl)
  (:export #:with-fvecs
           #:with-fvec
           #:with-onset
           #:with-tempo
           #:with-source
           #:test-onset
           #:test-beats))

(in-package :aubio)
(defun sample (n)
  (coerce n 'single-float))
