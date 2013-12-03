(require 'ert)
(require 'dash)

(require 'smartparens)
(require 'smartparens-test-env)
(require 'smartparens-test-get-paired-expression)
(require 'smartparens-test-get-stringlike-expression)
(require 'smartparens-test-ruby-mode)
(require 'smartparens-test-commands)

(defun sp-test-run-tests ()
  (interactive)
  (ert "sp-test-*"))

;; Local Variables:
;; eval: (push (file-name-directory (buffer-file-name)) load-path)
;; End:
