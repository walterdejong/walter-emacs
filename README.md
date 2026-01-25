walter-emacs
============

WARNING: These are my personal `emacs` settings. Some keys have been globally
redefined and may not work well for you.

The config is nothing complicated, and should be relatively easy to comprehened.
See `init.el`.

These settings include `better-defaults`

* save without asking
* quit without asking

To see all keybindings, press `C-h b`

* `C-x` is left untouched
* `C-c` is left untouched
* `C-g` is still quit/cancel
* `C-k` is changed to a prefix for WordStar-like commands
* `C-b` is a new prefix for handling buffers
* `C-w` is changed to a prefix for handling windows

## Misc primary keys

* `C-o` Open file (find-file)
* `C-s` Save all (save-some-buffers)
* `C-f` Find (isearch-forward-regexp)
* `C-r` Replace (replace-regexp)
* `C-y` Delete line (kill-whole-line)
* `C-d` Delete to end of line (kill-line)
* `C-j` Jump/Goto line (goto-line)
* `C-z` Undo (undo)

* CUA mode: cut/copy/paste via mark + `C-x`, `C-c`, `C-v`
* dumb-jump
  * `M-.` Jump to function
  * `M-,` Jump back

## WordStar-like commands

Prefix `C-k` are WordStar-like commands. It's not exact ... but 'like'.

- `C-k b` Mark region; Start block selection (set-mark-command)
- `C-k c` Copy block (kill-ring-save)
- `C-k y` Delete/cut block (kill-region)
- `C-k DEL` Delete/cut block (kill-region)
- `C-k v` Paste block (yank)
- `C-k k` Cancel block (keyboard-quit)
- `C-k w` Write block to file (write-region)
- `C-k r` Read/Insert file (insert-file)
- `C-k @` Mark entire function (mark-defun)
- `C-k a` Select all (mark-whole-buffer)
- `C-k f` Find string (no regexp) (isearch-forward)
- `C-k g` Replace string (replace-string)
- `C-k i` Block insert rectangle (string-insert-rectangle)
- `C-k |` Mark rectangle mode (rectangle-mark-mode)
- `C-k /` Comment line (comment-line)
- `C-k o` Open file in other window (find-file-other-window)
- `C-k s` Save all (save-some-buffers)
- `C-k C-s` Save all (save-some-buffers)
- `C-k d` Save As (write-file)
- `C-k x` Exit with save (save-buffers-kill-emacs)
- `C-k q` Quit without saving (kill-emacs)

## Buffer commands

Prefix `C-b` are buffer manipulation commands.

- `C-b b` Buffer menu (ibuffer)
- `C-b C-b` Buffer menu (ibuffer)
- `C-b i` Buffer menu (ibuffer)
- `C-b l` Buffer menu (ibuffer)
- `C-b {` Previous buffer (previous-buffer)
- `C-b }` Next buffer (next-buffer)
- `C-b <` Previous buffer (previous-buffer)
- `C-b >` Next buffer (next-buffer)
- `C-b <left>` Previous buffer (previous-buffer)
- `C-b <right>` Next buffer (next-buffer)
- `C-b n` Rename buffer (rename-buffer)
- `C-b s` Save buffer (save-buffer)
- `C-b C-s` Save buffer (save-buffer)
- `C-b w` Write buffer to file (write-file)
- `C-b d` Close buffer (kill-buffer)
- `C-b q` Close buffer (kill-buffer)

## Window commands

Prefix `C-w` are window manipulation commands.

- `C-w w` Switch window (other-window)
- `C-w C-w` Switch window (other-window)
- `C-w o` Switch window (other-window)
- `C-w <` Switch window (other-window)
- `C-w >` Switch window (other-window)
- `C-w <left>` Switch window (other-window)
- `C-w <right>` Switch window (other-window)
- `C-w d` Close window (delete-window)
- `C-w q` Close window (delete-window)
- `C-w |` Vertical split window (split-window-right)
- `C-w -` Horizontal Split window (split-window-below)

## Quick move

Prefix `C-q` is for quick movement.

- `C-q r` Set bookmark register (point-to-register)
- `C-q m` Set bookmark register (point-to-register)
- `C-q j` Jump to bookmark register (jump-to-register)
- `C-q q` Jump to top (beginning-of-buffer)
- `C-q C-q` Jump to top (beginning-of-buffer)
- `C-q g` Jump to top (beginning-of-buffer)
- `C-q G` Jump to end (end-of-buffer)
- `C-q u` Page up (scroll-down)
- `C-q v` Page down (scroll-up)
- `C-q C-u` Page up (scroll-down)
- `C-q C-v` Page down (scroll-up)
- `C-q [` Paragraph up (backward-paragraph)
- `C-q ]` Paragraph down (forward-paragraph)
- `C-q {` Paragraph up (backward-paragraph)
- `C-q }` Paragraph down (forward-paragraph)

## Colorschemes

Included colorschemes are:

* Walter in the Light
* Walter in the Dark
* Walter in Amber
* JBlow Moneygreen
* Tsoding Dark

Use `M-x load-theme` to change theme.
