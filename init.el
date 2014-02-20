;;;; add helpers path
(add-to-list 'load-path "~/.emacs.d/helper/")

;;;; package management
(defvar my/vendor-dir "~/.emacs.d/vendor/")

;;;; package.el
(require 'my-package-helper)
(require 'package)
(setq package-user-dir (concat my/vendor-dir "package/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(if (not (file-directory-p package-user-dir))
    (package-refresh-contents))
(package-initialize)

;;;; el-get.el
(defvar el-get-dir (concat my/vendor-dir "el-get/"))
(add-to-list 'load-path (concat el-get-dir "el-get/"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

;;;; init loader
(let ((package 'init-loader))
  (or (package-installed-p package)
      (package-install package)))
(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/conf")

