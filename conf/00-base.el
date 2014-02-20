;;;; encoding
(set-language-environment 'utf-8)
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8)

;;;; silent boot
(setq inhibit-startup-screen t)
(setq initial-scratch-message "")

;;;; dont create mini buffer
(setq make-backup-files nil)
(setq auto-save-default nil)

;;;; easy answer
(fset 'yes-or-no-p 'y-or-n-p)

;;;; reload
(global-set-key [f12] 'eval-buffer)

;;;; disable \C-z
(global-unset-key "\C-z")

;;;; hide bars
(tool-bar-mode -1)
(menu-bar-mode -1)
(set-scroll-bar-mode nil)

;;;; paren
(show-paren-mode t)

;;;; indent
(global-set-key "\C-m" 'newline-and-indent)

;;;; tab
(setq-default indent-tabs-mode nil)
(custom-set-variables '(tab-width 2))

;;;; destroy tail spaces
;; (setq-default show-trailing-whitespace t)
;; (set-face-background 'trailing-whitespace "#b14770")
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;;;; auto revert
(global-auto-revert-mode 1)
