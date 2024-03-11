(defun countlen (list)
  (cond
    ((null list) 0)
    (T (+ 1 (countlen (cdr list))))
  )
)

(defun remove_from (list pos &optional (cur 0))
  (cond 
    ((>= cur pos) nil)
    (T (cons
          (car list) (remove_from (cdr list) pos (+ cur 1))
    ))
  )
)

(defun remove_last (list n)
  (remove_from list (- (countlen list) n))
)

(print (remove_last '(10 9 8 7 6 5 4 3 2 1) '5))
