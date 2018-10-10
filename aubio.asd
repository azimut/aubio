;;;; aubio.asd

(asdf:defsystem #:aubio
  :description "Describe aubio here"
  :author "Your Name <your.name@example.com>"
  :license  "Specify license here"
  :version "0.0.2"
  :serial t
  :depends-on (#:cffi)
  :components ((:file "package")
               (:file "aubio-cffi")
               (:file "aubio")))

(asdf:defsystem #:aubio/double
  :description "Describe aubio here"
  :author "Your Name <your.name@example.com>"
  :license  "Specify license here"
  :version "0.0.2"
  :serial t
  :depends-on (#:cffi)
  :components ((:file "package-double")
               (:file "aubio-cffi-double")
               (:file "aubio")))
