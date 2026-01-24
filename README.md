walter-emacs
============

WARNING: These are my personal `emacs` settings. Some keys have been globally
redefined and may not work well for you.

The config is nothing complicated, and should be relatively easy to comprehened.
See `init.el`.

These settings include `better-defaults`
 - `C-s` searches with regexp

* save without asking
* quit without asking
* CUA mode: cut/copy/paste via mark + `C-x`, `C-c`, `C-v`

To see all keybindings, press `C-h b`

* `C-x` is left untouched
* `C-g` is still quit/cancel
* `C-b` is a new prefix for handling buffers
* `C-w` is changed to a prefix for handling windows
* `C-k` is changed to a prefix for WordStar-like commands
* `C-d` now kills to end of line
* `C-y` kill whole line
* `C-j` goto line
* `C-o` open file
* `C-r` string replace
* `C-b s` or `C-x C-s` save buffer
* `C-k s` or `C-x s` save all buffers
* `C-k q` quit without asking

Included colorschemes:
 - Walter in the Light
 - Walter in the Dark
 - Walter in Amber
 - JBlow Moneygreen
 - Tsoding Dark
