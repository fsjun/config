
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;;(package-initialize)

(add-to-list 'load-path "~/.emacs.d/config")
(require 'config-elpa)
(require 'config-normal)
(require 'config-font)
;;(require 'config-auto-complete)
;;(require 'config-auto-complete-etags)
(require 'config-neotree)
;;(require 'config-gtags)
;;(require 'config-python)
;;(require 'config-xcscope)
(require 'config-key)
;;(require 'config-go)
(require 'config-lsp)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(helm lsp-mode yasnippet lsp-treemacs helm-lsp projectile hydra flycheck company avy which-key helm-xref dap-mode python-environment neotree epc)))
(when (cl-find-if-not #'package-installed-p package-selected-packages)
   (package-refresh-contents)
     (mapc #'package-install package-selected-packages))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
