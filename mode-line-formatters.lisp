(in-package :stumpwm-settings)

(let ((colorchars (coerce "*0123456789bBnrR[]>f(^" 'list)))
  (defun pure-color-string-p (string)
    (flet ((only-colors (c)
             (member c colorchars :test 'char=)))
      (let ((chars (coerce string 'list)))
        (every #'only-colors chars)))))

(defsetting stumpwm:*hidden-window-color*
  ;; :validator 'pure-color-string-p
  :typespec 'string
  )

(defsetting stumpwm:*mode-line-highlight-template*
  :typespec 'string)
