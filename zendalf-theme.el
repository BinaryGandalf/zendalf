;;; zendalf-theme.el --- Basic Zenburn Fork

;;; Code:

(deftheme zendalf
  "Zendalf theme.")

;;; Color Palette
(defvar zendalf-default-colors-alist
  `
  (("zendalf-fg-1" . "#656555")
    ("zendalf-fg" . "#DCDCCC")
    ("zendalf-fg+1" . "#FFFFEF")
    ("zendalf-fg+2" . "#FFFFFD")
    ("zendalf-bg-2" . "#000000")
    ("zendalf-bg-1" . "#2B2B2B")
    ("zendalf-bg-05" . "#383838")
    ("zendalf-bg" . "#3F3F3F")
    ("zendalf-bg+05" . "#494949")
    ("zendalf-bg+1" . "#4F4F4F")
    ("zendalf-bg+2" . "#5F5F5F")
    ("zendalf-bg+3" . "#6F6F6F")
    ("zendalf-red-4" . "#8C5353")
    ("zendalf-red-3" . "#9C6363")
    ("zendalf-red-2" . "#AC7373")
    ("zendalf-red-1" . "#BC8383")
    ("zendalf-red" . "#CC9393")
    ("zendalf-red+1" . "#DCA3A3")
    ("zendalf-red+2" . "#ECB3B3")
    ("zendalf-orange" . "#DFAF8F")
    ("zendalf-yellow-2" . "#D0BF8F")
    ("zendalf-yellow-1" . "#E0CF9F")
    ("zendalf-yellow" . "#F0DFAF")
    ("zendalf-green-2" . "#5F7F5F")
    ("zendalf-green-1" . "#6F8F6F")
    ("zendalf-green" . "#7F9F7F")
    ("zendalf-green+1" . "#8FB28F")
    ("zendalf-green+2" . "#9FC59F")
    ("zendalf-green+3" . "#AFD8AF")
    ("zendalf-green+4" . "#BFEBBF")
    ("zendalf-cyan" . "#93E0E3")
    ("zendalf-blue+1" . "#94BFF3")
    ("zendalf-blue" . "#8CD0D3")
    ("zendalf-blue-1" . "#7CB8BB")
    ("zendalf-blue-2" . "#6CA0A3")
    ("zendalf-blue-3" . "#5C888B")
    ("zendalf-blue-4" . "#4C7073")
    ("zendalf-blue-5" . "#366060")
    ("zendalf-magenta" . "#DC8CC3")))

(defmacro zendalf-with-color-variables (&rest body)
  (declare (indent 0))
  `
  (let
    (
      (class `((type graphic)))
      ,@
      (mapcar
        (lambda (cons) (list (intern (car cons)) (cdr cons)))
        zendalf-default-colors-alist))
    ,@body))

;;; Theme Faces
(zendalf-with-color-variables
  (custom-theme-set-faces 'zendalf
    ;;;;; basic coloring
    `(button ((,class (:underline t))))
    `
    (link
      (
        (,class
          (:foreground ,zendalf-yellow :underline t :weight bold))))
    `
    (link-visited
      (
        (,class
          (:foreground
            ,zendalf-yellow-2
            :underline t
            :weight normal))))
    `
    (default
      ((,class (:foreground ,zendalf-fg :background ,zendalf-bg))))
    `
    (cursor
      ((,class (:foreground ,zendalf-fg :background ,zendalf-fg+1))))
    `
    (widget-field
      ((,class (:foreground ,zendalf-fg :background ,zendalf-bg+3))))
    `
    (escape-glyph
      ((,class (:foreground ,zendalf-yellow :weight bold))))
    `
    (fringe
      ((,class (:foreground ,zendalf-fg :background ,zendalf-bg+1))))
    `
    (header-line
      (
        (,class
          (:foreground
            ,zendalf-yellow
            :background ,zendalf-bg-1
            :box (:line-width -1 :style released-button)
            :extend t))))
    `(highlight ((,class (:background ,zendalf-bg-05))))
    `(success ((,class (:foreground ,zendalf-green :weight bold))))
    `(warning ((,class (:foreground ,zendalf-orange :weight bold))))
    `
    (tooltip
      ((,class (:foreground ,zendalf-fg :background ,zendalf-bg+1))))
    ;;;;; compilation
    `
    (compilation-column-face
      ((,class (:foreground ,zendalf-yellow))))
    `
    (compilation-enter-directory-face
      ((,class (:foreground ,zendalf-green))))
    `
    (compilation-error-face
      (
        (,class
          (:foreground ,zendalf-red-1 :weight bold :underline t))))
    `(compilation-face ((,class (:foreground ,zendalf-fg))))
    `(compilation-info-face ((,class (:foreground ,zendalf-blue))))
    `
    (compilation-info
      ((,class (:foreground ,zendalf-green+4 :underline t))))
    `
    (compilation-leave-directory-face
      ((,class (:foreground ,zendalf-green))))
    `(compilation-line-face ((,class (:foreground ,zendalf-yellow))))
    `
    (compilation-line-number
      ((,class (:foreground ,zendalf-yellow))))
    `(compilation-message-face ((,class (:foreground ,zendalf-blue))))
    `
    (compilation-warning-face
      (
        (,class
          (:foreground ,zendalf-orange :weight bold :underline t))))
    `
    (compilation-mode-line-exit
      ((,class (:foreground ,zendalf-green+2 :weight bold))))
    `
    (compilation-mode-line-fail
      ((,class (:foreground ,zendalf-red :weight bold))))
    `
    (compilation-mode-line-run
      ((,class (:foreground ,zendalf-yellow :weight bold))))
    ;;;;; completions
    `(completions-annotations ((,class (:foreground ,zendalf-fg-1))))
    `(completions-common-part ((,class (:foreground ,zendalf-blue))))
    `
    (completions-first-difference
      ((,class (:foreground ,zendalf-fg+1))))
    ;;;;; customize
    `
    (custom-variable-tag
      ((,class (:foreground ,zendalf-blue :weight bold))))
    `
    (custom-group-tag
      (
        (,class
          (:foreground ,zendalf-blue :weight bold :height 1.2))))
    `(custom-state ((,class (:foreground ,zendalf-green+4))))
    ;;;;; display-fill-column-indicator
    `
    (fill-column-indicator
      ((,class :foreground ,zendalf-bg-05 :weight semilight)))
    ;;;;; eww
    `(eww-invalid-certificate ((,class (:inherit error))))
    `(eww-valid-certificate ((,class (:inherit success))))
    ;;;;; grep
    `(grep-context-face ((,class (:foreground ,zendalf-fg))))
    `
    (grep-error-face
      (
        (,class
          (:foreground ,zendalf-red-1 :weight bold :underline t))))
    `(grep-hit-face ((,class (:foreground ,zendalf-blue))))
    `
    (grep-match-face
      ((,class (:foreground ,zendalf-orange :weight bold))))
    `
    (match
      (
        (,class
          (:background
            ,zendalf-bg-1
            :foreground ,zendalf-orange
            :weight bold))))
    ;;;;; hi-lock
    `
    (hi-blue
      (
        (,class
          (:background ,zendalf-cyan :foreground ,zendalf-bg-1))))
    `
    (hi-green
      (
        (,class
          (:background ,zendalf-green+4 :foreground ,zendalf-bg-1))))
    `
    (hi-pink
      (
        (,class
          (:background ,zendalf-magenta :foreground ,zendalf-bg-1))))
    `
    (hi-yellow
      (
        (,class
          (:background ,zendalf-yellow :foreground ,zendalf-bg-1))))
    `(hi-blue-b ((,class (:foreground ,zendalf-blue :weight bold))))
    `
    (hi-green-b
      ((,class (:foreground ,zendalf-green+2 :weight bold))))
    `(hi-red-b ((,class (:foreground ,zendalf-red :weight bold))))
    ;;;;; info
    `(Info-quoted ((,class (:inherit font-lock-constant-face))))
    ;;;;; isearch
    `
    (isearch
      (
        (,class
          (:foreground
            ,zendalf-yellow-2
            :weight bold
            :background ,zendalf-bg+2))))
    `
    (isearch-fail
      (
        (,class
          (:foreground ,zendalf-fg :background ,zendalf-red-4))))
    `
    (lazy-highlight
      (
        (,class
          (:foreground
            ,zendalf-yellow-2
            :weight bold
            :background ,zendalf-bg-05))))

    `
    (menu
      ((,class (:foreground ,zendalf-fg :background ,zendalf-bg))))
    `(minibuffer-prompt ((,class (:foreground ,zendalf-yellow))))
    `
    (mode-line
      (
        (,class
          (:foreground
            ,zendalf-green+1
            :background ,zendalf-bg-1
            :box (:line-width -1 :style released-button)))
        (t :inverse-video t)))
    `
    (mode-line-buffer-id
      ((,class (:foreground ,zendalf-yellow :weight bold))))
    `
    (mode-line-inactive
      (
        (,class
          (:foreground
            ,zendalf-green-2
            :background ,zendalf-bg-05
            :box (:line-width -1 :style released-button)))))
    `
    (region
      ((,class (:background ,zendalf-bg-1 :extend t))
        (t :inverse-video t)))
    `(secondary-selection ((,class (:background ,zendalf-bg+2))))
    `(trailing-whitespace ((,class (:background ,zendalf-red))))
    `(vertical-border ((,class (:foreground ,zendalf-fg))))
    ;;;;; font lock
    `
    (font-lock-builtin-face
      ((,class (:foreground ,zendalf-fg :weight bold))))
    `(font-lock-comment-face ((,class (:foreground ,zendalf-green))))
    `
    (font-lock-comment-delimiter-face
      ((,class (:foreground ,zendalf-green-2))))
    `(font-lock-constant-face ((,class nil)))
    `(font-lock-doc-face ((,class (:foreground ,zendalf-green+2))))
    `
    (font-lock-function-name-face
      ((,class (:foreground ,zendalf-fg))))
    `
    (font-lock-keyword-face
      ((,class (:foreground ,zendalf-yellow :weight bold))))
    `
    (font-lock-preprocessor-face
      ((,class (:foreground ,zendalf-blue+1))))
    `
    (font-lock-regexp-grouping-construct
      ((,class (:foreground ,zendalf-yellow :weight bold))))
    `
    (font-lock-regexp-grouping-backslash
      ((,class (:foreground ,zendalf-green :weight bold))))
    `(font-lock-string-face ((,class (:foreground ,zendalf-red))))
    `(font-lock-type-face ((,class (:foreground ,zendalf-blue-1))))
    `
    (font-lock-variable-name-face
      ((,class (:foreground ,zendalf-fg))))
    `
    (font-lock-warning-face
      ((,class (:foreground ,zendalf-yellow-2 :weight bold))))

    `(c-annotation-face ((,class (:inherit font-lock-constant-face))))
    ;;;;; line numbers (Emacs 26.1 and above)
    `
    (line-number
      (
        (,class
          (:inherit
            default
            :foreground ,zendalf-bg+3
            :background ,zendalf-bg-05))))
    `
    (line-number-current-line
      (
        (,class
          (:inherit line-number :foreground ,zendalf-yellow-2))))
    ;;;;; man
    `(Man-overstrike ((,class (:inherit font-lock-keyword-face))))
    `
    (Man-underline
      ((,class (:inherit (font-lock-string-face underline)))))
    ;;;;; woman
    `(woman-bold ((,class (:inherit font-lock-keyword-face))))
    `
    (woman-italic
      ((,class (:inherit (font-lock-string-face italic)))))

    ;;;; Third-party packages

    ;;;;; wgrep
    `(wgrep-face ((,class nil)))
    `(wgrep-done-face ((,class nil)))
    `(wgrep-file-face ((,class nil)))
    `(wgrep-delete-face ((,class nil)))
    `(wgrep-reject-face ((,class nil)))
    ;;;;; debbugs
    `(debbugs-gnu-done ((,class (:foreground ,zendalf-fg-1))))
    `(debbugs-gnu-handled ((,class (:foreground ,zendalf-green))))
    `(debbugs-gnu-new ((,class (:foreground ,zendalf-red))))
    `(debbugs-gnu-pending ((,class (:foreground ,zendalf-blue))))
    `(debbugs-gnu-stale ((,class (:foreground ,zendalf-orange))))
    `(debbugs-gnu-tagged ((,class (:foreground ,zendalf-red))))
    ;;;;; diff
    ;; Please read (info "(magit)Theming Faces") before changing this.
    `
    (diff-added
      ((,class (:background "#335533" :foreground ,zendalf-green))))
    `
    (diff-changed
      (
        (,class
          (:background "#555511" :foreground ,zendalf-yellow-1))))
    `
    (diff-removed
      ((,class (:background "#553333" :foreground ,zendalf-red-2))))
    `
    (diff-refine-added
      (
        (,class
          (:background "#338833" :foreground ,zendalf-green+4))))
    `
    (diff-refine-changed
      ((,class (:background "#888811" :foreground ,zendalf-yellow))))
    `
    (diff-refine-removed
      ((,class (:background "#883333" :foreground ,zendalf-red))))
    `
    (diff-header
      ((,class (:background ,zendalf-bg+2))
        (t (:background ,zendalf-fg :foreground ,zendalf-bg))))
    `
    (diff-file-header
      (
        (,class
          (:background
            ,zendalf-bg+2
            :foreground ,zendalf-fg
            :weight bold))
        (t
          (:background
            ,zendalf-fg
            :foreground ,zendalf-bg
            :weight bold))))
    ;;;;; diff-hl
    `
    (diff-hl-change
      (
        (,class
          (:foreground ,zendalf-blue :background ,zendalf-blue-2))))
    `
    (diff-hl-delete
      (
        (,class
          (:foreground ,zendalf-red+1 :background ,zendalf-red-1))))
    `
    (diff-hl-insert
      (
        (,class
          (:foreground
            ,zendalf-green+1
            :background ,zendalf-green-2))))
    ;;;;; dim-autoload
    `(dim-autoload-cookie-line ((,class :foreground ,zendalf-bg+1)))
    ;;;;; dired
    `(dired-directory ((,class (:inherit font-lock-type-face))))
    ;;;;; dired+
    `(diredp-display-msg ((,class (:foreground ,zendalf-blue))))
    `
    (diredp-compressed-file-suffix
      ((,class (:foreground ,zendalf-orange))))
    `(diredp-date-time ((,class (:foreground ,zendalf-magenta))))
    `(diredp-deletion ((,class (:foreground ,zendalf-yellow))))
    `(diredp-deletion-file-name ((,class (:foreground ,zendalf-red))))
    `
    (diredp-dir-heading
      (
        (,class
          (:foreground ,zendalf-blue :background ,zendalf-bg-1))))
    `(diredp-dir-priv ((,class (:foreground ,zendalf-cyan))))
    `(diredp-exec-priv ((,class (:foreground ,zendalf-red))))
    `(diredp-executable-tag ((,class (:foreground ,zendalf-green+1))))
    `(diredp-file-name ((,class (:foreground ,zendalf-blue))))
    `(diredp-file-suffix ((,class (:foreground ,zendalf-green))))
    `(diredp-flag-mark ((,class (:foreground ,zendalf-yellow))))
    `(diredp-flag-mark-line ((,class (:foreground ,zendalf-orange))))
    `(diredp-ignored-file-name ((,class (:foreground ,zendalf-red))))
    `(diredp-link-priv ((,class (:foreground ,zendalf-yellow))))
    `
    (diredp-mode-line-flagged
      ((,class (:foreground ,zendalf-yellow))))
    `
    (diredp-mode-line-marked
      ((,class (:foreground ,zendalf-orange))))
    `(diredp-no-priv ((,class (:foreground ,zendalf-fg))))
    `(diredp-number ((,class (:foreground ,zendalf-green+1))))
    `(diredp-other-priv ((,class (:foreground ,zendalf-yellow-1))))
    `(diredp-rare-priv ((,class (:foreground ,zendalf-red-1))))
    `(diredp-read-priv ((,class (:foreground ,zendalf-green-2))))
    `(diredp-symlink ((,class (:foreground ,zendalf-yellow))))
    `(diredp-write-priv ((,class (:foreground ,zendalf-magenta))))
    ;;;;; dired-async
    `
    (dired-async-failures
      ((,class (:foreground ,zendalf-red :weight bold))))
    `
    (dired-async-message
      ((,class (:foreground ,zendalf-yellow :weight bold))))
    `
    (dired-async-mode-message
      ((,class (:foreground ,zendalf-yellow))))
    ;;;;; diredfl
    `
    (diredfl-compressed-file-suffix
      ((,class (:foreground ,zendalf-orange))))
    `(diredfl-date-time ((,class (:foreground ,zendalf-magenta))))
    `(diredfl-deletion ((,class (:foreground ,zendalf-yellow))))
    `
    (diredfl-deletion-file-name
      ((,class (:foreground ,zendalf-red))))
    `
    (diredfl-dir-heading
      (
        (,class
          (:foreground ,zendalf-blue :background ,zendalf-bg-1))))
    `(diredfl-dir-priv ((,class (:foreground ,zendalf-cyan))))
    `(diredfl-exec-priv ((,class (:foreground ,zendalf-red))))
    `
    (diredfl-executable-tag
      ((,class (:foreground ,zendalf-green+1))))
    `(diredfl-file-name ((,class (:foreground ,zendalf-blue))))
    `(diredfl-file-suffix ((,class (:foreground ,zendalf-green))))
    `(diredfl-flag-mark ((,class (:foreground ,zendalf-yellow))))
    `(diredfl-flag-mark-line ((,class (:foreground ,zendalf-orange))))
    `(diredfl-ignored-file-name ((,class (:foreground ,zendalf-red))))
    `(diredfl-link-priv ((,class (:foreground ,zendalf-yellow))))
    `(diredfl-no-priv ((,class (:foreground ,zendalf-fg))))
    `(diredfl-number ((,class (:foreground ,zendalf-green+1))))
    `(diredfl-other-priv ((,class (:foreground ,zendalf-yellow-1))))
    `(diredfl-rare-priv ((,class (:foreground ,zendalf-red-1))))
    `(diredfl-read-priv ((,class (:foreground ,zendalf-green-1))))
    `(diredfl-symlink ((,class (:foreground ,zendalf-yellow))))
    `(diredfl-write-priv ((,class (:foreground ,zendalf-magenta))))
    ;;;;; ediff
    `
    (ediff-current-diff-A
      (
        (,class
          (:foreground ,zendalf-fg :background ,zendalf-red-4))))
    `
    (ediff-current-diff-Ancestor
      (
        (,class
          (:foreground ,zendalf-fg :background ,zendalf-red-4))))
    `
    (ediff-current-diff-B
      (
        (,class
          (:foreground ,zendalf-fg :background ,zendalf-green-2))))
    `
    (ediff-current-diff-C
      (
        (,class
          (:foreground ,zendalf-fg :background ,zendalf-blue-5))))
    `(ediff-even-diff-A ((,class (:background ,zendalf-bg+1))))
    `(ediff-even-diff-Ancestor ((,class (:background ,zendalf-bg+1))))
    `(ediff-even-diff-B ((,class (:background ,zendalf-bg+1))))
    `(ediff-even-diff-C ((,class (:background ,zendalf-bg+1))))
    `
    (ediff-fine-diff-A
      (
        (,class
          (:foreground
            ,zendalf-fg
            :background ,zendalf-red-2
            :weight bold))))
    `
    (ediff-fine-diff-Ancestor
      (
        (,class
          (:foreground
            ,zendalf-fg
            :background
            ,zendalf-red-2
            weight
            bold))))
    `
    (ediff-fine-diff-B
      (
        (,class
          (:foreground
            ,zendalf-fg
            :background ,zendalf-green
            :weight bold))))
    `
    (ediff-fine-diff-C
      (
        (,class
          (:foreground
            ,zendalf-fg
            :background ,zendalf-blue-3
            :weight bold))))
    `(ediff-odd-diff-A ((,class (:background ,zendalf-bg+2))))
    `(ediff-odd-diff-Ancestor ((,class (:background ,zendalf-bg+2))))
    `(ediff-odd-diff-B ((,class (:background ,zendalf-bg+2))))
    `(ediff-odd-diff-C ((,class (:background ,zendalf-bg+2))))
    ;;;;; eshell
    `
    (eshell-prompt
      ((,class (:foreground ,zendalf-yellow :weight bold))))
    `
    (eshell-ls-archive
      ((,class (:foreground ,zendalf-red-1 :weight bold))))
    `(eshell-ls-backup ((,class (:inherit font-lock-comment-face))))
    `(eshell-ls-clutter ((,class (:inherit font-lock-comment-face))))
    `
    (eshell-ls-directory
      ((,class (:foreground ,zendalf-blue+1 :weight bold))))
    `
    (eshell-ls-executable
      ((,class (:foreground ,zendalf-red+1 :weight bold))))
    `(eshell-ls-unreadable ((,class (:foreground ,zendalf-fg))))
    `(eshell-ls-missing ((,class (:inherit font-lock-warning-face))))
    `(eshell-ls-product ((,class (:inherit font-lock-doc-face))))
    `
    (eshell-ls-special
      ((,class (:foreground ,zendalf-yellow :weight bold))))
    `
    (eshell-ls-symlink
      ((,class (:foreground ,zendalf-cyan :weight bold))))
    ;;;;; flycheck
    `
    (flycheck-error
      (
        (((supports :underline (:style wave)))
          (:underline
            (:style wave :color ,zendalf-red-1)
            :inherit unspecified))
        (t (:foreground ,zendalf-red-1 :weight bold :underline t))))
    `
    (flycheck-warning
      (
        (((supports :underline (:style wave)))
          (:underline
            (:style wave :color ,zendalf-yellow)
            :inherit unspecified))
        (t (:foreground ,zendalf-yellow :weight bold :underline t))))
    `
    (flycheck-info
      (
        (((supports :underline (:style wave)))
          (:underline
            (:style wave :color ,zendalf-cyan)
            :inherit unspecified))
        (t (:foreground ,zendalf-cyan :weight bold :underline t))))
    `
    (flycheck-fringe-error
      ((,class (:foreground ,zendalf-red-1 :weight bold))))
    `
    (flycheck-fringe-warning
      ((,class (:foreground ,zendalf-yellow :weight bold))))
    `
    (flycheck-fringe-info
      ((,class (:foreground ,zendalf-cyan :weight bold))))
    ;;;;; flymake
    `
    (flymake-errline
      (
        (((supports :underline (:style wave)))
          (:underline
            (:style wave :color ,zendalf-red)
            :inherit unspecified
            :foreground unspecified
            :background unspecified))
        (t (:foreground ,zendalf-red-1 :weight bold :underline t))))
    `
    (flymake-warnline
      (
        (((supports :underline (:style wave)))
          (:underline
            (:style wave :color ,zendalf-orange)
            :inherit unspecified
            :foreground unspecified
            :background unspecified))
        (t (:foreground ,zendalf-orange :weight bold :underline t))))
    `
    (flymake-infoline
      (
        (((supports :underline (:style wave)))
          (:underline
            (:style wave :color ,zendalf-green)
            :inherit unspecified
            :foreground unspecified
            :background unspecified))
        (t (:foreground ,zendalf-green-2 :weight bold :underline t))))
    `
    (flymake-error
      (
        (((supports :underline (:style wave)))
          (:underline
            (:style wave :color ,zendalf-red)
            :inherit unspecified
            :foreground unspecified
            :background unspecified))
        (t (:foreground ,zendalf-red-1 :weight bold :underline t))))
    `
    (flymake-warning
      (
        (((supports :underline (:style wave)))
          (:underline
            (:style wave :color ,zendalf-orange)
            :inherit unspecified
            :foreground unspecified
            :background unspecified))
        (t (:foreground ,zendalf-orange :weight bold :underline t))))
    `
    (flymake-note
      (
        (((supports :underline (:style wave)))
          (:underline
            (:style wave :color ,zendalf-green)
            :inherit unspecified
            :foreground unspecified
            :background unspecified))
        (t (:foreground ,zendalf-green-2 :weight bold :underline t))))
    ;;;;; flyspell
    `
    (flyspell-duplicate
      (
        (((supports :underline (:style wave)))
          (:underline
            (:style wave :color ,zendalf-orange)
            :inherit unspecified))
        (t (:foreground ,zendalf-orange :weight bold :underline t))))
    `
    (flyspell-incorrect
      (
        (((supports :underline (:style wave)))
          (:underline
            (:style wave :color ,zendalf-red)
            :inherit unspecified))
        (t (:foreground ,zendalf-red-1 :weight bold :underline t))))
    ;;;;; git-annex
    `
    (git-annex-dired-annexed-available
      ((,class (:inherit success :weight normal))))
    `
    (git-annex-dired-annexed-unavailable
      ((,class (:inherit error :weight normal))))
    ;;;;; git-commit
    `
    (git-commit-comment-action
      ((,class (:foreground ,zendalf-green+1 :weight bold))))
    `
    (git-commit-comment-branch
      ((,class (:foreground ,zendalf-blue+1 :weight bold)))) ; obsolete
    `
    (git-commit-comment-branch-local
      ((,class (:foreground ,zendalf-blue+1 :weight bold))))
    `
    (git-commit-comment-branch-remote
      ((,class (:foreground ,zendalf-green :weight bold))))
    `
    (git-commit-comment-heading
      ((,class (:foreground ,zendalf-yellow :weight bold))))
    ;;;;; git-gutter
    `
    (git-gutter:added
      (
        (,class
          (:foreground
            ,zendalf-green
            :weight bold
            :inverse-video t))))
    `
    (git-gutter:deleted
      (
        (,class
          (:foreground ,zendalf-red :weight bold :inverse-video t))))
    `
    (git-gutter:modified
      (
        (,class
          (:foreground
            ,zendalf-magenta
            :weight bold
            :inverse-video t))))
    `
    (git-gutter:unchanged
      (
        (,class
          (:foreground ,zendalf-fg :weight bold :inverse-video t))))
    ;;;;; git-gutter-fr
    `
    (git-gutter-fr:added
      ((,class (:foreground ,zendalf-green :weight bold))))
    `
    (git-gutter-fr:deleted
      ((,class (:foreground ,zendalf-red :weight bold))))
    `
    (git-gutter-fr:modified
      ((,class (:foreground ,zendalf-magenta :weight bold))))
    ;;;;; git-rebase
    `(git-rebase-hash ((,class (:foreground, zendalf-orange))))
    ;;;;; highlight-numbers
    `(highlight-numbers-number ((,class (:foreground ,zendalf-blue))))
    ;;;;; highlight-symbol
    `(highlight-symbol-face ((,class (:background ,zendalf-bg+2))))
    ;;;;; highlight-thing
    `(highlight-thing ((,class (:background ,zendalf-bg+2))))
    ;;;;; hl-line-mode
    `
    (hl-line-face
      ((,class (:background ,zendalf-bg-05)) (t :weight bold)))
    `
    (hl-line
      ((,class (:background ,zendalf-bg-05 :extend t)) ; old emacsen
        (t :weight bold)))
    ;;;;; hl-sexp
    `
    (hl-sexp-face
      ((,class (:background ,zendalf-bg+1)) (t :weight bold)))
    ;;;;; corfu
    `
    (corfu-default
      ((,class (:foreground ,zendalf-fg :background ,zendalf-bg+1))))
    `
    (corfu-current
      ((,class (:foreground ,zendalf-fg :background ,zendalf-bg-1))))
    `
    (corfu-bar
      ((,class (:background unspecified :foreground unspecified))))
    `
    (corfu-border
      ((,class (:background unspecified :foreground unspecified))))
    ;;;;; icomplete
    `
    (icomplete-selected-match
      (
        (,class
          (:foreground ,zendalf-yellow :weight bold :underline t))))
    ;;;;; ido-mode
    `
    (ido-first-match
      ((,class (:foreground ,zendalf-yellow :weight bold))))
    `
    (ido-only-match
      ((,class (:foreground ,zendalf-orange :weight bold))))
    `(ido-subdir ((,class (:foreground ,zendalf-yellow))))
    `
    (ido-indicator
      (
        (,class
          (:foreground ,zendalf-yellow :background ,zendalf-red-4))))
    ;;;;; iedit-mode
    `
    (iedit-occurrence
      ((,class (:background ,zendalf-bg+2 :weight bold))))
    ;;;; js2-mode
    `(js2-warning ((,class (:underline ,zendalf-orange))))
    `(js2-error ((,class (:foreground ,zendalf-red :weight bold))))
    `(js2-jsdoc-tag ((,class (:foreground ,zendalf-green-2))))
    `(js2-jsdoc-type ((,class (:foreground ,zendalf-green+2))))
    `(js2-jsdoc-value ((,class (:foreground ,zendalf-green+3))))
    `(js2-function-param ((,class (:foreground, zendalf-orange))))
    `(js2-external-variable ((,class (:foreground ,zendalf-orange))))
    ;;;;; additional js2 mode attributes for better syntax highlighting
    `(js2-instance-member ((,class (:foreground ,zendalf-green-2))))
    `
    (js2-jsdoc-html-tag-delimiter
      ((,class (:foreground ,zendalf-orange))))
    `(js2-jsdoc-html-tag-name ((,class (:foreground ,zendalf-red-1))))
    `(js2-object-property ((,class (:foreground ,zendalf-blue+1))))
    `(js2-magic-paren ((,class (:foreground ,zendalf-blue-5))))
    `
    (js2-private-function-call
      ((,class (:foreground ,zendalf-cyan))))
    `(js2-function-call ((,class (:foreground ,zendalf-cyan))))
    `(js2-private-member ((,class (:foreground ,zendalf-blue-1))))
    `(js2-keywords ((,class (:foreground ,zendalf-magenta))))
    ;;;;; linum-mode
    `
    (linum
      (
        (,class
          (:foreground ,zendalf-green+2 :background ,zendalf-bg))))
    ;;;;; lispy
    `
    (lispy-command-name-face
      (
        (,class
          (:background
            ,zendalf-bg-05
            :inherit font-lock-function-name-face))))
    `
    (lispy-cursor-face
      ((,class (:foreground ,zendalf-bg :background ,zendalf-fg))))
    `
    (lispy-face-hint
      ((,class (:inherit highlight :foreground ,zendalf-yellow))))
    ;;;;; ruler-mode
    `
    (ruler-mode-column-number
      (
        (,class
          (:inherit 'ruler-mode-default :foreground ,zendalf-fg))))
    `
    (ruler-mode-fill-column
      (
        (,class
          (:inherit
            'ruler-mode-default
            :foreground ,zendalf-yellow))))
    `
    (ruler-mode-goal-column
      ((,class (:inherit 'ruler-mode-fill-column))))
    `
    (ruler-mode-comment-column
      ((,class (:inherit 'ruler-mode-fill-column))))
    `
    (ruler-mode-tab-stop
      ((,class (:inherit 'ruler-mode-fill-column))))
    `
    (ruler-mode-current-column
      ((,class (:foreground ,zendalf-yellow :box t))))
    `
    (ruler-mode-default
      (
        (,class
          (:foreground ,zendalf-green+2 :background ,zendalf-bg))))
    ;;;;; magit
    ;;;;;; headings and diffs
    ;; Please read (info "(magit)Theming Faces") before changing this.
    `(magit-section-highlight ((,class (:background ,zendalf-bg+05))))
    `
    (magit-section-heading
      ((,class (:foreground ,zendalf-yellow :weight bold))))
    `
    (magit-section-heading-selection
      ((,class (:foreground ,zendalf-orange :weight bold))))
    `(magit-diff-file-heading ((,class (:weight bold))))
    `
    (magit-diff-file-heading-highlight
      ((,class (:background ,zendalf-bg+05 :weight bold))))
    `
    (magit-diff-file-heading-selection
      (
        (,class
          (:background
            ,zendalf-bg+05
            :weight bold
            :foreground ,zendalf-orange))))
    `(magit-diff-added ((,class (:background ,zendalf-green-2))))
    `
    (magit-diff-added-highlight
      ((,class (:background ,zendalf-green))))
    `(magit-diff-removed ((,class (:background ,zendalf-red-4))))
    `
    (magit-diff-removed-highlight
      ((,class (:background ,zendalf-red-3))))
    `(magit-diff-hunk-heading ((,class (:background ,zendalf-bg+1))))
    `
    (magit-diff-hunk-heading-highlight
      ((,class (:background ,zendalf-bg+2))))
    `
    (magit-diff-hunk-heading-selection
      (
        (,class
          (:background ,zendalf-bg+2 :foreground ,zendalf-orange))))
    `
    (magit-diff-lines-heading
      (
        (,class
          (:background ,zendalf-orange :foreground ,zendalf-bg+2))))
    `
    (magit-diff-context-highlight
      ((,class (:background ,zendalf-bg+05 :foreground "grey70"))))
    `(magit-diffstat-added ((,class (:foreground ,zendalf-green+4))))
    `(magit-diffstat-removed ((,class (:foreground ,zendalf-red))))
    ;;;;;; popup
    `
    (magit-popup-heading
      ((,class (:foreground ,zendalf-yellow :weight bold))))
    `
    (magit-popup-key
      ((,class (:foreground ,zendalf-green-2 :weight bold))))
    `
    (magit-popup-argument
      ((,class (:foreground ,zendalf-green :weight bold))))
    `
    (magit-popup-disabled-argument
      ((,class (:foreground ,zendalf-fg-1 :weight normal))))
    `
    (magit-popup-option-value
      ((,class (:foreground ,zendalf-blue-2 :weight bold))))
    ;;;;;; process
    `
    (magit-process-ok
      ((,class (:foreground ,zendalf-green :weight bold))))
    `
    (magit-process-ng
      ((,class (:foreground ,zendalf-red :weight bold))))
    ;;;;;; log
    `(magit-log-author ((,class (:foreground ,zendalf-orange))))
    `(magit-log-date ((,class (:foreground ,zendalf-fg-1))))
    `(magit-log-graph ((,class (:foreground ,zendalf-fg+1))))
    ;;;;;; sequence
    `(magit-sequence-pick ((,class (:foreground ,zendalf-yellow-2))))
    `(magit-sequence-stop ((,class (:foreground ,zendalf-green))))
    `(magit-sequence-part ((,class (:foreground ,zendalf-yellow))))
    `(magit-sequence-head ((,class (:foreground ,zendalf-blue))))
    `(magit-sequence-drop ((,class (:foreground ,zendalf-red))))
    `(magit-sequence-done ((,class (:foreground ,zendalf-fg-1))))
    `(magit-sequence-onto ((,class (:foreground ,zendalf-fg-1))))
    ;;;;;; bisect
    `(magit-bisect-good ((,class (:foreground ,zendalf-green))))
    `(magit-bisect-skip ((,class (:foreground ,zendalf-yellow))))
    `(magit-bisect-bad ((,class (:foreground ,zendalf-red))))
    ;;;;;; blame
    `
    (magit-blame-heading
      (
        (,class
          (:background ,zendalf-bg-1 :foreground ,zendalf-blue-2))))
    `
    (magit-blame-hash
      (
        (,class
          (:background ,zendalf-bg-1 :foreground ,zendalf-blue-2))))
    `
    (magit-blame-name
      (
        (,class
          (:background ,zendalf-bg-1 :foreground ,zendalf-orange))))
    `
    (magit-blame-date
      (
        (,class
          (:background ,zendalf-bg-1 :foreground ,zendalf-orange))))
    `
    (magit-blame-summary
      (
        (,class
          (:background
            ,zendalf-bg-1
            :foreground ,zendalf-blue-2
            :weight bold))))
    ;;;;;; references etc
    `(magit-dimmed ((,class (:foreground ,zendalf-bg+3))))
    `(magit-hash ((,class (:foreground ,zendalf-bg+3))))
    `(magit-tag ((,class (:foreground ,zendalf-orange :weight bold))))
    `
    (magit-branch-remote
      ((,class (:foreground ,zendalf-green :weight bold))))
    `
    (magit-branch-local
      ((,class (:foreground ,zendalf-blue :weight bold))))
    `
    (magit-branch-current
      ((,class (:foreground ,zendalf-blue :weight bold :box t))))
    `(magit-head ((,class (:foreground ,zendalf-blue :weight bold))))
    `
    (magit-refname
      (
        (,class
          (:background
            ,zendalf-bg+2
            :foreground ,zendalf-fg
            :weight bold))))
    `
    (magit-refname-stash
      (
        (,class
          (:background
            ,zendalf-bg+2
            :foreground ,zendalf-fg
            :weight bold))))
    `
    (magit-refname-wip
      (
        (,class
          (:background
            ,zendalf-bg+2
            :foreground ,zendalf-fg
            :weight bold))))
    `(magit-signature-good ((,class (:foreground ,zendalf-green))))
    `(magit-signature-bad ((,class (:foreground ,zendalf-red))))
    `
    (magit-signature-untrusted
      ((,class (:foreground ,zendalf-yellow))))
    `
    (magit-signature-expired
      ((,class (:foreground ,zendalf-orange))))
    `
    (magit-signature-revoked
      ((,class (:foreground ,zendalf-magenta))))
    `(magit-signature-error ((,class (:inherit magit-signature-bad))))
    `(magit-cherry-unmatched ((,class (:foreground ,zendalf-cyan))))
    `
    (magit-cherry-equivalent
      ((,class (:foreground ,zendalf-magenta))))
    `(magit-reflog-commit ((,class (:foreground ,zendalf-green))))
    `(magit-reflog-amend ((,class (:foreground ,zendalf-magenta))))
    `(magit-reflog-merge ((,class (:foreground ,zendalf-green))))
    `(magit-reflog-checkout ((,class (:foreground ,zendalf-blue))))
    `(magit-reflog-reset ((,class (:foreground ,zendalf-red))))
    `(magit-reflog-rebase ((,class (:foreground ,zendalf-magenta))))
    `
    (magit-reflog-cherry-pick
      ((,class (:foreground ,zendalf-green))))
    `(magit-reflog-remote ((,class (:foreground ,zendalf-cyan))))
    `(magit-reflog-other ((,class (:foreground ,zendalf-cyan))))
    ;;;;; markup-faces
    `(markup-anchor-face ((,class (:foreground ,zendalf-blue+1))))
    `(markup-code-face ((,class (:inherit font-lock-constant-face))))
    `(markup-command-face ((,class (:foreground ,zendalf-yellow))))
    `(markup-emphasis-face ((,class (:inherit bold))))
    `
    (markup-internal-reference-face
      ((,class (:foreground ,zendalf-yellow-2 :underline t))))
    `(markup-list-face ((,class (:foreground ,zendalf-fg+1))))
    `(markup-meta-face ((,class (:foreground ,zendalf-yellow))))
    `(markup-meta-hide-face ((,class (:foreground ,zendalf-yellow))))
    `
    (markup-secondary-text-face
      ((,class (:foreground ,zendalf-yellow-1))))
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
    `(markup-value-face ((,class (:foreground ,zendalf-yellow))))
    ;;;;; message-mode
    `(message-cited-text ((,class (:inherit font-lock-comment-face))))
    `(message-header-name ((,class (:foreground ,zendalf-green+1))))
    `(message-header-other ((,class (:foreground ,zendalf-green))))
    `
    (message-header-to
      ((,class (:foreground ,zendalf-yellow :weight bold))))
    `
    (message-header-cc
      ((,class (:foreground ,zendalf-yellow :weight bold))))
    `
    (message-header-newsgroups
      ((,class (:foreground ,zendalf-yellow :weight bold))))
    `
    (message-header-subject
      ((,class (:foreground ,zendalf-orange :weight bold))))
    `(message-header-xheader ((,class (:foreground ,zendalf-green))))
    `
    (message-mml
      ((,class (:foreground ,zendalf-yellow :weight bold))))
    `(message-separator ((,class (:inherit font-lock-comment-face))))
    ;;;;; orderless
    `(orderless-match-face-0 ((,class (:foreground ,zendalf-green))))
    `
    (orderless-match-face-1
      ((,class (:foreground ,zendalf-magenta))))
    `(orderless-match-face-2 ((,class (:foreground ,zendalf-blue))))
    `(orderless-match-face-3 ((,class (:foreground ,zendalf-orange))))
    ;;;;; org-mode
    `
    (org-agenda-date-today
      (
        (,class
          (:foreground ,zendalf-fg+1 :slant italic :weight bold)))
      t)
    `
    (org-agenda-structure
      ((,class (:inherit font-lock-comment-face))))
    `(org-archived ((,class (:foreground ,zendalf-fg :weight bold))))
    `(org-block ((,class (:background ,zendalf-bg+05 :extend t))))
    `
    (org-checkbox
      (
        (,class
          (:background
            ,zendalf-bg+2
            :foreground ,zendalf-fg+1
            :box (:line-width 1 :style released-button)))))
    `(org-date ((,class (:foreground ,zendalf-blue :underline t))))
    `(org-deadline-announce ((,class (:foreground ,zendalf-red-1))))
    `
    (org-done
      (
        (,class
          (:weight bold :weight bold :foreground ,zendalf-green+3))))
    `(org-formula ((,class (:foreground ,zendalf-yellow-2))))
    `(org-headline-done ((,class (:foreground ,zendalf-green+3))))
    `(org-hide ((,class (:foreground ,zendalf-bg))))
    `
    (org-level-1
      ((,class (:inherit default :foreground ,zendalf-orange))))
    `
    (org-level-2
      ((,class (:inherit default :foreground ,zendalf-green+4))))
    `
    (org-level-3
      ((,class (:inherit default :foreground ,zendalf-blue-1))))
    `
    (org-level-4
      ((,class (:inherit default :foreground ,zendalf-yellow-2))))
    `
    (org-level-5
      ((,class (:inherit default :foreground ,zendalf-cyan))))
    `
    (org-level-6
      ((,class (:inherit default :foreground ,zendalf-green+2))))
    `
    (org-level-7
      ((,class (:inherit default :foreground ,zendalf-red+2))))
    `
    (org-level-8
      ((,class (:inherit default :foreground ,zendalf-magenta))))
    `
    (org-link
      ((,class (:foreground ,zendalf-yellow-2 :underline t))))
    `(org-quote ((,class (:background ,zendalf-bg+05 :extend t))))
    `(org-scheduled ((,class (:foreground ,zendalf-green+4))))
    `(org-scheduled-previously ((,class (:foreground ,zendalf-red))))
    `(org-scheduled-today ((,class (:foreground ,zendalf-blue+1))))
    `
    (org-sexp-date
      ((,class (:foreground ,zendalf-blue+1 :underline t))))
    `
    (org-special-keyword
      ((,class (:inherit font-lock-comment-face))))
    `(org-table ((,class (:foreground ,zendalf-green+2))))
    `(org-tag ((,class (:weight bold :weight bold))))
    `(org-time-grid ((,class (:foreground ,zendalf-orange))))
    `
    (org-todo
      (
        (,class
          (:weight bold :foreground ,zendalf-red :weight bold))))
    `
    (org-upcoming-deadline
      ((,class (:inherit font-lock-keyword-face))))
    `
    (org-warning
      (
        (,class
          (:weight
            bold
            :foreground ,zendalf-red
            :weight bold
            :underline nil))))
    `(org-column ((,class (:background ,zendalf-bg-1))))
    `
    (org-column-title
      (
        (,class
          (:background ,zendalf-bg-1 :underline t :weight bold))))
    `
    (org-mode-line-clock
      ((,class (:foreground ,zendalf-fg :background ,zendalf-bg-1))))
    `
    (org-mode-line-clock-overrun
      (
        (,class
          (:foreground ,zendalf-bg :background ,zendalf-red-1))))
    `
    (org-ellipsis
      ((,class (:foreground ,zendalf-yellow-1 :underline t))))
    `
    (org-footnote
      ((,class (:foreground ,zendalf-cyan :underline t))))
    `
    (org-document-title
      (
        (,class
          (:inherit default :foreground ,zendalf-blue :weight bold))))
    `(org-document-info ((,class (:foreground ,zendalf-blue))))
    `(org-habit-ready-face ((,class :background ,zendalf-green)))
    `
    (org-habit-alert-face
      (
        (,class
          :background ,zendalf-yellow-1
          :foreground ,zendalf-bg)))
    `(org-habit-clear-face ((,class :background ,zendalf-blue-3)))
    `(org-habit-overdue-face ((,class :background ,zendalf-red-3)))
    `
    (org-habit-clear-future-face
      ((,class :background ,zendalf-blue-4)))
    `
    (org-habit-ready-future-face
      ((,class :background ,zendalf-green-2)))
    `
    (org-habit-alert-future-face
      (
        (,class
          :background ,zendalf-yellow-2
          :foreground ,zendalf-bg)))
    `
    (org-habit-overdue-future-face
      ((,class :background ,zendalf-red-4)))
    ;;;;; org-ref
    `(org-ref-ref-face ((,class :underline t)))
    `(org-ref-label-face ((,class :underline t)))
    `(org-ref-cite-face ((,class :underline t)))
    `(org-ref-glossary-face ((,class :underline t)))
    `(org-ref-acronym-face ((,class :underline t)))
    ;;;;; outline
    `
    (outline-1
      ((,class (:inherit default :foreground ,zendalf-orange))))
    `
    (outline-2
      ((,class (:inherit default :foreground ,zendalf-green+4))))
    `
    (outline-3
      ((,class (:inherit default :foreground ,zendalf-blue-1))))
    `
    (outline-4
      ((,class (:inherit default :foreground ,zendalf-yellow-2))))
    `
    (outline-5
      ((,class (:inherit default :foreground ,zendalf-cyan))))
    `
    (outline-6
      ((,class (:inherit default :foreground ,zendalf-green+2))))
    `
    (outline-7
      ((,class (:inherit default :foreground ,zendalf-red-4))))
    `
    (outline-8
      ((,class (:inherit default :foreground ,zendalf-blue-4))))
    ;;;;; c/perl
    `
    (cperl-nonoverridable-face
      ((,class (:foreground ,zendalf-magenta))))
    `
    (cperl-array-face
      (
        (,class
          (:foreground ,zendalf-yellow, :background ,zendalf-bg))))
    `
    (cperl-hash-face
      (
        (,class
          (:foreground ,zendalf-yellow-1, :background ,zendalf-bg))))
    ;;;;; paren-face
    `(parenthesis ((,class (:foreground ,zendalf-fg-1))))
    ;;;;; perspective
    `(persp-selected-face ((,class (:foreground ,zendalf-yellow-2))))
    ;;;;; powerline
    `
    (powerline-active1
      ((,class (:background ,zendalf-bg-05 :inherit mode-line))))
    `
    (powerline-active2
      ((,class (:background ,zendalf-bg+2 :inherit mode-line))))
    `
    (powerline-inactive1
      (
        (,class
          (:background ,zendalf-bg+1 :inherit mode-line-inactive))))
    `
    (powerline-inactive2
      (
        (,class
          (:background ,zendalf-bg+3 :inherit mode-line-inactive))))
    ;;;;; re-builder
    `
    (reb-match-0
      (
        (,class
          (:foreground ,zendalf-bg :background ,zendalf-magenta))))
    `
    (reb-match-1
      ((,class (:foreground ,zendalf-bg :background ,zendalf-blue))))
    `
    (reb-match-2
      (
        (,class
          (:foreground ,zendalf-bg :background ,zendalf-orange))))
    `
    (reb-match-3
      ((,class (:foreground ,zendalf-bg :background ,zendalf-red))))
    ;;;;; rpm-mode
    `(rpm-spec-dir-face ((,class (:foreground ,zendalf-green))))
    `(rpm-spec-doc-face ((,class (:foreground ,zendalf-green))))
    `(rpm-spec-ghost-face ((,class (:foreground ,zendalf-red))))
    `(rpm-spec-macro-face ((,class (:foreground ,zendalf-yellow))))
    `
    (rpm-spec-obsolete-tag-face
      ((,class (:foreground ,zendalf-red))))
    `(rpm-spec-package-face ((,class (:foreground ,zendalf-red))))
    `(rpm-spec-section-face ((,class (:foreground ,zendalf-yellow))))
    `(rpm-spec-tag-face ((,class (:foreground ,zendalf-blue))))
    `(rpm-spec-var-face ((,class (:foreground ,zendalf-red))))
    ;;;;; rst-mode
    `(rst-level-1-face ((,class (:foreground ,zendalf-orange))))
    `(rst-level-2-face ((,class (:foreground ,zendalf-green+1))))
    `(rst-level-3-face ((,class (:foreground ,zendalf-blue-1))))
    `(rst-level-4-face ((,class (:foreground ,zendalf-yellow-2))))
    `(rst-level-5-face ((,class (:foreground ,zendalf-cyan))))
    `(rst-level-6-face ((,class (:foreground ,zendalf-green-2))))
    ;;;;; selectrum
    `
    (selectrum-current-candidate
      (
        (,class
          (:foreground ,zendalf-yellow :weight bold :underline t))))
    `
    (selectrum-primary-highlight
      ((,class (:background ,zendalf-green-2))))
    `
    (selectrum-secondary-highlight
      ((,class (:background ,zendalf-green))))
    ;;;;; sh-mode
    `
    (sh-heredoc
      ((,class (:foreground ,zendalf-yellow :weight bold))))
    `(sh-quoted-exec ((,class (:foreground ,zendalf-red))))
    ;;;;; show-paren
    `
    (show-paren-mismatch
      (
        (,class
          (:foreground
            ,zendalf-red+1
            :background ,zendalf-bg+3
            :weight bold))))
    `
    (show-paren-match
      (
        (,class
          (:foreground
            ,zendalf-fg
            :background ,zendalf-bg+3
            :weight bold))))
    ;;;;; smart-mode-line
    ;; use (setq sml/theme nil) to enable Zendalf for sml
    `(sml/global ((,class (:foreground ,zendalf-fg :weight bold))))
    `(sml/modes ((,class (:foreground ,zendalf-yellow :weight bold))))
    `
    (sml/minor-modes
      ((,class (:foreground ,zendalf-fg-1 :weight bold))))
    `
    (sml/filename
      ((,class (:foreground ,zendalf-yellow :weight bold))))
    `
    (sml/line-number
      ((,class (:foreground ,zendalf-blue :weight bold))))
    `
    (sml/col-number
      ((,class (:foreground ,zendalf-blue+1 :weight bold))))
    `
    (sml/position-percentage
      ((,class (:foreground ,zendalf-blue-1 :weight bold))))
    `(sml/prefix ((,class (:foreground ,zendalf-orange))))
    `(sml/git ((,class (:foreground ,zendalf-green+3))))
    `(sml/process ((,class (:weight bold))))
    `(sml/sudo ((,class (:foreground ,zendalf-orange :weight bold))))
    `(sml/read-only ((,class (:foreground ,zendalf-red-2))))
    `(sml/outside-modified ((,class (:foreground ,zendalf-orange))))
    `(sml/modified ((,class (:foreground ,zendalf-red))))
    `(sml/vc-edited ((,class (:foreground ,zendalf-green+2))))
    `(sml/charging ((,class (:foreground ,zendalf-green+4))))
    `(sml/discharging ((,class (:foreground ,zendalf-red+1))))
    ;;;;; smartparens
    `
    (sp-show-pair-mismatch-face
      (
        (,class
          (:foreground
            ,zendalf-red+1
            :background ,zendalf-bg+3
            :weight bold))))
    `
    (sp-show-pair-match-face
      ((,class (:background ,zendalf-bg+3 :weight bold))))
    ;;;;; sml-mode-line
    `
    (sml-modeline-end-face
      ((,class :inherit default :width condensed)))
    ;;;;; term
    `
    (term-color-black
      ((,class (:foreground ,zendalf-bg :background ,zendalf-bg-1))))
    `
    (term-color-red
      (
        (,class
          (:foreground ,zendalf-red-2 :background ,zendalf-red-4))))
    `
    (term-color-green
      (
        (,class
          (:foreground ,zendalf-green :background ,zendalf-green+2))))
    `
    (term-color-yellow
      (
        (,class
          (:foreground ,zendalf-orange :background ,zendalf-yellow))))
    `
    (term-color-blue
      (
        (,class
          (:foreground ,zendalf-blue-1 :background ,zendalf-blue-4))))
    `
    (term-color-magenta
      (
        (,class
          (:foreground ,zendalf-magenta :background ,zendalf-red))))
    `
    (term-color-cyan
      (
        (,class
          (:foreground ,zendalf-cyan :background ,zendalf-blue))))
    `
    (term-color-white
      ((,class (:foreground ,zendalf-fg :background ,zendalf-fg-1))))
    `(term-default-fg-color ((,class (:inherit term-color-white))))
    `(term-default-bg-color ((,class (:inherit term-color-black))))
    ;;;;; undo-tree
    `
    (undo-tree-visualizer-active-branch-face
      ((,class (:foreground ,zendalf-fg+1 :weight bold))))
    `
    (undo-tree-visualizer-current-face
      ((,class (:foreground ,zendalf-red-1 :weight bold))))
    `
    (undo-tree-visualizer-default-face
      ((,class (:foreground ,zendalf-fg))))
    `
    (undo-tree-visualizer-register-face
      ((,class (:foreground ,zendalf-yellow))))
    `
    (undo-tree-visualizer-unmodified-face
      ((,class (:foreground ,zendalf-cyan))))
    ;;;;; vertico
    `
    (vertico-current
      (
        (,class
          (:foreground ,zendalf-yellow :weight bold :underline t))))
    ;;;;; visual-regexp
    `
    (vr/group-0
      (
        (,class
          (:foreground
            ,zendalf-bg
            :background ,zendalf-green
            :weight bold))))
    `
    (vr/group-1
      (
        (,class
          (:foreground
            ,zendalf-bg
            :background ,zendalf-orange
            :weight bold))))
    `
    (vr/group-2
      (
        (,class
          (:foreground
            ,zendalf-bg
            :background ,zendalf-blue
            :weight bold))))
    `(vr/match-0 ((,class (:inherit isearch))))
    `
    (vr/match-1
      (
        (,class
          (:foreground
            ,zendalf-yellow-2
            :background ,zendalf-bg-1
            :weight bold))))
    `
    (vr/match-separator-face
      ((,class (:foreground ,zendalf-red :weight bold))))
    ;;;;; volatile-highlights
    `(vhl/default-face ((,class (:background ,zendalf-bg-05))))
    ;;;;; whitespace-mode
    `
    (whitespace-space
      (
        (,class
          (:background ,zendalf-bg+1 :foreground ,zendalf-bg+1))))
    `
    (whitespace-hspace
      (
        (,class
          (:background ,zendalf-bg+1 :foreground ,zendalf-bg+1))))
    `(whitespace-tab ((,class (:background ,zendalf-red-1))))
    `(whitespace-newline ((,class (:foreground ,zendalf-bg+1))))
    `(whitespace-trailing ((,class (:background ,zendalf-red))))
    `
    (whitespace-line
      (
        (,class
          (:background ,zendalf-bg :foreground ,zendalf-magenta))))
    `
    (whitespace-space-before-tab
      (
        (,class
          (:background ,zendalf-orange :foreground ,zendalf-orange))))
    `
    (whitespace-indentation
      (
        (,class
          (:background ,zendalf-yellow :foreground ,zendalf-red))))
    `(whitespace-empty ((,class (:background ,zendalf-yellow))))
    `
    (whitespace-space-after-tab
      (
        (,class
          (:background ,zendalf-yellow :foreground ,zendalf-red))))
    ;;;;; yascroll
    `(yascroll:thumb-text-area ((,class (:background ,zendalf-bg-1))))
    `
    (yascroll:thumb-fringe
      (
        (,class
          (:background ,zendalf-bg-1 :foreground ,zendalf-bg-1))))))

;;;###autoload
(when load-file-name
  (add-to-list
    'custom-theme-load-path
    (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'zendalf)

;;; zendalf-theme.el
