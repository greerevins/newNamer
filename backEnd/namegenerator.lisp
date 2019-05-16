(in-package :backend)

(defparameter *sample-names*
  '("Bob"
    "Carol"
    "Ted"
    "Alice"
    "Sally"
    "Flo"
    "Ashley"
    "Kim"
    "Molly"
    "Kate"
    "Fred"
    "Stacy"
    "Claire"
    "Kristin"
    "Jane"
    "Jessica"
    "Lauren"
    "Aiden"
    "Dave"
    "Milly"
    "Anne"
    "Keith"
    "Humbert"
    "Calvin"
    "Ray"))

(defmethod get-pairs ((name string))
  (loop for i from 0 below (- (length name) 1)
        collect (subseq name i (+ i 2))))

;;; (get-pairs "Greer")

(defmethod any ((s sequence))
  (nth (random (length s))
       s))

(defun last-element (ls)
  (first (last ls)))

(defun generate-name ()
  (let* ((start-name (get-pairs (any *sample-names*)))
         (end-name (get-pairs (any *sample-names*))))
    (concatenate 'string
                 (first start-name)
                 (last-element end-name))))

(defun generate-names (n)
  (loop for i from 0 below n
        collect (generate-name)))


