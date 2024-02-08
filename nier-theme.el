(deftheme nier
  "Created 2024-02-03.")

(defun true-color-p ()
  (or (display-graphic-p)
    (= (tty-display-color-cells) 16777216)))

(defconst nier-palette
  `((ng1           ,(if (true-color-p) "#404040" "#444"))
     (ng2          ,(if (true-color-p) "#787466" "#776"))
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
     (nier1        ,(if (true-color-p) "#F4D9AF" "#202020"))
     (nier2        ,(if (true-color-p) "#6f414c" "#202020"))
     (nier3        ,(if (true-color-p) "#c1a898" "#202020"))
     (nier4        ,(if (true-color-p) "#cab49e" "#202020"))
     (nier5        ,(if (true-color-p) "#77713F" "#202020"))
     ))

(defmacro define-nier-theme (theme &rest faces)
  `(let ((class '((class color) (min-colors 89)))
         ,@nier-palette)
     (custom-theme-set-faces
      ,theme
       ,@faces)))

(define-nier-theme
  'nier
  ;;; base
  `(default                      ((,class (:background ,yorha-bg :foreground ,yorha-fg))))
  `(highlight                    ((,class (:background ,ns5))))
  `(cursor                       ((,class (:background ,nier5))))
  `(custom-comment               ((,class (:foreground "#b7bd93"))))
  `(region                       ((,class (:extend t :background "#9a916a"))))
  `(secondary-selection          ((,class (:extend t :background ,yorha-0))))
  `(link                         ((,class (:underline t :foreground ,yorha-5))))
  `(minibuffer-prompt            ((,class (:foreground ,yorha-0 :background ,ng3))))
  `(error                        ((,class (:foreground ,yorha-1 :weight bold))))
  `(success                      ((,class (:foreground ,na4 :weight bold))))
  `(warning                      ((,class (:foreground ,yorha-3 :weight bold))))
  `(match                        ((,class (:background ,na2))))
  `(isearch                      ((,class (:background ,yorha-5 :foreground ,yorha-0))))
  `(custom-set                   ((,class (:background ,yorha-0 :foreground ,yorha-9))))
  `(lazy-highlight               ((,class (:background ,ng4 :distant-foreground "black"))))
  `(show-paren-match             ((,class (:background ,na2))))
  `(fringe                       ((,class (:background ,yorha-bg))))
  `(help-key-binding                       ((,class (:background ,ns1 :foreground ,yorha-9 :box (:line-width (1 . -1) :color ,ng4)))))
  `(header-line                       ((,class (:background ,ns3 :foreground ,yorha-9 :box nil :inherit mode-line))))
  ;;whitespace
  `(whitespace-empty                       ((,class (:extend t :background ,yorha-8))))
  `(whitespace-trailing                       ((,class (:bold t :background ,yorha-8 :foreground ,yorha-3))))

  ;;; diff
  `(diff-file-header                   ((,class (:extend t :background ,nier2))))
  `(diff-header                   ((,class (:extend t :background ,ns5))))
  `(diff-added                   ((,class (:inherit diff-changed :extend t :background ,na4))))
  `(diff-removed                 ((,class (:inherit diff-changed :extend t :background ,na1))))
  `(diff-changed                 ((,class (:extend t :background ,yorha-8))))
  `(diff-hl-change               ((,class (:background ,ng3 :foreground ,na2))))
  ;; smerge/magit
  `(smerge-upper ((,class (:extend t :background ,na1))))
  `(smerge-lower ((,class (:extend t :background ,na4))))
  `(magit-diff-context-highlight ((,class (:extend t :background ,na2 :foreground ,yorha-fg))))
  `(magit-diff-context ((,class (:extend t :background ,na2 :foreground ,yorha-fg))))
  `(magit-diff-added-highlight ((,class (:extend t :background ,na4 :foreground ,yorha-0))))
  `(magit-diff-added ((,class (:extend t :background ,na4 :foreground ,yorha-0))))
  `(magit-diff-removed-highlight ((,class (:extend t :background ,na1 :foreground ,yorha-0))))
  `(magit-diff-removed ((,class (:extend t :background ,na1 :foreground ,yorha-0))))
  `(magit-diff-hunk-heading-highlight ((,class (:extend t :background ,ng2 :foreground ,yorha-0))))
  `(magit-diff-hunk-heading ((,class (:extend t :background ,yorha-bg))))
  `(magit-section-highlight ((,class (:extend t :background ,ns3))))

  ;;; completion
  `(completions-common-part      ((,class (:foreground ,yorha-4))))
  ;; orderless
  `(orderless-match-face-2       ((,class (:weight bold :foreground ,yorha-6))))
  `(orderless-match-face-1       ((,class (:weight bold :foreground ,yorha-5))))
  `(orderless-match-face-0       ((,class (:weight bold :foreground ,yorha-4))))
  ;; corfu
  `(corfu-default                ((,class (:background ,ns2))))
  `(corfu-border                 ((,class (:background ,ns4))))
  `(corfu-current                ((,class (:foreground ,yorha-0 :background "#787466"))))

  ;;; popup
  `(popup-face                   ((,class (:inherit default :background ,ns1 :foreground ,ng1))))

  ;;; telega
  `(telega-msg-heading           ((,class (:background ,ns3))))

  ;;; org
  `(org-todo                     ((,class (:foreground ,na5))))
  `(org-table                     ((,class (:foreground ,nier2))))
  `(org-modern-done ((,class (:background ,yorha-8 :foreground ,yorha-9 :inherit org-modern-label))))

  ;;; font-lock
  `(font-lock-comment-face       ((,class (:foreground ,ns5))))
  `(font-lock-type-face          ((,class (:foreground "#9f8962"))))
  `(font-lock-builtin-face       ((,class (:foreground "#787466"))))
  `(font-lock-function-name-face ((,class (:foreground ,nier5))))
  `(font-lock-string-face        ((,class (:foreground ,na4))))
  `(font-lock-keyword-face       ((,class (:foreground ,na5))))
  `(font-lock-variable-name-face ((,class (:foreground ,ng4))))
  `(font-lock-constant-face ((,class (:foreground ,yorha-4))))
  `(font-lock-warning-face ((,class (:inherit error :bold nil))))

  ;;; mode-line & misc ui
  `(mode-line                    ((,class (:background ,yorha-fg :foreground ,ns1))))
  `(mode-line-inactive           ((,class (:inherit mode-line :background ,ns2 :foreground "grey20" :weight light))))
  `(widget-field                 ((,class (:box (:line-width (1 . -1) :color "gray80") :background ,yorha-cursor :extend t))))
  `(custom-button                ((,class (:box (:line-width (2 . 2) :style released-button) :foreground ,ng1 :background ,yorha-cursor))))
  `(custom-button-mouse          ((,class (:background "f9f5d7" :foreground "black" :box (:line-width (2 . 2) :style released-button)))))
  `(custom-button-pressed        ((,class (:box (:line-width (2 . 2) :style pressed-button) :foreground "black" :background ,yorha-0))))
  ;;tab-bar
  `(tab-bar ((,class (:background ,yorha-bg :inherit variable-pitch))))
  `(tab-bar-tab ((,class (:background ,ns1 :inherit tab-bar))))
  `(tab-bar-tab-inactive ((,class (:background ,ns3 :inherit tab-bar))))
  )

(provide-theme 'nier)
