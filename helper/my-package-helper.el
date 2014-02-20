(provide 'my-package-helper)

(require 'package)
(defun my/package-sync (package)
  (or (package-installed-p package)
      (package-install package)))
