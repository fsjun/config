(provide 'config-gtags)

(add-to-list 'load-path "~/.emacs.d/elpa/gtags-6.5.4")

(autoload 'gtags-mode "gtags" "" t)

(set-default
  'ac-sources
  (append ac-sources '(ac-source-gtags))
)

(add-hook 'gtags-mode-hook
  '(lambda ()
        ; Local customization (overwrite key mapping)
        (define-key gtags-mode-map "\C-f" 'scroll-up)
        (define-key gtags-mode-map "\C-b" 'scroll-down)
))
(add-hook 'gtags-select-mode-hook
  '(lambda ()
        (setq hl-line-face 'underline)
        (hl-line-mode 1)
))
(add-hook 'c-mode-hook
  '(lambda ()
        (gtags-mode 1)))
(add-hook 'c++-mode-hook
  '(lambda ()
        (gtags-mode 1)))
; Customization
(setq gtags-suggested-key-mapping t)
(setq gtags-auto-update t)

