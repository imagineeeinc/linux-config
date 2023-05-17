# Keybinds Sheet
This is a sheet full of usefull lunarvim keybinds and commands. These commands add keybinds help you navigate better.
Both key binds and commands are put in the same file to simplify reading.
Few of these keys are specific to my configratuon, thus a braket is next to it to suggest the actual command/ keys.
If you would like you can cutomize it and anything else in the `config.lua`
## Leader
is a key to initlize some commands, in this config is the 'spacebar', you can customise it to be '/' if you like

## Cursor
- i: insert text mode
- v: selection mode
- o: insert new line bellow
- shift+o: insert new line above
- a: enter after the cursor
- shift+a: go to end of the line
- Arrowkeys: move around

## Funtions
- shift+x: close file
- ctrl+s (:w/ <leader>w): save
- shift+x (:q/ <leader>q): close current buffer
- :qa : close all buffer (quit)

## Terminal
- ctrl+t: terminal (popup)
- alt+1: bottom terminal
- alt+2: side terminal
- alt+3: popup terminal

## Manipulations
- ctrl+c (y): copy
- ctrl+x (x): cut
- ctrl+shift+v (p): paste
- shift+p: paste before the cursor
- shift+z ("_d"): delete (do not put in clipboard)
- tab (<): indent
- shift+tab (>): unindent

## Tabs
- shift+h (<leader>bb): prev tab
- shift+h (<leader>bn): next tab
- <leader>c: close tab
- <leader>bj: jump to tab
- ctrl+n (:tabnew <filename>): new file in a new tab

## Window (Buffer)
- ctrl+left/right: increase/decrese size horizontly
- ctrl+up/down: increase/decrese size verticaly

## Git
- <leader>gg: open up git menu
refer to [lazygit plugin](https://github.com/kdheepak/lazygit.nvim) for usage
