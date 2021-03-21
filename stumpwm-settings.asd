;;;; stumpwm-settings.asd

(asdf:defsystem #:stumpwm-settings
  :description "Describe stumpwm-settings here"
  :author "Your Name <your.name@example.com>"
  :license  "Specify license here"
  :version "0.0.1"
  :serial t
  :depends-on (#:defconfig #:stumpwm)
  :components ((:file "package")
               (:file "stumpwm-settings")
               (:file "primitives")
               (:file "input")
               (:file "tile-window")
               (:file "message-window")
               (:file "selection")
               (:file "iresize")
               (:file "help")
               (:file "time")
               (:file "mode-line")
               (:file "mode-line-formatters")
               (:file "color")
               (:file "remap-keys")))
