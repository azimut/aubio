;;;; package.lisp

(uiop:define-package  #:aubio
    (:use #:cl)
  (:export #:with-fvecs
           #:with-fvec
           #:with-onset
           #:with-source
           #:test-onset
           #:test-beats))
