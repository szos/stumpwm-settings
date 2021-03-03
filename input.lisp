(in-package :stumpwm-settings)

(defsetting stumpwm:*input-completion-style*
  :typespec '(or STUMPWM::INPUT-COMPLETION-STYLE-CYCLIC
              STUMPWM::INPUT-COMPLETION-STYLE-UNAMBIGUOUS))
