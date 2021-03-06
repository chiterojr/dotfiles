;; Remove GNU message
(setq inhibit-startup-message t)

;; Remove toolbar with new and open
(tool-bar-mode -1)

;; Remove scrollbars
(when (display-graphic-p) (set-scroll-bar-mode nil))

;; Theming
(use-package color-theme-modern
  :ensure t
  :init (load-theme 'vim-colors t))

;; Font
(set-face-attribute 'default nil
                    :family "Fira Mono"
                    :height 160
                    :weight 'normal
                    :width 'normal)

;; Line numbers
(setq linum-format "%d")
(setq-default left-fringe-width 5)
(setq-default right-fringe-width 0)

(use-package linum-relative
  :ensure t
  :init
  (setq linum-relative-current-symbol "")
  :config (linum-relative-global-mode))

(use-package hlinum
  :ensure t
  :config (hlinum-activate))

(use-package dimmer
  :ensure t
  :init
  (setq dimmer-fraction 0.5)
  :config (dimmer-mode))

(use-package focus
  :ensure t
  :config (focus-mode))

(use-package fill-column-indicator
  :ensure t
  :config (fci-mode))

;; Whitespaces
(whitespace-mode)
(set-face-attribute 'whitespace-space nil :background nil :foreground "lightgray")
(set-face-attribute 'whitespace-hspace nil :background nil :foreground "lightgray")
(set-face-attribute 'whitespace-tab nil :background nil :foreground "lightgray")
(set-face-attribute 'whitespace-newline nil :background nil :foreground "lightgray")
(set-face-attribute 'whitespace-trailing nil :background nil :foreground "lightgray")
(set-face-attribute 'whitespace-line nil :background nil :foreground "lightgray")
(set-face-attribute 'whitespace-space-before-tab nil :background nil :foreground "lightgray")
(set-face-attribute 'whitespace-indentation nil :background nil :foreground "lightgray")
(set-face-attribute 'whitespace-empty nil :background nil :foreground "lightgray")
(set-face-attribute 'whitespace-space-after-tab nil :background nil :foreground "lightgray")
