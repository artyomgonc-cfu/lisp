(defun replace_val (list from to)
  (cond ((null list) 'nil)
        (T (cons (cond  ((eql (car list) from) to)
                        (T (car list))
        ) (replace_val (cdr list) from to)))
  )
)

(print (replace_val '(abraham test test random test google) 'abraham 'changed))
(print (replace_val '(abraham test test random test google) 'test 'changed))