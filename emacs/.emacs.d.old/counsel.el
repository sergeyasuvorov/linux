(use-package ivy
  :after flx
  :defer 0.1
  :diminish
  :bind (("C-c C-r" . ivy-resume)
         ("C-x B" . ivy-switch-buffer-other-window))
  :custom
  (ivy-count-format "(%d/%d) ")
  (ivy-use-virtual-buffers t)
  :config 
  (ivy-mode)
  (setq ivy-re-builders-alist 
	'((swiper . ivy--regex-plus)
	  (t      . ivy--regex-fuzzy))))

(use-package flx)

(use-package counsel
  :after ivy
  :diminish
  :config (counsel-mode))

;;(use-package ivy-rich
;;  :init (setq ivy-rich-parse-remote-file-path t)
;;  :config (ivy-rich-mode 1))

(use-package swiper
  :bind (("C-s" . swiper)
         ("C-r" . swiper)))
