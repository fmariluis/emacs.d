;;; Provides evil, evil-leader, evil-matchit
(require-package 'evil)
(require-package 'evil-leader)
(require-package 'evil-matchit)
(require-package 'evil-nerd-commenter)

;;; Evil leader
(global-evil-leader-mode)
;;; Evil leader key works in all states
(setq evil-leader/in-all-states 1)

;;; Defining some evil-leader shortcuts
;;; Probably we should move these into another file
(evil-leader/set-leader ",")
(evil-leader/set-key
  "." 'jedi:goto-definition
  "a" 'ag-project
  "b" 'switch-to-buffer
  "c" 'evilnc-comment-or-uncomment-lines
  "e" 'flycheck-list-errors
  "i" 'imenu
  "j" 'ace-jump-mode
  "k" 'kill-buffer
  "p" 'projectile-switch-project
  "r" 'git-gutter:revert-hunk
  "u" 'undo-tree-visualize
  "," 'projectile-find-file)

(require 'evil)
(evil-mode 1)

(require 'evil-matchit)
(global-evil-matchit-mode 1)

;; Cursors
(setq evil-emacs-state-cursor '("red" box))
(setq evil-normal-state-cursor '("green" box))
(setq evil-visual-state-cursor '("orange" box))
(setq evil-insert-state-cursor '("red" bar))
(setq evil-replace-state-cursor '("red" bar))
(setq evil-operator-state-cursor '("red" hollow))

(provide 'init-evil)
