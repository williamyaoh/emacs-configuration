;;;; Dyntu customizes.

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fringe-mode (quote (0 . 0)) nil (fringe))
 '(ledger-post-amount-alignment-at :decimal)
 '(show-paren-delay 0))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "light gray" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 90 :width normal :foundry "unknown" :family "Source Code Pro"))))
 '(mode-line ((t (:background "#c13019" :foreground "white" :box nil))))
 '(mode-line-inactive ((t (:box nil))))
 '(parenthesis ((t (:foreground "gray40"))))
 '(powerline-active1 ((t (:background "#602219" :foreground "#e0e0e0"))))
 '(powerline-active2 ((t (:background "#101010" :foreground "#cfcfcf"))))
 '(powerline-inactive1 ((t (:background "#404040" :foreground "#e0e0e0"))))
 '(powerline-inactive2 ((t (:background "#1f1f1f" :foreground "#cfcfcf")))))

(custom-theme-set-variables
 'quasi-monochrome
 '(cursor-type '(bar . 2)))

(custom-theme-set-faces
 'quasi-monochrome
 '(font-lock-warning-face ((t nil)))
 '(font-lock-type-face ((t nil)))
 '(font-lock-keyword-face ((t nil)))
 '(font-lock-function-name-face ((t nil)))
 '(font-lock-builtin-face ((t (:foreground "#f27460"))))
 '(font-lock-comment-face ((t (:foreground "#bca753"))))
 '(cursor ((t (:background "gold2"))))
 '(show-paren-match ((t (:underline "gold2")))))
