(add-to-list 'default-frame-alist '(fullscreen . maximized))

(server-start)

(when (system-is-windows)
    (setq default-directory "C:/" 
	  home-path "c:/"
	  music-path "d:/music"
	  w32-pass-lwindow-to-system nil
	  w32-lwindow-modifier 'super
	  w32-pass-rwindow-to-system nil
	  w32-rwindow-modifier 'super
	  w32-apps-modifier 'hyper
;;	  w32-register-hot-key [s-]
;;	  w32-register-hot-key [H-]
	  inferior-ess-r-program "R")
        (set-frame-font "DejaVu Sans Mono 10" nil t))
    ;;    (set-frame-font "Source Code Pro 10" nil t))

(when (system-is-linux)
    (setq default-directory "~/" 
	  home-path "~/"
	  music-path "~/music")
    ;;    (set-frame-font "DejaVu Sans Mono 12" nil t)
    ;;(add-to-list 'default-frame-alist '(font . "Source Code Pro 11"))
    (add-to-list 'default-frame-alist '(font . "Liberation Mono 12"))
    ;;(set-frame-font "Source Code Pro 11" nil t))
    (set-frame-font "Liberation Mono 12" nil t))    
;;    (set-frame-parameter (selected-frame) 'alpha '(85 . 85))
;;    (add-to-list 'default-frame-alist '(alpha . (85 . 85))))

(defvar my-backup-directory (concat home-path ".backups/"))
(if (not (file-exists-p my-backup-directory))
    (make-directory my-backup-directory t))


(setq ring-bell-function 'ignore
      inhibit-startup-message t
      display-time-24hr-format t
      linum-format " %d"
      show-paren-style 'expression
      ;; backups      
      backup-directory-alist `((".*" . ,my-backup-directory))
      auto-save-file-name-transforms `((".*" ,my-backup-directory t))
      backup-by-copying t               ; don't clobber symlinks
      version-control t                 ; version numbers for backup files
      delete-old-versions t             ; delete excess backup files silently
      delete-by-moving-to-trash t
      kept-old-versions 6               ; oldest versions to keep when a new numbered backup is made (default: 2)
      kept-new-versions 9               ; newest versions to keep when a new numbered backup is made (default: 2)
      vc-follow-symlinks nil
      )

(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
(prefer-coding-system 'utf-8-unix)

(fset 'yes-or-no-p 'y-or-n-p)

(desktop-save-mode 1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(set-fringe-mode 10)
(menu-bar-mode -1)
(display-time-mode t)
(global-linum-mode  t)
(electric-pair-mode 1)
(show-paren-mode 1)

(global-set-key (kbd "M-,") 'beginning-of-buffer)
(global-set-key (kbd "M-.") 'end-of-buffer)
(global-set-key (kbd "C-M-b") 'ivy-switch-buffer)

;;(use-package all-the-icons)

;;(use-package solarized-theme
;;  :init (load-theme 'solarized-dark t))
(use-package doom-themes
  :init (load-theme 'doom-one t))
;;  :init (load-theme 'doom-palenight t))
  
(use-package smart-mode-line
  :config 
  (sml/setup) 
  (sml/apply-theme 'automatic))
