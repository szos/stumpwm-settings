(in-package :stumpwm-settings)

(defsetting stumpwm:*default-selections*
  :typespec '(or (member :primary :clipboard) cons))
