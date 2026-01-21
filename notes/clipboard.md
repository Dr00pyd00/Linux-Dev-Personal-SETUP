
# Clipboard in Vim + Tmux

## Initial Problem
- Vim alone does not automatically copy to the system clipboard.
- In tmux, even if Vim has `+clipboard`, the text stayed in tmux’s internal buffer.
- Result: impossible to paste into a graphical editor or browser.

## Solution Implemented
1. In the `vimrc`:
```vim
set clipboard=unnamedplus
