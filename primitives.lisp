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
  stumpwm:*min-frame-height*)

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
  stumpwm:*text-color*)

(with-typespec '(member :top-left :top-right :bottom-left :bottom-right :center
                 :top :left :right :bottom)
  stumpwm:*message-window-gravity*
  stumpwm:*message-window-input-gravity*
  stumpwm:*input-window-gravity*)

(defsetting stumpwm:*top-level-error-action*
  :typespec '(member :abort :message :break))

(defsetting stumpwm:*window-name-source*
  :typespec '(member :title :class :resource-name))

(defsetting stumpwm:*frame-number-map*
  :typespec 'string)

(defsetting stumpwm:*window-format*
  :typespec 'string)

(defconfig stumpwm:*group-format*
  :typespec 'string)

(defconfig stumpwm:*new-frame-action*
  :typespec '(member :empty :last-window))

(defconfig stumpwm:*new-window-preferred-frame*
  :typespec '(or (member :focused :last :empty :unfocused)
              function))

(defconfig stumpwm:*startup-message*
  :typespec '(or string null))

(defconfig stumpwm:*default-package*
  :typespec 'package)

(defconfig stumpwm:*mouse-focus-policy*
  :typespec '(member :click :ignore :sloppy))


