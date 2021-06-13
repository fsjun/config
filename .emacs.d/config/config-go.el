(provide 'config-go)

;(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete")
;(require 'auto-complete-config)
(add-hook 'before-save-hook 'gofmt-before-save)
(add-hook 'go-mode-hook (lambda()(local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)))

(require 'go-autocomplete)
