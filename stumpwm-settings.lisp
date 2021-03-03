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



