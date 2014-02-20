(require 'my-package-helper)

;;;; auto-complete
(my/package-sync 'auto-complete)
(require 'auto-complete)
(global-auto-complete-mode t)
(require 'auto-complete-config)
(ac-config-default)
