(provide 'config-auto-complete-etags)

(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-etags-0.2")
(require 'auto-complete-etags)
(add-to-list 'ac-sources 'ac-source-etags)

;; If you want this to show documentation, also add the following:
;; (setq ac-etags-use-document t)

