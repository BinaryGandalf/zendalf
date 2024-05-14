;;; zendalf-theme.el

;;; Code:

(deftheme zendalf)

(let
  (
    (class `((type graphic)))
    (fg-1 "#656555")
    (fg "#DCDCCC")
    (fg+1 "#FFFFEF")
    (bg-1 "#2B2B2B")
    (bg-05 "#383838")
    (bg "#3F3F3F")
    (bg+05 "#494949")
    (bg+1 "#4F4F4F")
    (bg+2 "#5F5F5F")
    (bg+3 "#6F6F6F")
    (red-4 "#8C5353")
    (red-3 "#9C6363")
    (red-2 "#AC7373")
    (red-1 "#BC8383")
    (red "#CC9393")
    (red+1 "#DCA3A3")
    (orange "#DFAF8F")
    (yellow-2 "#D0BF8F")
    (yellow-1 "#E0CF9F")
    (yellow "#F0DFAF")
    (green-2 "#5F7F5F")
    (green "#7F9F7F")
    (green+1 "#8FB28F")
    (green+2 "#9FC59F")
    (green+4 "#BFEBBF")
    (cyan "#93E0E3")
    (blue+1 "#94BFF3")
    (blue "#8CD0D3")
    (blue-1 "#7CB8BB")
    (blue-2 "#6CA0A3")
    (magenta "#DC8CC3"))

  (custom-theme-set-faces 'zendalf
    `
    (link
      (
        (,class
          (:foreground ,yellow :underline t :weight bold))))
    `
    (link-visited
      (
        (,class
          (:foreground
            ,yellow-2
            :underline t
            :weight normal))))
    `
    (default
      ((,class (:foreground ,fg :background ,bg))))
    `
    (cursor
      ((,class (:foreground ,fg :background ,fg+1))))
    `
    (escape-glyph
      ((,class (:foreground ,yellow :weight bold))))
    `
    (header-line
      (
        (,class
          (:foreground
            ,yellow
            :background ,bg-1
            :box (:line-width -1 :style released-button)
            :extend t))))
    `(highlight ((,class (:background ,bg-05))))
    `(success ((,class (:foreground ,green :weight bold))))
    `(warning ((,class (:foreground ,orange :weight bold))))

    ;;;;; compilation
    `
    (compilation-column-face
      ((,class (:foreground ,yellow))))
    `
    (compilation-enter-directory-face
      ((,class (:foreground ,green))))
    `
    (compilation-error-face
      (
        (,class
          (:foreground ,red-1 :weight bold :underline t))))
    `(compilation-face ((,class (:foreground ,fg))))
    `(compilation-info-face ((,class (:foreground ,blue))))
    `
    (compilation-info
      ((,class (:foreground ,green+4 :underline t))))
    `
    (compilation-leave-directory-face
      ((,class (:foreground ,green))))
    `(compilation-line-face ((,class (:foreground ,yellow))))
    `
    (compilation-line-number
      ((,class (:foreground ,yellow))))
    `(compilation-message-face ((,class (:foreground ,blue))))
    `
    (compilation-warning-face
      (
        (,class
          (:foreground ,orange :weight bold :underline t))))
    `
    (compilation-mode-line-exit
      ((,class (:foreground ,green+2 :weight bold))))
    `
    (compilation-mode-line-fail
      ((,class (:foreground ,red :weight bold))))
    `
    (compilation-mode-line-run
      ((,class (:foreground ,yellow :weight bold))))

    ;;;;; completions
    `(completions-annotations ((,class (:foreground ,fg-1))))
    `(completions-common-part ((,class (:foreground ,blue))))
    `
    (completions-first-difference
      ((,class (:foreground ,fg+1))))

    ;;;;; customize
    `
    (custom-variable-tag
      ((,class (:foreground ,blue :weight bold))))
    `
    (custom-group-tag
      (
        (,class
          (:foreground ,blue :weight bold :height 1.2))))
    `(custom-state ((,class (:foreground ,green+4))))

    ;;;;; grep
    `(grep-context-face ((,class (:foreground ,fg))))
    `
    (grep-error-face
      (
        (,class
          (:foreground ,red-1 :weight bold :underline t))))
    `(grep-hit-face ((,class (:foreground ,blue))))
    `
    (grep-match-face
      ((,class (:foreground ,orange :weight bold))))
    `
    (match
      (
        (,class
          (:background
            ,bg-1
            :foreground ,orange
            :weight bold))))

    ;;;;; isearch
    `
    (isearch
      (
        (,class
          (:foreground
            ,yellow-2
            :weight bold
            :background ,bg+2))))
    `
    (isearch-fail
      (
        (,class
          (:foreground ,fg :background ,red-4))))
    `
    (lazy-highlight
      (
        (,class
          (:foreground
            ,yellow-2
            :weight bold
            :background ,bg-05))))
    `
    (menu
      ((,class (:foreground ,fg :background ,bg))))
    `(minibuffer-prompt ((,class (:foreground ,yellow))))
    `
    (mode-line
      (
        (,class
          (:foreground
            ,green+1
            :background ,bg-1
            :box (:line-width -1 :style released-button)))
        (t :inverse-video t)))
    `
    (mode-line-buffer-id
      ((,class (:foreground ,yellow :weight bold))))
    `
    (mode-line-inactive
      (
        (,class
          (:foreground
            ,green-2
            :background ,bg-05
            :box (:line-width -1 :style released-button)))))
    `
    (region
      ((,class (:background ,bg-1 :extend t))
        (t :inverse-video t)))
    `(secondary-selection ((,class (:background ,bg+2))))
    `(trailing-whitespace ((,class (:background ,red))))
    `(vertical-border ((,class (:foreground ,fg))))

    ;;;;; font lock
    `
    (font-lock-builtin-face
      ((,class (:foreground ,fg :weight bold))))
    `(font-lock-comment-face ((,class (:foreground ,green))))
    `
    (font-lock-comment-delimiter-face
      ((,class (:foreground ,green-2))))
    `(font-lock-constant-face ((,class nil)))
    `(font-lock-doc-face ((,class (:foreground ,green+2))))
    `
    (font-lock-function-name-face
      ((,class (:foreground ,fg))))
    `
    (font-lock-keyword-face
      ((,class (:foreground ,yellow :weight bold))))
    `
    (font-lock-preprocessor-face
      ((,class (:foreground ,blue+1))))
    `
    (font-lock-regexp-grouping-construct
      ((,class (:foreground ,yellow :weight bold))))
    `
    (font-lock-regexp-grouping-backslash
      ((,class (:foreground ,green :weight bold))))
    `(font-lock-string-face ((,class (:foreground ,red))))
    `(font-lock-type-face ((,class (:foreground ,blue-1))))
    `
    (font-lock-variable-name-face
      ((,class (:foreground ,fg))))
    `
    (font-lock-warning-face
      ((,class (:foreground ,yellow-2 :weight bold))))

    `(c-annotation-face ((,class (:inherit font-lock-constant-face))))

    ;;;;; line numbers
    `
    (line-number
      (
        (,class
          (:inherit
            default
            :foreground ,bg+3
            :background ,bg-05))))
    `
    (line-number-current-line
      (
        (,class
          (:inherit line-number :foreground ,yellow-2))))

    ;;;;; man
    `(Man-overstrike ((,class (:inherit font-lock-keyword-face))))
    `
    (Man-underline
      ((,class (:inherit (font-lock-string-face underline)))))

    ;;;;; wgrep
    `(wgrep-face ((,class nil)))
    `(wgrep-done-face ((,class nil)))
    `(wgrep-file-face ((,class nil)))
    `(wgrep-delete-face ((,class nil)))
    `(wgrep-reject-face ((,class nil)))

    ;;;;; diff
    `
    (diff-added
      ((,class (:background "#335533" :foreground ,green))))
    `
    (diff-changed
      (
        (,class
          (:background "#555511" :foreground ,yellow-1))))
    `
    (diff-removed
      ((,class (:background "#553333" :foreground ,red-2))))
    `
    (diff-refine-added
      (
        (,class
          (:background "#338833" :foreground ,green+4))))
    `
    (diff-refine-changed
      ((,class (:background "#888811" :foreground ,yellow))))
    `
    (diff-refine-removed
      ((,class (:background "#883333" :foreground ,red))))
    `
    (diff-header
      ((,class (:background ,bg+2))
        (t (:background ,fg :foreground ,bg))))
    `
    (diff-file-header
      (
        (,class
          (:background
            ,bg+2
            :foreground ,fg
            :weight bold))
        (t
          (:background
            ,fg
            :foreground ,bg
            :weight bold))))

    ;;;;; diff-hl
    `
    (diff-hl-change
      (
        (,class
          (:foreground ,blue :background ,blue-2))))
    `
    (diff-hl-delete
      (
        (,class
          (:foreground ,red+1 :background ,red-1))))
    `
    (diff-hl-insert
      (
        (,class
          (:foreground
            ,green+1
            :background ,green-2))))

    ;;;;; dired
    `(dired-directory ((,class (:inherit font-lock-type-face))))

    ;;;;; flymake
    `
    (flymake-errline
      (
        (((supports :underline (:style wave)))
          (:underline
            (:style wave :color ,red)
            :inherit unspecified
            :foreground unspecified
            :background unspecified))
        (t (:foreground ,red-1 :weight bold :underline t))))
    `
    (flymake-warnline
      (
        (((supports :underline (:style wave)))
          (:underline
            (:style wave :color ,orange)
            :inherit unspecified
            :foreground unspecified
            :background unspecified))
        (t (:foreground ,orange :weight bold :underline t))))
    `
    (flymake-infoline
      (
        (((supports :underline (:style wave)))
          (:underline
            (:style wave :color ,green)
            :inherit unspecified
            :foreground unspecified
            :background unspecified))
        (t (:foreground ,green-2 :weight bold :underline t))))
    `
    (flymake-error
      (
        (((supports :underline (:style wave)))
          (:underline
            (:style wave :color ,red)
            :inherit unspecified
            :foreground unspecified
            :background unspecified))
        (t (:foreground ,red-1 :weight bold :underline t))))
    `
    (flymake-warning
      (
        (((supports :underline (:style wave)))
          (:underline
            (:style wave :color ,orange)
            :inherit unspecified
            :foreground unspecified
            :background unspecified))
        (t (:foreground ,orange :weight bold :underline t))))
    `
    (flymake-note
      (
        (((supports :underline (:style wave)))
          (:underline
            (:style wave :color ,green)
            :inherit unspecified
            :foreground unspecified
            :background unspecified))
        (t (:foreground ,green-2 :weight bold :underline t))))

    ;;;;; corfu
    `
    (corfu-default
      ((,class (:foreground ,fg :background ,bg+1))))
    `
    (corfu-current
      ((,class (:foreground ,fg :background ,bg-1))))
    `
    (corfu-bar
      ((,class (:background unspecified :foreground unspecified))))
    `
    (corfu-border
      ((,class (:background unspecified :foreground unspecified))))

    ;;;;; magit
    `(magit-section-highlight ((,class (:background ,bg+05))))
    `
    (magit-section-heading
      ((,class (:foreground ,yellow :weight bold))))
    `
    (magit-section-heading-selection
      ((,class (:foreground ,orange :weight bold))))
    `(magit-diff-file-heading ((,class (:weight bold))))
    `
    (magit-diff-file-heading-highlight
      ((,class (:background ,bg+05 :weight bold))))
    `
    (magit-diff-file-heading-selection
      (
        (,class
          (:background
            ,bg+05
            :weight bold
            :foreground ,orange))))
    `(magit-diff-added ((,class (:background ,green-2))))
    `
    (magit-diff-added-highlight
      ((,class (:background ,green))))
    `(magit-diff-removed ((,class (:background ,red-4))))
    `
    (magit-diff-removed-highlight
      ((,class (:background ,red-3))))
    `(magit-diff-hunk-heading ((,class (:background ,bg+1))))
    `
    (magit-diff-hunk-heading-highlight
      ((,class (:background ,bg+2))))
    `
    (magit-diff-hunk-heading-selection
      (
        (,class
          (:background ,bg+2 :foreground ,orange))))
    `
    (magit-diff-lines-heading
      (
        (,class
          (:background ,orange :foreground ,bg+2))))
    `
    (magit-diff-context-highlight
      ((,class (:background ,bg+05 :foreground "grey70"))))
    `(magit-diffstat-added ((,class (:foreground ,green+4))))
    `(magit-diffstat-removed ((,class (:foreground ,red))))
    `
    (magit-popup-heading
      ((,class (:foreground ,yellow :weight bold))))
    `
    (magit-popup-key
      ((,class (:foreground ,green-2 :weight bold))))
    `
    (magit-popup-argument
      ((,class (:foreground ,green :weight bold))))
    `
    (magit-popup-disabled-argument
      ((,class (:foreground ,fg-1 :weight normal))))
    `
    (magit-popup-option-value
      ((,class (:foreground ,blue-2 :weight bold))))
    `
    (magit-process-ok
      ((,class (:foreground ,green :weight bold))))
    `
    (magit-process-ng
      ((,class (:foreground ,red :weight bold))))
    `(magit-log-author ((,class (:foreground ,orange))))
    `(magit-log-date ((,class (:foreground ,fg-1))))
    `(magit-log-graph ((,class (:foreground ,fg+1))))
    `(magit-sequence-pick ((,class (:foreground ,yellow-2))))
    `(magit-sequence-stop ((,class (:foreground ,green))))
    `(magit-sequence-part ((,class (:foreground ,yellow))))
    `(magit-sequence-head ((,class (:foreground ,blue))))
    `(magit-sequence-drop ((,class (:foreground ,red))))
    `(magit-sequence-done ((,class (:foreground ,fg-1))))
    `(magit-sequence-onto ((,class (:foreground ,fg-1))))
    `(magit-bisect-good ((,class (:foreground ,green))))
    `(magit-bisect-skip ((,class (:foreground ,yellow))))
    `(magit-bisect-bad ((,class (:foreground ,red))))
    `
    (magit-blame-heading
      (
        (,class
          (:background ,bg-1 :foreground ,blue-2))))
    `
    (magit-blame-hash
      (
        (,class
          (:background ,bg-1 :foreground ,blue-2))))
    `
    (magit-blame-name
      (
        (,class
          (:background ,bg-1 :foreground ,orange))))
    `
    (magit-blame-date
      (
        (,class
          (:background ,bg-1 :foreground ,orange))))
    `
    (magit-blame-summary
      (
        (,class
          (:background
            ,bg-1
            :foreground ,blue-2
            :weight bold))))
    `(magit-dimmed ((,class (:foreground ,bg+3))))
    `(magit-hash ((,class (:foreground ,bg+3))))
    `(magit-tag ((,class (:foreground ,orange :weight bold))))
    `
    (magit-branch-remote
      ((,class (:foreground ,green :weight bold))))
    `
    (magit-branch-local
      ((,class (:foreground ,blue :weight bold))))
    `
    (magit-branch-current
      ((,class (:foreground ,blue :weight bold :box t))))
    `(magit-head ((,class (:foreground ,blue :weight bold))))
    `
    (magit-refname
      (
        (,class
          (:background
            ,bg+2
            :foreground ,fg
            :weight bold))))
    `
    (magit-refname-stash
      (
        (,class
          (:background
            ,bg+2
            :foreground ,fg
            :weight bold))))
    `
    (magit-refname-wip
      (
        (,class
          (:background
            ,bg+2
            :foreground ,fg
            :weight bold))))
    `(magit-signature-good ((,class (:foreground ,green))))
    `(magit-signature-bad ((,class (:foreground ,red))))
    `
    (magit-signature-untrusted
      ((,class (:foreground ,yellow))))
    `
    (magit-signature-expired
      ((,class (:foreground ,orange))))
    `
    (magit-signature-revoked
      ((,class (:foreground ,magenta))))
    `(magit-signature-error ((,class (:inherit magit-signature-bad))))
    `(magit-cherry-unmatched ((,class (:foreground ,cyan))))
    `
    (magit-cherry-equivalent
      ((,class (:foreground ,magenta))))
    `(magit-reflog-commit ((,class (:foreground ,green))))
    `(magit-reflog-amend ((,class (:foreground ,magenta))))
    `(magit-reflog-merge ((,class (:foreground ,green))))
    `(magit-reflog-checkout ((,class (:foreground ,blue))))
    `(magit-reflog-reset ((,class (:foreground ,red))))
    `(magit-reflog-rebase ((,class (:foreground ,magenta))))
    `
    (magit-reflog-cherry-pick
      ((,class (:foreground ,green))))
    `(magit-reflog-remote ((,class (:foreground ,cyan))))
    `(magit-reflog-other ((,class (:foreground ,cyan))))

    ;;;;; markup-faces
    `(markup-anchor-face ((,class (:foreground ,blue+1))))
    `(markup-code-face ((,class (:inherit font-lock-constant-face))))
    `(markup-command-face ((,class (:foreground ,yellow))))
    `(markup-emphasis-face ((,class (:inherit bold))))
    `
    (markup-internal-reference-face
      ((,class (:foreground ,yellow-2 :underline t))))
    `(markup-list-face ((,class (:foreground ,fg+1))))
    `(markup-meta-face ((,class (:foreground ,yellow))))
    `(markup-meta-hide-face ((,class (:foreground ,yellow))))
    `
    (markup-secondary-text-face
      ((,class (:foreground ,yellow-1))))
    `
    (markup-title-0-face
      (
        (,class
          (:inherit font-lock-function-name-face :weight bold))))
    `
    (markup-title-1-face
      (
        (,class
          (:inherit font-lock-function-name-face :weight bold))))
    `
    (markup-title-2-face
      (
        (,class
          (:inherit font-lock-function-name-face :weight bold))))
    `
    (markup-title-3-face
      (
        (,class
          (:inherit font-lock-function-name-face :weight bold))))
    `
    (markup-title-4-face
      (
        (,class
          (:inherit font-lock-function-name-face :weight bold))))
    `
    (markup-typewriter-face
      ((,class (:inherit font-lock-constant-face))))
    `
    (markup-verbatim-face
      ((,class (:inherit font-lock-constant-face))))
    `(markup-value-face ((,class (:foreground ,yellow))))

    ;;;;; orderless
    `(orderless-match-face-0 ((,class (:foreground ,green))))
    `
    (orderless-match-face-1
      ((,class (:foreground ,magenta))))
    `(orderless-match-face-2 ((,class (:foreground ,blue))))
    `(orderless-match-face-3 ((,class (:foreground ,orange))))

    ;;;;; show-paren
    `
    (show-paren-mismatch
      (
        (,class
          (:foreground
            ,red+1
            :background ,bg+3
            :weight bold))))
    `
    (show-paren-match
      (
        (,class
          (:foreground
            ,fg
            :background ,bg+3
            :weight bold))))

    ;;;;; vertico
    `
    (vertico-current
      (
        (,class
          (:foreground ,yellow :weight bold :underline t))))))

;;;###autoload
(when load-file-name
  (add-to-list
    'custom-theme-load-path
    (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'zendalf)

;;; zendalf-theme.el
