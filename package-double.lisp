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
  (coerce n 'double-float))
(defvar *default-buf-size* 1024)
(defvar *default-hop-size* 512)
(defvar *default-sample-rate* 44100)
