(require 'cl-lib)
(progn
  ;;; Never to be uncommented
  ;; (global-set-key (kbd "M-b") 'switch-to-buffer)
  ;; (global-set-key (kbd "M-f") 'find-file)
  ;; (global-set-key (kbd "M-s") 'save-buffer)
  ;; (global-set-key (kbd "M-o") 'other-window)
  ;; (global-set-key (kbd "C-x C-b") 'switch-to-buffer)
  (load-theme 'manoj-dark)
  (set-frame-font "Liberation Mono-12")
  (show-paren-mode 1)
  (setq inhibit-startup-screen t)
  (if (display-graphic-p)
      (progn
        (show-paren-mode 1)
        )))

;; scheme goop
;; (setq inferior-lisp-program "/usr/bin/mit-scheme")

;; If you don't have MELPA in your package archives:
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(setq my-packages '(intero
                    better-defaults
                    geiser
                    paredit))

(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))

(require 'better-defaults)
(add-hook 'haskell-mode-hook 'intero-mode)

; GC when window loses focus
(add-hook 'focus-out-hook 'garbage-collect)

(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (paredit geiser better-defaults intero))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(load (expand-file-name "~/quicklisp/slime-helper.el"))
  ;; Replace "sbcl" with the path to your implementation
  (setq inferior-lisp-program "/usr/local/bin/sbcl")
(setq slime-contribs '(slime-fancy))
