;;
;;  ~/.emacs.d/init.el
;;

(setq inhibit-splash-screen t)
(setq initial-scratch-message nil)

(setq debug-on-error t)

;; disable backup "#files#"
(setq make-backup-files nil)

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(add-to-list 'load-path "~/.emacs.d/better-defaults")
(require 'better-defaults)

(set-frame-font "Source Code Pro Medium 11" nil t)
(setq-default cursor-type 'box)
(blink-cursor-mode -1)
(set-cursor-color "green")
(add-to-list 'default-frame-alist '(cursor-color . "green"))
(global-display-line-numbers-mode t)
(column-number-mode)
(setq column-number-indicator-zero-based nil)
(setq-default tab-width 4)
(setq visible-bell nil)
(setq ring-bell-function 'ignore)

(when (display-graphic-p)
  (tool-bar-mode -1)
)
(electric-pair-mode 1)

(setq gc-cons-threshold 100000000) ; 100 mb
(setq read-process-output-max (* 1024 1024)) ; 1mb

(setq-default truncate-lines t)
(if (window-system) (set-frame-size (selected-frame) 213 44))
(split-window-right)

;; save without query
(add-hook 'find-file-hook (lambda () (setq buffer-save-without-query t)))

(cua-mode t)


;; nicer window divider line
(unless standard-display-table
(setq standard-display-table (make-display-table)))
(defun my-change-window-divider ()
  (let ((display-table (or buffer-display-table standard-display-table)))
    (set-display-table-slot display-table `vertical-border' ?│)
    (set-window-display-table (selected-window) display-table)))
(add-hook 'window-configuration-change-hook 'my-change-window-divider)

;; scrolling
;; (setq scroll-step 1 scroll-conservatively 10000)

;;;;;

(use-package eglot :ensure t)
(use-package flycheck :ensure t)
(use-package diffview :ensure t)

;; tree-sitter has some issues (on debian 13 emacs)
;; so we use the MELPA packages for these languages ...
(use-package go-mode :ensure t)
(use-package rust-mode :ensure t)
(use-package cargo-mode :ensure t)

;;
;;  dumb-jump
;;
;;  `M-.` Jump/Goto function definition
;;  `M-,` jump back
;;
(use-package dumb-jump :ensure t)
(add-hook 'xref-backend-functions #'dumb-jump-xref-activate)

;;
;;  trim trailing whitespace
;;
(use-package ws-butler :ensure t)
(add-hook 'prog-mode-hook #'ws-butler-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-to-list 'custom-theme-load-path (concat user-emacs-directory "themes"))
(load-theme 'jblow-moneygreen)

(load (expand-file-name (concat user-emacs-directory "keybindings")))

(set-cursor-color "green")

;; EOB
