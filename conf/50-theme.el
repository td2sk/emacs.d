;;;; theme
(require 'el-get)
(add-to-list
 'el-get-sources
 '(:name molokai-theme
        :type github
        :pkgname "hbin/molokai-theme"))

(el-get 'sync 'molokai-theme)
(add-to-list 'custom-theme-load-path (concat el-get-dir "molokai-theme"))
(load-theme 'molokai t)
