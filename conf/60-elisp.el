(require 'my-package-helper)

(my/package-sync 'paredit)
(require 'paredit)
(add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)
(add-hook 'lisp-interaction-hook 'enable-paredit-mode)
(define-key emacs-lisp-mode-map (kbd "C-c C-e") 'eval-print-last-sexp)
