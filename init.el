;;
;;  ~/.emacs.d/init.el
;;

(setq inhibit-splash-screen t)

(setq debug-on-error t)

(add-to-list 'load-path "~/.emacs.d/better-defaults")
(require 'better-defaults)

(set-frame-font "Source Code Pro Medium 11" nil t)

(setq-default cursor-type 'box)
(blink-cursor-mode -1)
(set-cursor-color "green")
(add-to-list 'default-frame-alist '(cursor-color . "green"))

(setq-default tab-width 4)

(when (display-graphic-p)
  (tool-bar-mode -1)
)

(electric-pair-mode 1)

(setq gc-cons-threshold 100000000) ; 100 mb
(setq read-process-output-max (* 1024 1024)) ; 1mb

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'jblow-moneygreen)

(setq-default truncate-lines t)
(if (window-system) (set-frame-size (selected-frame) 213 44))
(split-window-right)

;; (add-hook 'prog-mode-hook 'display-line-numbers-mode)
(global-display-line-numbers-mode t)

;; save without query
(add-hook 'find-file-hook (lambda () (setq buffer-save-without-query t)))

(cua-mode t)

(global-unset-key (kbd "C-k"))
(global-unset-key (kbd "C-b"))
(global-unset-key (kbd "C-w"))

(global-set-key (kbd "C-x C-b") 'switch-to-buffer)

(global-set-key (kbd "C-o") 'find-file)
;; C-s clashes with Search, and I can't easily redefine <C-s C-s> for repeated search
;; (global-set-key (kbd "C-f") 'isearch-forward)
;; (global-set-key (kbd "C-s") 'save-some-buffers)
(global-set-key (kbd "C-r") 'replace-string)
(global-set-key (kbd "C-d") 'kill-line)
(global-set-key (kbd "C-y") 'kill-whole-line)
(global-set-key (kbd "C-j") 'goto-line)

(global-set-key (kbd "C-z") 'undo)

(defvar-keymap walter-wordstar-prefix-map
  :doc "WordStar-like map. It's my custom map, so it's not exact."
  "a" #'mark-whole-buffer
  "b" #'set-mark-command
  "c" #'kill-ring-save
  "y" #'kill-region
  "DEL" #'kill-region
  "v" #'yank
  "f" #'isearch-forward
  "g" #'replace-string
  "r" #'replace-string
  "i" #'string-insert-rectangle
  "/" #'comment-line
  "s" #'save-some-buffers
  "C-s" #'save-some-buffers
  "w" #'write-file
  "x" #'save-buffers-kill-emacs
  "q" #'kill-emacs
)

(keymap-set global-map "C-k" walter-wordstar-prefix-map)

(defvar-keymap walter-buffer-prefix-map
  :doc "buffer commands."
  "b" #'switch-to-buffer
  "C-b" #'switch-to-buffer
  "{" #'previous-buffer
  "}" #'next-buffer
  "<" #'previous-buffer
  ">" #'next-buffer
  "<left>" #'previous-buffer
  "<right>" #'next-buffer
  "n" #'rename-buffer
  "s" #'save-buffer
  "w" #'write-file
  "d" #'kill-buffer
  "q" #'kill-buffer
)

(keymap-set global-map "C-b" walter-buffer-prefix-map)

(defvar-keymap walter-window-prefix-map
  :doc "window commands."
  "w" #'other-window
  "C-w" #'other-window
  "o" #'other-window
  "<" #'other-window
  ">" #'other-window
  "<left>" #'other-window
  "<right>" #'other-window
  "d" #'delete-window
  "|" #'split-window-right
  "-" #'split-window-below
)

(keymap-set global-map "C-w" walter-window-prefix-map)


;; nicer window divider line
(unless standard-display-table
(setq standard-display-table (make-display-table)))
(defun my-change-window-divider ()
  (let ((display-table (or buffer-display-table standard-display-table)))
    (set-display-table-slot display-table `vertical-border' ?│)
    (set-window-display-table (selected-window) display-table)))
(add-hook 'window-configuration-change-hook 'my-change-window-divider)

;;;;;

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

(set-cursor-color "green")

;; EOB
