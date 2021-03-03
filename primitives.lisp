(in-package :stumpwm-settings)

(with-typespec '(integer 0)
  stumpwm:*maximum-completions*
  stumpwm:*timeout-wait*
  stumpwm:*timeout-frame-indicator-wait*
  stumpwm:*maxsize-border-width*
  stumpwm:*transient-border-width*
  stumpwm:*normal-border-width*
  stumpwm:*message-window-padding*
  stumpwm:*message-window-y-padding*
  stumpwm:*max-last-message-size*
  stumpwm:*min-frame-width*
  stumpwm:*min-frame-height*
  stumpwm:*debug-level*)

(with-typespec '(or t null)
  stumpwm:*suppress-frame-indicator*
  stumpwm:*suppress-window-placement-indicator*
  stumpwm:*list-hidden-groups*
  stumpwm:*run-or-raise-all-groups*
  stumpwm:*run-or-raise-all-screens*
  stumpwm:*resize-hides-windows*
  stumpwm:*root-click-focuses-frame*)

(with-typespec 'string
  stumpwm:*frame-indicator-text*
  stumpwm:*shell-program*
  stumpwm:*text-color*
  stumpwm:*frame-number-map*
  stumpwm:*window-format*
  stumpwm:*group-format*
  stumpwm:*default-group-name*)

(with-typespec '(member :top-left :top-right :bottom-left :bottom-right :center
                 :top :left :right :bottom)
  stumpwm:*message-window-gravity*
  stumpwm:*message-window-input-gravity*
  stumpwm:*input-window-gravity*)

(defsetting stumpwm:*top-level-error-action*
  :typespec '(member :abort :message :break))

(defsetting stumpwm:*window-name-source*
  :typespec '(member :title :class :resource-name))

(defsetting stumpwm:*new-frame-action*
  :typespec '(member :empty :last-window))

(defsetting stumpwm:*new-window-preferred-frame*
  :typespec '(or (member :focused :last :empty :unfocused) cons function))

(defsetting stumpwm:*startup-message*
  :typespec '(or string null))

(defsetting stumpwm:*default-package*
  :typespec 'package)

(defsetting stumpwm:*mouse-focus-policy*
  :typespec '(member :click :ignore :sloppy))

(defsetting stumpwm:*banish-pointer-to*
  :typespec '(member :screen :head :frame :window))

(defsetting stumpwm:*window-border-style*
  :typespec '(member :thick :thin :tight :none))


