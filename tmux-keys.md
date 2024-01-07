# Tmux Keys
Tmux is a terminal multiplexer.

This is a list of keybinds that works with my setup.

The setup can be changed by editing the `tmux.conf` file.

## Quick Tmux explainer
1. Tmux has sessions you can open and save to use next time they run in the backgroud (cleared when device is restarted).
2. Inside these sessions you have windows, think of them as tabs in a browser or in a modern gui terminal multiplexer.
3. These windows then have panes that you can split and resize to have a shell insde of them.

## Prefix
To start any command you must press `Ctrl+b`. Also known as `C-b`.

In this document it is addressed as `prefix`.

## Terminal Commands
- `tmux`: start a session.
- `tmux a`: connect to last open session.
- `tmux a -t <target>`: connect to session named `<target>`.
- `tmux ls`: list current sessions
- `tmux new -s <name>`: connect to specific session named `<name>`.
- `tmux kill-session -t <target>`: mill session nammed `<target>`.

## Keybinds
- `C-<Arrowkeys>`: Ctrl+arrowkeys to move to diffrent panes.
- `C-<hjkl>`: Ctrl+h/j/k/l to move to diffrent panes, like vim movement.

### Prefixed
All of these commands start with `prefix`.
#### Pane
- `%`: creates a vertical split pane.
- `"`: creates a horizontal split pane.
- `<Arrowkeys>`: move to diffrent panes.
- `C-<Arrowkeys>`: Ctrl+arrowkeys, to change pane size in the direction of arrow keys.
- `C-A-<Arrowkeys>`: Ctrl+Alt+arrowkeys, to change pane size in larger increments.
- `A-<1-5>`: arrange panes in pre determined layouts.
- `q`: to give each pane a indexed number, and quickly switch by pressing the number denoted on the pane.
- `x`: close current pane.
#### Window
- `c`: creates a new window.
- `n`: next window.
- `p`: previous window.
- `,`: rename current window.
- `&`: kill whole window.
#### General
- `w`: List all sessions, windows and panes to jump around.
    - `x`: kill a session, window, or pane.
- `d`: detach from session to connect latter.
- `$`: rename current session.
