(set-face-attribute 'default nil :font "Borg Sans Mono")

(setq inhibit-startup-message t)
(setq default-directory "C:/Users/Guest/Gabriel")

(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)
:init (load-theme 'naysayer t)

(setq resize-mini-windows  t)
(add-hook 'minibuffer-setup-hook 'my-minibuffer-setup)
(defun my-minibuffer-setup ()
       (set (make-local-variable 'face-remapping-alist)
          '((default :height 2.0))))

(scroll-bar-mode -1)
(tool-bar-mode -1) 
(tooltip-mode -1)
(set-fringe-mode 10)
(menu-bar-mode -1)
(column-number-mode)
(global-display-line-numbers-mode t)
(custom-set-faces
  '(mode-line ((t (:background "black :foreground "gray70" :box (:line-width 4 :color "black"))))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("dd4582661a1c6b865a33b89312c97a13a3885dc95992e2e5fc57456b4c545176" "1c12bf9e876db603c94ecba530ae4ad5c899d46944ef6f3ce7918cfc07c6564a" "ecf898411a1e04d9f431febe2c5b6643eab97128b33823b345e4169dfb3889e0" default)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
"# utils" 
