(use-package flycheck
  :diminish)

(use-package lsp-mode
  :defer t
  :hook
  ((python-mode . lsp)
   (scala-mode . lsp)
   (lsp-mode . lsp-lens-mode))
  :init
  (setq lsp-keymap-prefix "s-p")
  :config
  (setq lsp-enable-snippet nil
	lsp-pyls-plugins-yapf-enabled t
	lsp-pyls-plugins-autopep8-enabled nil
	lsp-prefer-flymake nil)
  (define-key lsp-mode-map (kbd "s-p") lsp-command-map))

(use-package lsp-metals
  :after lsp-mode)

(use-package lsp-treemacs
  :after lsp-mode
  :config
  (setq lsp-treemacs-theme 'Iconless))

(use-package lsp-ui
  :after lsp-mode
  :diminish
  :commands lsp-ui-mode)

(use-package posframe
  :after lsp-mode
  ;; Posframe is a pop-up tool that must be manually installed for dap-mode
  )
(use-package dap-mode
  :after lsp-mode
  :hook
  (lsp-mode . dap-mode)
  :custom
  (dap-auto-configure-mode t)
  (dap-auto-configure-features '(sessions locals breakpoints expressions tooltip)))

(use-package lsp-ivy
  :after lsp-mode
  :commands lsp-ivy-workspace-symbol)
