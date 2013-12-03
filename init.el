(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)
(add-to-list 'load-path "~/.emacs.d/custom")
(add-to-list 'load-path "~/.emacs.d/vendor")

(load "00common-setup.el")
(load "01auto-complete.el")
(load "02go.el")
