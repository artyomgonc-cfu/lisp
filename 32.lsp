(defun finder (obj list)
  (cond
    ((null list) 0)
    ((eql obj (car list)) (+ 1 (finder obj (cdr list))))
    (t (finder obj (cdr list)))
  )
)

(defun set_p (list &optional (full list))
  (cond
    ((null list) t)
    ((> (finder (car list) full) 1) nil)
    (t (set_p (cdr list) full))
  )
)


(print (set_p '(a b c d)))
(print (set_p '(a b c d d)))
(print (set_p '(a a a a a b c d d d d d)))
(print (set_p '(test 3.14 1 ll)))
