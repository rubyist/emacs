; Load CEDET
(load-file "~/.emacs.d/vendor/cedet/cedet-devel-load.el")
(add-to-list 'semantic-default-submodes 'global-semantic-idle-summary-mode t)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-completions-mode t)
(add-to-list 'semantic-default-submodes 'global-cedet-m3-minor-mode t)
(semantic-mode 1)
(global-ede-mode 1)
(setq ede-arduino-appdir "/Applications/Arduino.app/Contents/Resources/Java")


(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)
(add-to-list 'load-path "~/.emacs.d/custom")
(add-to-list 'load-path "~/.emacs.d/vendor")

; This should be more automatic
(load "000-common-setup.el")
(load "005-base16-eighties-dark-theme.el")
(load "010-auto-complete.el")
(load "020-smartparens.el")
(load "030-projectile.el")
(load "200-go.el")
(load "210-arduino.el")
