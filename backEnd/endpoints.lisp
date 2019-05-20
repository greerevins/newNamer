
(in-package :backend)

(defun frontend-pathname () "/Users/greer/Workshop/src/newNamer/frontend/")

(defparameter *namegenerator-server* 
  (make-instance 'hunchentoot:easy-acceptor 
                 :port 4242
                 :document-root (frontend-pathname)))

(defun start-name-generator ()
  (hunchentoot:start *namegenerator-server*))

(defun stop-name-generator ()
  (hunchentoot:stop *namegenerator-server*))

(hunchentoot:define-easy-handler (namegen :uri "/generate-names") ()
  (setf (hunchentoot:content-type*) "application/javascript")
  (let* ((the-names (generate-names 10))
         (first-name (first the-names))
         (rest-names (rest the-names)))
    (with-output-to-string (out)
      (format out "[")
      (format out "~S" first-name)
      (loop for name in rest-names 
            do (format out ", ~S" name))
      (format out "]"))))

;;; (start-name-generator)
;;; (stop-name-generator)
