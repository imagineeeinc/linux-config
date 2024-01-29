# Lunar Vim Keys
Lunar vim is a dramework for neovim which is a terminal text editor.

This is a list full of lunarvim keybinds and commands.
Few of these keys are specific to my configratuon, thus a braket is next to it to suggest the actual command/ keys.
If you would like you can cutomize it and anything else in the `config.lua`
## Leader
Leader is a key to initlize some commands, in this config is the 'spacebar', you can customise it to be '/' if you would like.

In this document it is addressed as `<leader>`

Also a neat feature about lunar vim is pressing the `<leader>` will opena pane after 1 second which shows all the commands mapped to it (with descriptions),
pressing one will run it or if it has a sub command it will show more commands. Try doing `<leader>-g` to show all the git commands.

## Cursor
- `i`: insert text mode.
- `I`: Insert at start of line.
- `v`: selection mode (visual mode).
- `Ctrl+Alt+up/down (ctrl+v)`: Block selection mode, follow it by a `I` type your change and `esc` to do multiline editing.
- `o`: insert new line bellow.
- `O`: insert new line above.
- `a`: enter after the cursor.
- `A`: go to end of the line.
- `Arrowkeys`: move around.

## Funtions
- `ctrl+s (:w/ <leader>w)`: save.
- `shift+x (:q/ <leader>q)`: close current buffer.
- `:qa` : close all buffer (quit).

## Terminal
- `ctrl+t`: terminal (popup).
- `alt+1`: bottom terminal.
- `alt+2`: side terminal.
- `alt+3`: popup terminal.

## Manipulations
- `ctrl+c (y)`: copy (visual mode).
- `ctrl+x (x)`: cut (visual mode).
- `ctrl+shift+v (p)`: paste.
- `shift+p`: paste before the cursor.
- `d`: delete.
- `shift+z ("_d)`: delete (do not put in clipboard) (visual mode).
- `tab (>)`: indent (visual mode).
- `shift+tab (<)`: unindent (visual mode).

## Tabs
- `shift+h (<leader>bb)`: prev tab.
- `shift+h (<leader>bn)`: next tab.
- `<leader>c`: close tab.
- `<leader>bj`: jump to tab.
- `ctrl+n (:tabnew <filename>)`: new file in a new tab.

## Window (Buffer)
- `ctrl+left/right`: increase/decrese size horizontly.
- `ctrl+up/down`: increase/decrese size verticaly.

## Git
- `<leader>gg`: open up git menu
refer to [lazygit plugin](https://github.com/kdheepak/lazygit.nvim) for usage.
