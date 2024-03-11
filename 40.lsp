(defun finder (obj list)
  (cond
    ((null list) 0)
    ((eql obj (car list)) (+ 1 (finder obj (cdr list))))
    (t (finder obj (cdr list)))
  )
)

(defun unite (first second)
  (cond
    ((null first) second)
    ((> (finder (car first) second) 0)
        (unite (cdr first) second)
    )
    (t (cons
          (car first)
          (unite (cdr first) second)
    ))
  )
)


(print (union '(a b c d) '(e f g h)))
(print (union '(a b c d) '(a f g h)))
(print (union '(a b c d) '(a f g d)))
(print (union '(a b c d) '(a b c d)))
