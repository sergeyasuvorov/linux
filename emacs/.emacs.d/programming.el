(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  :config (setq lsp-keymap-prefix "C-c l"
		lsp-enable-snippet nil)
  :hook (
         (python-mode . lsp))
  :commands lsp)

;; (use-package lsp-ui
;;   :init (setq lsp-ui-sideline-enable nil)
;;   :commands lsp-ui-mode)
;; ;; if you are ivy user
;; (use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
;; (use-package lsp-treemacs :commands lsp-treemacs-errors-list)

;; optionally if you want to use debugger
;; (use-package dap-mode)
;; (use-package dap-LANGUAGE) to load the dap adapter for your language

;; Python
(use-package lsp-python-ms
  :ensure t
  :init (setq lsp-python-ms-auto-install-server t))

;; Haskell
(use-package haskell-mode)

(use-package hindent)
