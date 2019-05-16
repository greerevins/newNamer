
(in-package :backend)

(defparameter *namegenerator-server* (make-instance 'hunchentoot:easy-acceptor :port 4242))

(defun start-name-generator ()
  (hunchentoot:start *namegenerator-server*))

(defun stop-name-generator ()
  (hunchentoot:stop *namegenerator-server*))

(hunchentoot:define-easy-handler (namegen :uri "/generate-names") ()
  (setf (hunchentoot:content-type*) "text/plain")
  (format nil "~S" (generate-names 10)))

;;; (start-name-generator)