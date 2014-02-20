(require 'my-package-helper)

;;;; emmet-mode
(my/package-sync 'emmet-mode)
(require 'emmet-mode)

(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook 'emmet-mode)
(define-key emmet-mode-keymap (kbd "C-e") 'emmet-expand-line)
(define-key emmet-mode-keymap (kbd "C-j")
  (lambda ()
    (interactive)
    ))
