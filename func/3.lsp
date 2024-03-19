(defun square (x) (* x x))
(defun isnum (x) (numberp x))

(defun apl_apply (f x)
  (cond 
    ((null f) nil)
    ((null x) nil)
    (T (cons
          (funcall (car f) (car x))
          (apl_apply (cdr f) (cdr x))
    ))
  )
)

(print (apl_apply '(square isnum isnum null null) '(5 5 text text nil)))
