(add-to-list 'load-path "~/.emacs.d/vendor/arduino-mode")
(setq auto-mode-alist (cons '("\\.\\(pde\\|ino\\)$" . arduino-mode) auto-mode-alist))
(autoload 'arduino-mode "arduino-mode" "Arduino editing mode." t)

(add-hook 'arduino-mode-hook '(lambda ()
                           (local-set-key (kbd "RET") 'newline-and-indent)))

(add-hook 'arduino-mode-hook (lambda ()
                          (linum-on)))
