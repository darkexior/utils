;;(set-face-attribute 'default nil :font "Borg Sans Mono")

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
