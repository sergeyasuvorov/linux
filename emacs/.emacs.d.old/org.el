(use-package org 
  :mode (("\\.org$" . org-mode))
  :config (setq org-path (concat home-path "org/")
		org-agenda-files (list (concat org-path "home.org")
				       (concat org-path "work.org")
				       (concat org-path "language.org"))
		org-directory org-path
		org-log-done t
		org-src-fontify-natively t
		org-todo-keywords '((sequence "TODO" "DEADLINE" "NEED MORE INFO" "POSTPONE" "|" "DONE" "CANCELLED"))))
