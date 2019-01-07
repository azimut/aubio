;;;; aubio.asd

(asdf:defsystem #:aubio
  :description "raw bindings for aubio"
  :author "azimut <azimut.github@protonmail.com>"
  :license "GNU GPL, version 3"
  :homepage "https://github.com/azimut/aubio"
  :version "0.0.3"
  :serial t
  :depends-on (#:cffi)
  :components ((:file "package")
               (:file "aubio-cffi")
               (:file "aubio")))

(asdf:defsystem #:aubio/double
  :description "raw bindings for aubio"
  :author "azimut <azimut.github@protonmail.com>"
  :license "GNU GPL, version 3"
  :homepage "https://github.com/azimut/aubio"
  :version "0.0.3"
  :serial t
  :depends-on (#:cffi)
  :components ((:file "package-double")
               (:file "aubio-cffi-double")
               (:file "aubio")))
