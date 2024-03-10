(defun list_last (list) (
    cond ((null list) nil)
         ((null (cdr list)) (car list))
         (T (list_last (cdr list)))
  )
)

(print(list_last '(a b c d e)))
(print(list_last '(1 b c d (e 3))))
(print(list_last '()))
