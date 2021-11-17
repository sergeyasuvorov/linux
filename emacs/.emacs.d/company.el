(use-package company
  :diminish company-mode
;;  :config (setq company-backends (remove 'company-ropemacs company-backends) company-tooltip-limit
;;                20 company-tooltip-align-annotations t)
  :config (setq company-tooltip-limit 20 
		company-tooltip-align-annotations t
		company-minimum-prefix-length 2
		
		lsp-completion-provider :capf)
  (global-company-mode 1))
