(defun first_atom (list) 
  (cond 
    ((null list) nil)
    ((atom (car list)) (car list))
    (T (first_atom (car list)))
  )
)

(print (first_atom '(((a b) c) d)))
