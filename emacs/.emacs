;; System type definition
(defun system-is-linux()
  (string-equal system-type "gnu/linux"))
(defun system-is-windows()
  (string-equal system-type "windows-nt"))

(when (system-is-windows)
  (setq emacs-init-path "c:/.emacs.d/"))

(when (system-is-linux)
  (setq emacs-init-path "~/.config/.emacs.d/"))

(defun load-user-file (file)
  (interactive "f")
  "Load a file in current user's configuration directory"
  (load-file (expand-file-name file emacs-init-path)))

(load-user-file "base.el")
(load-user-file "personal.el")
(load-user-file "common.el")
(load-user-file "auto-update.el")
(load-user-file "company.el")
(load-user-file "ivy.el")
;;(load-user-file "helm.el")
(load-user-file "edit-tools.el")
(load-user-file "version-control.el")
(load-user-file "programming.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default))
 '(package-selected-packages
   '(dracula-theme which-key use-package solarized-theme smart-mode-line magit lsp-python-ms hindent haskell-mode gnu-elpa-keyring-update flx doom-themes diminish counsel company auto-package-update)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
