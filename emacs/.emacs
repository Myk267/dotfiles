(require 'cl-lib)
(progn
  ;; (global-set-key (kbd "M-b") 'switch-to-buffer)
  ;; (global-set-key (kbd "M-f") 'find-file)
  ;; (global-set-key (kbd "M-s") 'save-buffer)
  ;; (global-set-key (kbd "M-o") 'other-window)
  ;; (global-set-key (kbd "C-x C-b") 'switch-to-buffer)
  (load-theme 'whiteboard)
  (set-frame-font "Liberation Mono-12")
  (show-paren-mode 1)
  ;; (setq inhibit-startup-screen t)
  ;; (if (display-graphic-p)
  ;;     (progn
  ;;       (show-paren-mode 1)
        )

;; scheme goop
(setq inferior-list-program "/usr/bin/mit-scheme")


;; If you don't have MELPA in your package archives:
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(defvar my-packages '(intero
		      better-defaults))

(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))

(require 'better-defaults)
(add-hook 'haskell-mode-hook 'intero-mode)
