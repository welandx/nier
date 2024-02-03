(deftheme nier
  "Created 2024-02-03.")

(defun true-color-p ()
  (or (display-graphic-p)
    (= (tty-display-color-cells) 16777216)))

(defconst nier-palette
  `((ng1           ,(if (true-color-p) "#404040" "#585858"))
     (ng2          ,(if (true-color-p) "#787466" "#585858"))
     (ng3          ,(if (true-color-p) "#686458" "#303030"))
     (ng4          ,(if (true-color-p) "#5e6666" "#303030"))
     (ng5          ,(if (true-color-p) "#50403c" "#303030"))
     (ng6          ,(if (true-color-p) "#4e4c43" "#303030"))
     (ns1          ,(if (true-color-p) "#dad4bb" "#404040" ))
     (ns2          ,(if (true-color-p) "#cac4ad" "#404040" ))
     (ns3          ,(if (true-color-p) "#b9b49f" "#404040" ))
     (ns4          ,(if (true-color-p) "#a9a491" "#404040" ))
     (ns5          ,(if (true-color-p) "#999482" "#404040" ))
     (ns6          ,(if (true-color-p) "#898474" "#404040" ))
     (na1          ,(if (true-color-p) "#cd664d" "#404040" ))
     (na2          ,(if (true-color-p) "#b4af9a" "#404040" ))
     (na3          ,(if (true-color-p) "#3ba99f" "#404040" ))
     (na4          ,(if (true-color-p) "#727b59" "#404040" ))
     (na5          ,(if (true-color-p) "#b26f5f" "#404040" ))
     (yorha-0      ,(if (true-color-p) "#f9f5d7" "#404040" ))
     (yorha-1      ,(if (true-color-p) "#9d0006" "#404040" ))
     (yorha-2      ,(if (true-color-p) "#79740e" "#404040" ))
     (yorha-3      ,(if (true-color-p) "#b57614" "#404040" ))
     (yorha-4      ,(if (true-color-p) "#076678" "#404040" ))
     (yorha-5      ,(if (true-color-p) "#8f3f71" "#404040" ))
     (yorha-6      ,(if (true-color-p) "#427b58" "#404040" ))
     (yorha-7      ,(if (true-color-p) "#504945" "#404040" ))
     (yorha-8      ,(if (true-color-p) "#bdae93" "#404040" ))
     (yorha-9      ,(if (true-color-p) "#282828" "#404040" ))
     (yorha-bg     ,(if (true-color-p) "#c2bda6" "#404040" ))
     (yorha-fg     ,(if (true-color-p) "#48463d" "#404040" ))
     (yorha-cursor ,(if (true-color-p) "#f4f0e1" "#404040" ))
     ))

(custom-theme-set-faces
  'nier
  ;;; base
  '(default                      ((t (:background "#dad4bb" :foreground "#404040"))))
  '(highlight                    ((t (:background "#999482"))))
  '(cursor                       ((t (:background "#727969"))))
  '(custom-comment               ((t (:foreground "#A9A491"))))
  '(region                       ((t (:extend t :background "#727969"))))
  '(secondary-selection          ((t (:extend t :background "#f9f5d7"))))
  '(link                         ((t (:underline t :foreground "#3ba99f"))))
  '(minibuffer-prompt            ((t (:foreground "#f9f5d7" :background "#686458"))))
  '(error                        ((t (:foreground "#9d0006" :weight bold))))
  '(success                      ((t (:foreground "#727b59" :weight bold))))
  '(match                        ((t (:background "#b4af9a"))))
  '(isearch                      ((t (:background "#8f3f71" :foreground "#f9f5d7"))))
  '(custom-set                   ((t (:background "#f9f5d7" :foreground "#282828"))))
  '(lazy-highlight               ((t (:background "#5e6666" :distant-foreground "black"))))
  '(show-paren-match             ((t (:background "#b4af9a"))))
  '(fringe                       ((t (:background "#dad4bb"))))

  ;;; diff
  '(diff-added                   ((t (:inherit diff-changed :extend t :background "#727b59"))))
  '(diff-removed                 ((t (:inherit diff-changed :extend t :background "#cd664d"))))
  '(diff-changed                 ((t (:extend t :background "#bdae93"))))
  '(diff-hl-change               ((t (:background "#686458" :foreground "#b4af9a"))))


  ;;; completion
  '(completions-common-part      ((t (:foreground "#076678"))))
  ;; orderless
  '(orderless-match-face-2       ((t (:weight bold :foreground "#427b58"))))
  '(orderless-match-face-1       ((t (:weight bold :foreground "#8f3f71"))))
  '(orderless-match-face-0       ((t (:weight bold :foreground "#076678"))))
  ;; corfu
  '(corfu-default                ((t (:background "#cac4ad"))))
  '(corfu-border                 ((t (:background "#a9a491"))))
  '(corfu-current                ((t (:foreground "#f9f5d7" :background "#787466"))))

  ;;; popup
  '(popup-face                   ((t (:inherit default :background "#f9f5d7" :foreground "black"))))

  ;;; telega
  '(telega-msg-heading           ((t (:background "#b9b49f"))))

  ;;; org
  '(org-todo                     ((t (:forground "#b26f5f"))))

  ;;; font-lock
  '(font-lock-comment-face       ((t (:foreground "#A9A491"))))
  '(font-lock-type-face          ((t (:foreground "#9f8962"))))
  '(font-lock-builtin-face       ((t (:foreground "#787466"))))
  '(font-lock-function-name-face ((t (:foreground "#076678"))))
  '(font-lock-string-face        ((t (:foreground "#427b58"))))
  '(font-lock-keyword-face       ((t (:foreground "#b26f5f"))))
  '(font-lock-variable-name-face ((t (:foreground "#5e6666"))))

  ;;; mode-line & misc ui
  '(mode-line                    ((t (:background "#686458" :foreground "#dad4bb"))))
  '(mode-line-inactive           ((t (:inherit mode-line :background "#cac4ad" :foreground "grey20" :weight light))))
  '(widget-field                 ((t (:box (:line-width (1 . -1) :color "gray80") :background "#f4f0e1" :extend t))))
  '(custom-button                ((t (:box (:line-width (2 . 2) :style released-button) :foreground "#404040" :background "#f4f0e1"))))
  '(custom-button-mouse          ((t (:background "f9f5d7" :foreground "black" :box (:line-width (2 . 2) :style released-button)))))
  '(custom-button-pressed        ((t (:box (:line-width (2 . 2) :style pressed-button) :foreground "black" :background "#f9f5d7"))))
  )

(provide-theme 'nier)
