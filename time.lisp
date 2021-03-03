(in-package :stumpwm-settings)

(defun time-string-p (string)
  (let ((string-list (coerce string 'list)))
    (loop for (char next) on string-list by 'cdr
          when (char= char #\%)
            do (unless (member next '(#\a #\b #\e #\Y #\k #\M #\S) :test 'char=)
                 (return-from time-string-p nil))
          finally (return-from time-string-p t))))

(deftype time-string ()
  '(satisfies time-string-p))

(with-typespec 'time-string
  stumpwm:*time-format-string-default*
  stumpwm:*time-modeline-string*)
