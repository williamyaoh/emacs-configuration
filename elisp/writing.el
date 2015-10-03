(defcustom writing-font "Optima"
  "The font used when in `writing-mode'.")

(defcustom writing-font-size 16
  "Point size for the font used in `writing-mode'.")

(define-derived-mode writing-mode text-mode "Writing"
  "Enter a new frame to edit text, with no distractions."
  (when (display-graphic-p nil)
    (make-frame)
    (set-frame-font (font-spec :name writing-font :size writing-font-size)))
  (writeroom-mode))

;;;; Specific file types for text writing.

(add-to-list 'auto-mode-alist '("\\.md\\'" . writing-mode))

(provide 'writing)
