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
                #:define-defconfig-db)
  (:import-from #:stumpwm
                #:*maximum-completions*
                #:*timeout-wait*
                #:*timeout-frame-indicator-wait*
                #:*maxsize-border-width*
                #:*transient-border-width*
                #:*normal-border-width*
                #:*message-window-padding*
                #:*message-window-y-padding*
                #:*max-last-message-size*
                #:*min-frame-width*
                #:*min-frame-height*
                #:*debug-level*
                #:*suppress-frame-indicator*
                #:*suppress-window-placement-indicator*
                #:*list-hidden-groups*
                #:*run-or-raise-all-groups*
                #:*run-or-raise-all-screens*
                #:*resize-hides-windows*
                #:*root-click-focuses-frame*
                #:*frame-indicator-text*
                #:*shell-program*
                #:*text-color*
                #:*frame-number-map*
                #:*window-format*
                #:*group-format*
                #:*default-group-name*
                #:*message-window-gravity*
                #:*message-window-input-gravity*
                #:*input-window-gravity*
                #:*top-level-error-action*
                #:*window-name-source*
                #:*new-frame-action*
                #:*new-window-preferred-frame*
                #:*startup-message*
                #:*default-package*
                #:*mouse-focus-policy*
                #:*banish-pointer-to*
                #:*window-border-style*
                #:*input-completion-style*
                #:*ignore-wm-inc-hints*
                #:*queue-messages-p*
                #:*default-selections*
                #:*resize-increment*
                #:*message-max-width*
                #:*help-max-height*
                #:*time-format-string-default*
                #:*time-modeline-string*
                #:*mode-line-position*
                #:*mode-line-border-width*
                #:*mode-line-pad-x*
                #:*mode-line-pad-y*
                #:*mode-line-background-color*
                #:*mode-line-foreground-color*
                #:*mode-line-border-color*
                #:*mode-line-timeout*
                #:*hidden-window-color*
                #:*mode-line-highlight-template*
                #:*colors*
                #:*remapped-keys-enabled-p*)
  (:export #:*stumpwm-db*))
