(provide 'config-auto-complete)

(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete/dict")
(ac-config-default)
(set-default
  'ac-sources
  (append ac-sources '(ac-source-filename ac-source-files-in-current-dir))
)
(setq ac-auto-start 0)
(define-key ac-mode-map  [(meta /)] 'auto-complete)

