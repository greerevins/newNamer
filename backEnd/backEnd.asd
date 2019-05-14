;;;; backend.asd

(asdf:defsystem #:backend
  :description "Describe backend here"
  :author "Your Name <your.name@example.com>"
  :license  "Specify license here"
  :version "0.0.1"
  :serial t
  :depends-on (:hunchentoot)
  :components ((:file "package")
               (:file "backend")))

;;; (asdf:load-system :backend)