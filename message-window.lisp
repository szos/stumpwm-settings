(in-package :stumpwm-settings)

(defsetting stumpwm:*queue-messages-p*
  :typespec '(or (member :new-on-bottom) null t))
