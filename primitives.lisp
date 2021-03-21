(in-package :stumpwm-settings)

(with-typespec '(integer 0)
  *maximum-completions*
  *timeout-wait*
  *timeout-frame-indicator-wait*
  *maxsize-border-width*
  *transient-border-width*
  *normal-border-width*
  *message-window-padding*
  *message-window-y-padding*
  *max-last-message-size*
  *min-frame-width*
  *min-frame-height*
  *debug-level*)

(with-typespec '(or t null)
  *suppress-frame-indicator*
  *suppress-window-placement-indicator*
  *list-hidden-groups*
  *run-or-raise-all-groups*
  *run-or-raise-all-screens*
  *resize-hides-windows*
  *root-click-focuses-frame*)

(with-typespec 'string
  *frame-indicator-text*
  *shell-program*
  *text-color*
  *frame-number-map*
  *window-format*
  *group-format*
  *default-group-name*)

(with-typespec '(member :top-left :top-right :bottom-left :bottom-right :center
                 :top :left :right :bottom)
  *message-window-gravity*
  *message-window-input-gravity*
  *input-window-gravity*)

(defsetting *top-level-error-action*
  :typespec '(member :abort :message :break))

(defsetting *window-name-source*
  :typespec '(member :title :class :resource-name))

(defsetting *new-frame-action*
  :typespec '(member :empty :last-window))

(defsetting *new-window-preferred-frame*
  :typespec '(or (member :focused :last :empty :unfocused) cons function))

(defsetting *startup-message*
  :typespec '(or string null))

(defsetting *default-package*
  :typespec 'package)

(defsetting *mouse-focus-policy*
  :typespec '(member :click :ignore :sloppy))

(defsetting *banish-pointer-to*
  :typespec '(member :screen :head :frame :window))

(defsetting *window-border-style*
  :typespec '(member :thick :thin :tight :none))


