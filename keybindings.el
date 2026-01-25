;;
;;  key bindings
;;
  
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

;; Undo
(global-set-key (kbd "C-z") 'undo)


(defvar-keymap walter-wordstar-prefix-map
  :doc "WordStar-like map. It's my custom map, so it's not exact."
  "a" #'mark-whole-buffer
  "b" #'set-mark-command
  "k" #'keyboard-quit
  "@" #'mark-defun
  "c" #'kill-ring-save
  "y" #'kill-region
  "DEL" #'kill-region
  "v" #'yank
  "f" #'isearch-forward
  "g" #'replace-string
  "r" #'replace-regexp
  "i" #'string-insert-rectangle
  "/" #'comment-line
  "s" #'save-some-buffers
  "C-s" #'save-some-buffers
  "w" #'write-region
  "x" #'save-buffers-kill-emacs
  "q" #'kill-emacs
  )

(global-unset-key (kbd "C-k"))
(keymap-set global-map "C-k" walter-wordstar-prefix-map)


(global-set-key (kbd "C-x C-b") 'ibuffer)

(defvar-keymap walter-buffer-prefix-map
  :doc "buffer commands."
  "b" #'ibuffer
  "C-b" #'ibuffer
  "{" #'previous-buffer
  "}" #'next-buffer
  "<" #'previous-buffer
  ">" #'next-buffer
  "<left>" #'previous-buffer
  "<right>" #'next-buffer
  "n" #'rename-buffer
  "s" #'save-buffer
  "C-s" #'save-buffer
  "w" #'write-file
  "d" #'kill-buffer
  "q" #'kill-buffer
  "i" #'ibuffer
  "l" #'ibuffer
  )

(global-unset-key (kbd "C-b"))
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
  "q" #'delete-window
  "|" #'split-window-right
  "-" #'split-window-below
  )

(global-unset-key (kbd "C-w"))
(keymap-set global-map "C-w" walter-window-prefix-map)

;; EOB
