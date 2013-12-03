(require 'go-mode)

; (setq gofmt-command "goimports")
(add-hook 'before-save-hook 'gofmt-before-save)

(add-to-list 'load-path "~/src/gocode/src/github.com/dougm/goflymake")
(require 'go-flymake)

(require 'go-autocomplete)
(require 'auto-complete-config)
(require 'go-errcheck)
(add-to-list 'yas-snippet-dirs "~/.emacs.d/vendor/yasnippet-go/go-mode")

(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)))
