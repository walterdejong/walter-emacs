;;
;;  key bindings for Emacs 27 (old style prefix maps)
;;

;; enable cut/copy/paste/undo with C-x, C-c, C-v, C-z
(cua-mode t)

;; Open
(global-set-key (kbd "C-o") 'find-file)

;; Save (All)
(global-set-key (kbd "C-s") 'save-some-buffers)

;; Find
(global-set-key (kbd "C-f") 'isearch-forward-regexp)
(define-key isearch-mode-map (kbd "C-f") 'isearch-repeat-forward)

;; Replace
(global-set-key (kbd "C-r") 'replace-regexp)

;; Delete Line
(global-set-key (kbd "C-y") 'kill-whole-line)

;; Delete to end of line
(global-set-key (kbd "C-d") 'kill-line)

;; Jump/Goto Line
(global-set-key (kbd "C-j") 'goto-line)

;; WordStar-like commands prefixed with C-k
(define-prefix-command 'walter-wordstar-prefix-map)
(global-set-key (kbd "C-k") 'walter-wordstar-prefix-map)
(define-key walter-wordstar-prefix-map (kbd "b") 'set-mark-command)
(define-key walter-wordstar-prefix-map (kbd "c") 'kill-ring-save)
(define-key walter-wordstar-prefix-map (kbd "y") 'kill-region)
(define-key walter-wordstar-prefix-map (kbd "DEL") 'kill-region)
(define-key walter-wordstar-prefix-map (kbd "v") 'yank)
(define-key walter-wordstar-prefix-map (kbd "k") 'keyboard-quit)
(define-key walter-wordstar-prefix-map (kbd "w") 'write-region)
(define-key walter-wordstar-prefix-map (kbd "r") 'read-file)
(define-key walter-wordstar-prefix-map (kbd "@") 'mark-defun)
(define-key walter-wordstar-prefix-map (kbd "a") 'mark-whole-buffer)
(define-key walter-wordstar-prefix-map (kbd "f") 'isearch-forward)
(define-key walter-wordstar-prefix-map (kbd "g") 'replace-string)
(define-key walter-wordstar-prefix-map (kbd "i") 'string-insert-rectangle)
(define-key walter-wordstar-prefix-map (kbd "|") 'rectangle-mark-mode)
(define-key walter-wordstar-prefix-map (kbd "/") 'comment-line)
(define-key walter-wordstar-prefix-map (kbd "o") 'find-file-other-window)
(define-key walter-wordstar-prefix-map (kbd "s") 'save-some-buffers)
(define-key walter-wordstar-prefix-map (kbd "C-s") 'save-some-buffers)
(define-key walter-wordstar-prefix-map (kbd "d") 'write-file)
(define-key walter-wordstar-prefix-map (kbd "x") 'save-buffers-kill-emacs)
(define-key walter-wordstar-prefix-map (kbd "q") 'kill-emacs)

(global-set-key (kbd "C-x C-b") 'ibuffer)

;; buffer commands using C-b
(define-prefix-command 'walter-buffer-prefix-map)
(global-set-key (kbd "C-b") 'walter-buffer-prefix-map)
(define-key walter-buffer-prefix-map (kbd "b") 'ibuffer)
(define-key walter-buffer-prefix-map (kbd "C-b") 'ibuffer)
(define-key walter-buffer-prefix-map (kbd "{") 'previous-buffer)
(define-key walter-buffer-prefix-map (kbd "}") 'next-buffer)
(define-key walter-buffer-prefix-map (kbd "<") 'previous-buffer)
(define-key walter-buffer-prefix-map (kbd ">") 'next-buffer)
(define-key walter-buffer-prefix-map (kbd "<left>") 'previous-buffer)
(define-key walter-buffer-prefix-map (kbd "<right>") 'next-buffer)
(define-key walter-buffer-prefix-map (kbd "n") 'rename-buffer)
(define-key walter-buffer-prefix-map (kbd "s") 'save-buffer)
(define-key walter-buffer-prefix-map (kbd "C-s") 'save-buffer)
(define-key walter-buffer-prefix-map (kbd "w") 'write-buffer)
(define-key walter-buffer-prefix-map (kbd "d") 'kill-buffer)
(define-key walter-buffer-prefix-map (kbd "q") 'kill-buffer)
(define-key walter-buffer-prefix-map (kbd "i") 'ibuffer)
(define-key walter-buffer-prefix-map (kbd "l") 'ibuffer)

;; window commands using prefix C-w
(define-prefix-command 'walter-window-prefix-map)
(global-set-key (kbd "C-w") 'walter-window-prefix-map)
(define-key walter-window-prefix-map (kbd "w") 'other-window)
(define-key walter-window-prefix-map (kbd "C-w") 'other-window)
(define-key walter-window-prefix-map (kbd "o") 'other-window)
(define-key walter-window-prefix-map (kbd "<") 'other-window)
(define-key walter-window-prefix-map (kbd ">") 'other-window)
(define-key walter-window-prefix-map (kbd "<left>") 'other-window)
(define-key walter-window-prefix-map (kbd "<right>") 'other-window)
(define-key walter-window-prefix-map (kbd "d") 'delete-window)
(define-key walter-window-prefix-map (kbd "q") 'delete-window)
(define-key walter-window-prefix-map (kbd "|") 'split-window-right)
(define-key walter-window-prefix-map (kbd "-") 'split-window-below)

;; quickmove commands using prefix C-q
(define-prefix-command 'walter-quickmove-prefix-map)
(global-set-key (kbd "C-q") 'walter-quickmove-prefix-map)
(define-key walter-quickmove-prefix-map (kbd "r") 'point-to-register)
(define-key walter-quickmove-prefix-map (kbd "m") 'point-to-register)
(define-key walter-quickmove-prefix-map (kbd "j") 'jump-to-register)
(define-key walter-quickmove-prefix-map (kbd "q") 'beginning-of-buffer)
(define-key walter-quickmove-prefix-map (kbd "C-q") 'beginning-of-buffer)
(define-key walter-quickmove-prefix-map (kbd "g") 'beginning-of-buffer)
(define-key walter-quickmove-prefix-map (kbd "G") 'end-of-buffer)
(define-key walter-quickmove-prefix-map (kbd "u") 'scroll-down)
(define-key walter-quickmove-prefix-map (kbd "v") 'scroll-up)
(define-key walter-quickmove-prefix-map (kbd "C-u") 'scroll-down)
(define-key walter-quickmove-prefix-map (kbd "C-v") 'scroll-up)
(define-key walter-quickmove-prefix-map (kbd "[") 'backward-paragraph)
(define-key walter-quickmove-prefix-map (kbd "]") 'forward-paragraph)
(define-key walter-quickmove-prefix-map (kbd "{") 'backward-paragraph)
(define-key walter-quickmove-prefix-map (kbd "}") 'forward-paragraph)

;; EOB
