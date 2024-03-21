(defun replace_atom (list from to)
  (cond
    ((null list) nil)
    ((atom (car list)) (cond
      ((eql (car list) from) (cons
        to (replace_atom (cdr list) from to)
      ))
      (T (cons
        (car list) (replace_atom (cdr list) from to)
      ))
    ))
    (T (cons
      (replace_atom (car list) from to)
      (replace_atom (cdr list) from to)
    ))
  )
)


(defun same (&optional 
    (first '(defun same (&optional (first x) (second y)) z))
    (second '(replace_atom (replace_atom (replace_atom first 'z second) 'y second) 'x first))
            )
  (replace_atom (replace_atom (replace_atom first 'z second) 'y second) 'x first)
)

(print (same))

