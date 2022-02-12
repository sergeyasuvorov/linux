(add-to-list 'default-frame-alist '(fullscreen . maximized))

(server-start)
                                      
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

(defun px-raise-frame-and-give-focus ()
  (when window-system
    (raise-frame)
    (x-focus-frame (selected-frame))
    (set-mouse-pixel-position (selected-frame) 4 4)
    ))
(add-hook 'server-switch-hook 'px-raise-frame-and-give-focus)

(tooltip-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(blink-cursor-mode -1)
(global-visual-line-mode t)

(set-language-environment "UTF-8")
(prefer-coding-system 'utf-8-unix)
(desktop-save-mode 1) 
(fset 'yes-or-no-p 'y-or-n-p)
(global-hl-line-mode 1)

(setq redisplay-dont-pause t)
(setq ring-bell-function 'ignore)
(setq word-wrap t)
(setq visible-bell 1)
(setq use-dialog-box nil)
(setq inhibit-splash-screen   t)
(setq inhibit-startup-message t)

;; Show-paren-mode settings
(show-paren-mode t) 
(setq show-paren-style 'expression) 

(setq display-time-24hr-format t)
(display-time-mode             t)
(size-indication-mode          t)

;; Electric-modes settings
(electric-pair-mode    1)
(electric-indent-mode -1)

;; Delete selection
(delete-selection-mode t)

;; Fringe mode
(fringe-mode '(8 . 0)) 

;; Linum
(global-linum-mode  t)
(setq linum-format " %d")

(global-set-key (kbd "s-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "s-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "s-C-<down>") 'shrink-window)
(global-set-key (kbd "s-C-<up>") 'enlarge-window)

;; Dired
(setq dired-recursive-deletes 'top)

(set-frame-font "DejaVu Sans Mono 10" nil t)

;;(use-package all-the-icons)

;;(use-package solarized-theme
;;  :init (load-theme 'solarized-dark t))
(use-package doom-themes
  :init (load-theme 'doom-one t))
;;(use-package zenburn 
;;  :init (load-theme 'zenburn t))

;;(use-package smart-mode-line-powerline-theme)

(use-package smart-mode-line
  :config 
  (sml/setup) 
  (sml/apply-theme 'automatic))
;;(use-package doom-modeline
;;  :ensure t
;;  :init (doom-modeline-mode 1))

