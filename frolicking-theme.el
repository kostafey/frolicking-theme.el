;;; frolicking-theme.el --- light sunshine and frolic theme

;;; Commentary:
;;
;; (load-theme 'frolicking t)
;;; Code:

(deftheme frolicking "DOCSTRING for frolicking-theme")

(let ((frolicking-background        "#FAF9F5")
      (frolicking-foreground        "#32302F") ; "#2E2C2B" "#1F1E1D"
      (frolicking-fringe            "#F5F4ED")
      (frolicking-modeline          "#E6E4DB")
      (frolicking-modeline-inactive "#EBE9E0")
      (frolicking-highlight-gray    "#E9E7E0")
      (frolicking-highlight-blue    "#D6DFED") ; "#CDDBEC"
      (frolicking-highlight-yellow  "#F2E9CC")

      (frolicking-cursor-bg         "#F5F4ED")
      (frolicking-cursor            "#4A4947")
      (frolicking-blue              "#2B69C2") ; "#2864B8" "#3268B8" "#336DC2"
      (frolicking-orange            "#BE602F") ; "#C66B3D" "#B56613" "#BD6232"
      (frolicking-pink              "#D34887") ; "#D73A83"
      (frolicking-purple            "#8A46CE")
      (frolicking-cyan              "#218C8C") ; "#308E8E" "#2D8F8F"
      (frolicking-green             "#218315") ; "#26831A"
      (frolicking-red               "#B33A3A")
      (frolicking-yellow            "#D4A017")
      (frolicking-comment           "#6F6F78")

      (frolicking-add               "#059669")
      (frolicking-modify            "#1F6FE4")
      (frolicking-delete            "#DC2626")
      )

  (custom-theme-set-faces
   'frolicking
   `(default ((t (:foreground ,frolicking-foreground :background ,frolicking-background))))
   `(cursor ((t (:background ,frolicking-cursor))))
   `(hl-line ((t (:background ,frolicking-cursor-bg :inverse-video nil))))
   `(fringe ((t (:background ,frolicking-fringe))))
   `(mode-line ((t (:foreground ,frolicking-foreground :background ,frolicking-modeline))))
   `(mode-line-inactive ((t :foreground ,frolicking-foreground :background ,frolicking-modeline-inactive)))
   `(region ((t (:background ,frolicking-highlight-blue))))
   `(secondary-selection ((t (:background ,frolicking-highlight-gray))))
   `(highlight ((t (:background ,frolicking-highlight-yellow))))
   `(lazy-highlight ((t (:background ,frolicking-highlight-yellow :inverse-video nil))))
   `(idle-highlight ((t (:background ,frolicking-highlight-gray))) t)
   `(isearch ((t (:background ,frolicking-highlight-yellow))))
   `(font-lock-builtin-face ((t (:foreground ,frolicking-orange))))
   `(font-lock-comment-face ((t (:foreground ,frolicking-comment))))
   `(font-lock-function-name-face ((t (:foreground ,frolicking-blue))))
   `(font-lock-keyword-face ((t (:foreground ,frolicking-purple))))
   `(font-lock-string-face ((t (:foreground ,frolicking-green))))
   `(font-lock-type-face ((t (:foreground ,frolicking-pink))))
   `(font-lock-constant-face ((t (:foreground ,frolicking-cyan))))
   `(font-lock-variable-name-face ((t (:foreground ,frolicking-orange))))
   `(minibuffer-prompt ((t (:foreground ,frolicking-blue))))
   `(font-lock-warning-face ((t (:foreground ,frolicking-red :bold t ))))

   ;;Highlight pair parentheses
   `(show-paren-match ((t (:background ,frolicking-highlight-yellow))))
   ;; `(show-paren-mismatch ((t (:background ,organic-marker-red))))

   ;; Git-Gutter
   `(git-gutter:added ((t (:foreground ,frolicking-add)) t))
   `(git-gutter:deleted ((t (:foreground ,frolicking-delete))) t)
   `(git-gutter:modified ((t (:foreground ,frolicking-modify))) t)
   `(git-gutter-fr:added ((t (:foreground ,frolicking-add :background ,frolicking-fringe)) t))
   `(git-gutter-fr:deleted ((t (:foreground ,frolicking-delete :background ,frolicking-fringe))) t)
   `(git-gutter-fr:modified ((t (:foreground ,frolicking-modify :background ,frolicking-fringe))) t)

      ;; Ace-Jump
   `(ace-jump-face-foreground ((t (:foreground ,frolicking-red :underline nil))) t)
   `(ace-jump-face-background ((t (:foreground ,frolicking-foreground :underline nil))) t)

   ;; tab-line
   `(tab-line
     ((t (:inherit nil
          :foreground ,frolicking-foreground
          :background ,frolicking-fringe
          :height 0.9
          :box nil))))
   ;; `(tab-line-tab
   ;;   ((t (:inherit nil
   ;;        :foreground ,organic-green-black
   ;;        :background ,organic-highlight-gray
   ;;        :weight normal
   ;;        :box nil))))
   ;; `(tab-line-tab-inactive
   ;;   ((t (:inherit nil
   ;;        :foreground ,organic-green-black
   ;;        :background ,organic-shadow
   ;;        :weight normal
   ;;        :box nil))))
   ;; `(tab-line-highlight
   ;;   ((t (:inherit nil
   ;;        :foreground ,organic-green-black
   ;;        :background ,organic-bg
   ;;        :weight normal
   ;;        :box nil))))
   ;; `(tab-line-tab-current
   ;;   ((t (:inherit nil
   ;;        :foreground ,organic-green-black
   ;;        :background ,organic-bg
   ;;        :weight semi-bold
   ;;        :box nil))))
   ))

;;;###autoload
(when (and load-file-name (boundp 'custom-theme-load-path))
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))
;; Automatically add this theme to the load path

(provide-theme 'frolicking)

;;; frolicking-theme.el ends here
