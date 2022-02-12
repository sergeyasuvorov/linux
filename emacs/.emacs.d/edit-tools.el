(use-package pdf-tools
   :config
   (pdf-tools-install)
   (setq-default pdf-view-display-size 'fit-width)
   (define-key pdf-view-mode-map (kbd "C-s") 'isearch-forward)
   :hook (pdf-view-mode . (lambda() (linum-mode -1)))
   :custom
   (pdf-annot-activate-created-annotations t "automatically annotate highlights"))
