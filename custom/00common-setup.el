;; window position
(add-to-list 'default-frame-alist '(left . 0))
(add-to-list 'default-frame-alist '(top . 0))
(add-to-list 'default-frame-alist '(height . 45))
(add-to-list 'default-frame-alist '(width . 175))

(setq system-users-terminfo nil)

(prefer-coding-system 'utf-8)

(set-frame-font "-apple-Fira_Mono-medium-normal-normal-*-*-*-*-*-m-0-iso10646-1")
(set-face-attribute 'default nil :height 180)

(setq-default truncate-lines nil)
(setq-default indent-tabs-mode nil)
(menu-bar-mode t)

(setq-default truncate-partial-width-windows nil)

(defalias 'yes-or-no-p 'y-or-n-p)

(set-cursor-color "red")

(setq default-frame-alist
      '((cursor-color . "red")))

(setq search-highlight t)
(transient-mark-mode t)

(global-visual-line-mode 1)

(setq x-select-enable-clipboard nil)

(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)

(setq backup-inhibited t)
(setq auto-save-default nil)

(require 'uniquify)
(setq uniquify-buffer-name-style 'reverse)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t)
(setq uniquify-ignore-buffers-re "^\\*")

(require 'ansi-color)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
(defun colorize-compilation-buffer ()
  (interactive)
  (toggle-read-only)
  (ansi-color-apply-on-region (point-min) (point-max))
  (toggle-read-only))

(add-hook 'compilation-filter-hook 'colorize-compilation-buffer)

(add-to-list 'load-path "~/.emacs.d/vendor/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

(tool-bar-mode 0)

(add-to-list 'load-path "~/.emacs.d/vendor/emacs-powerline")
(require 'powerline)

(color-theme-initialize)
(color-theme-charcoal-black)
(set-face-attribute 'mode-line nil
                    :background "#7FFFD5"
                    :box nil)

(setq ring-bell-function 'ignore)
(linum-mode)

