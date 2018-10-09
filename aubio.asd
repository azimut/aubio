;;;; aubio.asd

(asdf:defsystem #:aubio
  :description "Describe aubio here"
  :author "Your Name <your.name@example.com>"
  :license  "Specify license here"
  :version "0.0.1"
  :serial t
  :depends-on (#:cffi)
  :components ((:file "package")
               (:file "aubio-cffi")
               (:file "aubio")))
