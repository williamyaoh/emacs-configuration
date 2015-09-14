;;;; Personal keybindings. Load this file last.

;;;; Updated 2015-08-05

(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "C-x C-m") 'smex)
(global-set-key (kbd "C-x M-m") 'smex-major-mode-commands)

(global-set-key (kbd "C-M-,") 'beginning-of-buffer)
(global-set-key (kbd "C-M-.") 'end-of-buffer)

(global-set-key (kbd "C-w") 'backward-kill-word)
(global-set-key (kbd "C-x C-k") 'kill-region)

(global-set-key (kbd "C-x j") 'delete-indentation)

(global-set-key (kbd "C-x t") 'insert-todo)

(global-set-key (kbd "C-x C-h") 'magit-status)

(global-set-key (kbd "C-x C-y") 'backwards-upcase-sexp)

(global-set-key (kbd "C-c C-d C-s") 'swap-window-buffers)

(global-set-key (kbd "M-h") 'er/expand-region)

(global-set-key (kbd "C-c C-d M-h") 'dash-at-point)

(global-unset-key (kbd "RET"))
(global-unset-key (kbd "C-x m"))
(global-unset-key (kbd "C-x C-b"))
(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "C-x C-z"))

(defalias 'qrr 'query-replace-regexp)
