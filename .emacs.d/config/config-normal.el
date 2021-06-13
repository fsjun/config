(provide 'config-normal)

(setq stack-trace-on-error t)
;;(tool-bar-mode -1)
(menu-bar-mode -1)
;;(scroll-bar-mode -1)
(setq-default line-spacing 2)
;;(setq stack-trace-on-error t)
(setq inhibit-startup-message t)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq tab-width 4)
(setq default-tab-width 4)
(setq c-basic-offset 4)
(show-paren-mode 1)
(defun indent-buffer ()
       "Indent the whole buffer."
       (interactive)
       (save-excursion
       (indent-region (point-min) (point-max) nil)))
(global-set-key [f7] 'indent-buffer)

(setq vc-handled-backends nil)
(setq make-backup-files nil)
(setq-default make-backup-files nil)
(setq auto-save-mode nil)
(setq auto-save-default nil)
(global-auto-revert-mode 1)
(global-linum-mode)
(column-number-mode)
;;(desktop-save-mode 1)
(setq c-default-style "linux"
           c-basic-offset 4)

(defun qiang-comment-dwim-line (&optional arg)
  "Replacement for the comment-dwim command.
If no region is selected and current line is not blank and we are not at the end of the line,
then comment current line.
Replaces default behaviour of comment-dwim, when it inserts comment at the end of the line."
  (interactive "*P")
  (comment-normalize-vars)
  (if (and (not (region-active-p)) (not (looking-at "[ \t]*$")))
      (comment-or-uncomment-region (line-beginning-position) (line-end-position))
    (comment-dwim arg)))
(global-set-key "\M-;" 'qiang-comment-dwim-line)

;;(set-scroll-bar-mode 'right)
(global-set-key "\C-x\C-k" 'kill-this-buffer)
(setq x-select-enable-clipboard t)

;; max window
(defun my-max-window()
 (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
  '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
 (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
  '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
 )
;;(run-with-idle-timer 1 nil 'my-max-window)

