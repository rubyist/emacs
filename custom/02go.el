(require 'go-mode)

(setq gofmt-command "goimports")
(add-hook 'before-save-hook 'gofmt-before-save)

(add-to-list 'load-path "~/src/gocode/src/github.com/dougm/goflymake")
(require 'go-flymake)

(require 'go-autocomplete)
(require 'auto-complete-config)
