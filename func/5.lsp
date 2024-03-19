(defun isnum (x) (numberp x))

(defun qualcuno (f list)
  (cond 
    ((null f) nil)
    ((null list) nil)
    (T (or
          (funcall f (car list))
          (qualcuno f (cdr list))
    ))
  )
)

(print (qualcuno 'isnum '(5 5 3)))
(print (qualcuno 'isnum '(test text some)))
(print (qualcuno 'isnum '(5 text 3 test)))
