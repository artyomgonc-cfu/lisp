(defun finder (obj list)
  (cond
    ((null list) 0)
    ((eql obj (car list)) (+ 1 (finder obj (cdr list))))
    (t (finder obj (cdr list)))
  )
)

(defun no_common (first second)
  (cond
    ((null first) t)
    ((> (finder (car first) second) 0) nil)
    (t (no_common (cdr first) second))
  )
)


(print (no_common '(a b c d) '(e f g h)))
(print (no_common '(a b c d) '(a f g h)))
(print (no_common '(a b c d) '(a b c d)))
