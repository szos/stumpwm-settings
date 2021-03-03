(in-package :stumpwm-settings)

(defun list-of-strings-p (l)
  (when (listp l)
    (every 'stringp l)))

(deftype list-of-strings ()
  '(satisfies list-of-strings-p))

(defsetting stumpwm:*colors*
  :typespec 'list-of-strings)
