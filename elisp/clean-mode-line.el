(defvar mode-line-cleaner-alist
  `( ;; Minor modes
    (ivy-mode . "")
    (helm-mode . "")
    (auto-complete-mode . " α")
    (yas/minor-mode . "")
    (yas-minor-mode . "")
    (paredit-mode . " ()")
    (lispy-mode . " ()")
    (paredit-algol-like-mode . " {}")
    (eldoc-mode . "")
    (abbrev-mode . "")
    (drag-stuff-mode . "")
    (hi-lock-mode . "")
    (hs-minor-mode . "")
    (rainbow-mode . "")
    (company-mode . " cmpl")
    (page-break-lines-mode . "")
    (subword-mode . "")
    (highlight-indentation-mode . "")
    (auto-revert-mode . "")
    ;; Major modes
    (lisp-interaction-mode . "λ")
    (c-mode . "C")
    (python-mode . "Py")
    (emacs-lisp-mode . "Eλ")
    (lisp-mode . "λ")
    (nxhtml-mode . "nx"))
  "Alist for `clean-mode-line'.

When you add a new element to the alist, keep in mind that you
must pass the correct minor/major mode symbol and a string you
want to use in the modeline *in lieu of* the original.")

(defun clean-mode-line ()
  (interactive)
  (loop for cleaner in mode-line-cleaner-alist
        do (let* ((mode (car cleaner))
                 (mode-str (cdr cleaner))
                 (old-mode-str (cdr (assq mode minor-mode-alist))))
             (when old-mode-str
                 (setcar old-mode-str mode-str))
               ;; major mode
             (when (eq mode major-mode)
               (setq mode-name mode-str)))))

(add-hook 'after-change-major-mode-hook 'clean-mode-line)

;;; alias the new `flymake-report-status-slim' to
;;; `flymake-report-status'
(defalias 'flymake-report-status 'flymake-report-status-slim)
(defun flymake-report-status-slim (e-w &optional status)
  "Show \"slim\" flymake status in mode line."
  (when e-w
    (setq flymake-mode-line-e-w e-w))
  (when status
    (setq flymake-mode-line-status status))
  (let* ((mode-line " Φ"))
    (when (> (length flymake-mode-line-e-w) 0)
      (setq mode-line (concat mode-line ":" flymake-mode-line-e-w)))
    (setq mode-line (concat mode-line flymake-mode-line-status))
    (setq flymake-mode-line mode-line)
    (force-mode-line-update)))

(provide 'clean-mode-line)
