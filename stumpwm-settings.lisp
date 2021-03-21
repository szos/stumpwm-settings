;;;; stumpwm-settings.lisp

(in-package #:stumpwm-settings)

(defconfig:define-defconfig-db *stumpwm-db* :stumpwm
  :doc "defconfig database for stumpwm")

(defmacro defsetting (place &rest keys)
  `(defconfig:define-variable-config ,place ,place :db *stumpwm-db* ,@keys))

(defmacro with-typespec (typespec &body variables)
  (let ((forms (loop for variable in variables
                     collect `(defsetting ,variable :typespec ,typespec))))
    `(progn ,@forms)))

(defun generate-set-string (symbol)
  (let ((value (symbol-value symbol)))
    (if (eq t value)
        (format nil "T")
        (typecase value
          (string (format nil "~S" value))
          (number value)
          (null "NIL")
          (keyword (format nil ":~A" value))
          (symbol (format nil "'~A" value))
          (cons (format nil "'~S" value))))))

(defun write-settings-to-file () 
  (with-open-file (file "~/.stumpwm.d/customize-variables.lisp"
                        :direction :output
                        :element-type 'character
                        :if-exists :supersede
                        :if-does-not-exist :create)
    (format file ";;;; This file, customize-variables.lisp, was generated by the package~%;;;; stumpwm-settings, and should not be edited. If you edit it by hand, your~%;;;; changes may be overwritten by stumpwm-settings.~%~%")
    (format file "(in-package :stumpwm)~%~%(unless (find-package :stumpwm-settings)~%  (ql:quickload :stumpwm-settings))~%~%(defconfig:setv~%")
    (loop for setting being the hash-value of (cdr stumpwm-settings::*stumpwm-db*)
          for place = (defconfig:config-info-place setting)
          do (format file "~& ~A ~A~&"
                     place (generate-set-string place)))
    (format file " :db stumpwm-settings:*stumpwm-db*)")))
