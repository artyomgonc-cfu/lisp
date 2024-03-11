(defun remove_even (list &optional (even T))
  (cond 
    ((null list) nil)
    (T (cond
          (even (remove_even (cdr list) (not even)))
          (T (cons
                (car list)
                (remove_even (cdr list) (not even))
          ))
    ))
  )
)

(print (remove_even '(0 1 2 3 4 5 6 7 8 9 10)))
