;;;; package.lisp

(defpackage #:stumpwm-settings
  (:use #:cl)
  (:import-from #:defconfig
                #:define-accessor-config
                #:define-variable-config
                #:define-minimal-config
                #:*setv-permissiveness*
                #:setv
                #:psetv
                #:with-atomic-setv
                #:with-atomic-setv*
                #:reset-place
                #:config-error
                #:invalid-datum-error
                #:invalid-coerced-datum-error
                #:no-config-found-error
                #:database-already-exists-error
                #:untrackable-place-error
                #:no-bound-default-value-error
                #:not-resettable-place-error
                #:setv-wrapped-error
                #:define-defconfig-db))
