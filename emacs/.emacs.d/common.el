(setq dired-dwim-target t)
;; (use-package ranger
;;   :init (setq ranger-show-hidden t
;; 	      ranger-cleanup-on-disable t
;; 	      ranger-show-literal nil
;; 	      ranger-override-dired 'ranger
;; 	      ranger-excluded-extensions '("mkv" "iso" "mp4" "avi")))

(use-package which-key
  :init (which-key-mode)
  :diminish which-key-mode
  :config
  (setq which-key-idle-delay 0.3))
