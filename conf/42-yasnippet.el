(require 'my-package-helper)

;;;; yasnippet
(my/package-sync 'yasnippet)
(require 'yasnippet)
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"))
(yas-global-mode 1)
