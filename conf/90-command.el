;;;; dw
(defun kill-word-at-point ()
  (interactive)
  (let ((char (char-to-string (char-after (point)))))
    (cond
     ((string= " " char) (delete-horizontal-space))
     ((string-match "[\t\n -@\[-`{-~;]" char) (delete-char 1))
     (t (forward-char) (backward-word) (kill-word 1)))))

(defadvice kill-region (around kill-word-or-kill-region activate)
  (if (and (called-interactively-p) transient-mark-mode (not mark-active))
      (kill-word-at-point)
    ad-do-it))
