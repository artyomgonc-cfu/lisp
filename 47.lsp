(setf (get 'dog 'name) 'tarzan)
(setf (get 'dog 'age) '5)
(setf (get 'dog 'color) 'brown)


(defun delete_props (symbol &optional (pl (symbol-plist symbol)))
  (cond
    ((null pl) nil)
    (t (cond
          ((not (equalp (get symbol (car pl)) nil)) (remprop symbol (car pl)) (delete_props symbol))
          (t (delete_props symbol)) 
    ))
  )
)

(print (symbol-plist 'dog))

(delete_props 'dog)

(print (symbol-plist 'dog))
