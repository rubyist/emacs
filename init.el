(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)
(add-to-list 'load-path "~/.emacs.d/custom")
(add-to-list 'load-path "~/.emacs.d/vendor")

; This should be more automatic
(load "000-common-setup.el")
(load "010-auto-complete.el")
(load "020-smartparens.el")
(load "030-projectile.el")
(load "200-go.el")
