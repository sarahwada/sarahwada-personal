;; Put autosave files (ie #foo#) and backup files (ie foo~) in ~/.emacs.d/.
(custom-set-variables
  '(auto-save-file-name-transforms '((".*" "~/.emacs.d/autosaves/\\1" t)))
  '(backup-directory-alist '((".*" . "~/.emacs.d/backups/"))))

;; create the autosave dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/autosaves/" t)

;; don't use tabs for indentation
(setq-default indent-tabs-mode nil)

;; load aliases
(load "emacs-aliases")

;; mac-style undo and redo
;;(global-set-key (kbd "C-z") 'undo) ; 【Ctrl+z】
;;(global-set-key (kbd "C-Z") 'redo) ; 【Ctrl+Shift+z】