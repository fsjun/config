(provide 'config-python)

(add-to-list 'load-path "~/.emacs.d/elpa/jedi")
(require 'jedi)

(set-variable 'py-indent-offset 4)
(set-variable 'python-indent-guess-indent-offset nil)

(defun my-jedi-setup ()
  (progn
    (setq jedi:complete-on-dot t)
    ;(setq jedi:server-command '("~/.emacs.d/elpa/jedi/jediepcserver.py"))
    (jedi:setup)
    (jedi:ac-setup)

    ))

(add-hook 'python-mode-hook 'my-jedi-setup)

