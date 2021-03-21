(in-package :stumpwm-settings)

(defsetting stumpwm:*mode-line-position*
  :typespec '(member :top :bottom))

(with-typespec '(integer 0)
  stumpwm:*mode-line-border-width*
  stumpwm:*mode-line-pad-x*
  stumpwm:*mode-line-pad-y*)

(with-typespec 'string
  stumpwm:*mode-line-background-color*
  stumpwm:*mode-line-foreground-color*
  stumpwm:*mode-line-border-color*)

;; (let ((color-directive-chars (coerce "*0123456789bBnrR[]>f(^" 'list)))
;;   (defun stumpwm-mode-line-format-string-p (string)
;;     (let ((list (coerce string 'list)))
;;       (loop with formatters = stumpwm:*screen-mode-line-formatters*
;;             for (char next) on list
;;             ;; do (format t "Processing ~A. Next char is ~A.~&" char next)
;;             when (and (char= char #\%)
;;                       (not (char= next #\space))
;;                       (not (assoc next formatters :test 'char=)))
;;               do ;; (format t "  Character ~C follows a %, and is invalid.~&" next)
;;                  (return-from stumpwm-mode-line-format-string-p nil)
;;             when (and (char= char #\^)
;;                       ;; this needs work - should parse things like ^(:fg …)
;;                       (not (member next color-directive-chars :test 'char=)))
;;               do (return-from stumpwm-mode-line-format-string-p nil)
;;             finally (return-from stumpwm-mode-line-format-string-p t)))))

;; (defun stumpwm-mode-line-format-list-p (list)
;;   "is list valid for STUMPWM:*SCREEN-MODE-LINE-FORMAT*"
;;   (loop for element in list
;;         for valid = (typecase element
;;                       (string (stumpwm-mode-line-format-string-p element))
;;                       (symbol (let ((val (symbol-value element)))
;;                                 (typecase val
;;                                   (string (stumpwm-mode-line-format-string-p val))
;;                                   (list (eq (car val) :eval))
;;                                   (symbol t))))
;;                       (list (eq (car element) :eval)))
;;         unless valid
;;           do (return-from stumpwm-mode-line-format-list-p nil)
;;         finally (return-from stumpwm-mode-line-format-list-p t)))

(deftype screen-mode-line-format ()
  '(satisfies stumpwm-mode-line-format-list-p))

;; (defsetting stumpwm:*screen-mode-line-format*
;;   :typespec 'screen-mode-line-format)

(defsetting stumpwm:*mode-line-timeout*
  :typespec '(integer 1))
