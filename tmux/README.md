# tmux

[tmux](https://github.com/tmux/tmux/wiki) is my terminal multiplexer of choice.

## Plugins

- [tmux-plugins/tpm](https://github.com/tmux-plugins/tpm): The plugin manager
  for tmux, which allows you to easily install and manage plugins.
- [catppuccin/tmux](https://github.com/catppuccin/tmux): A color scheme for tmux
  that provides a pleasant and consistent look.
- [christoomey/vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator):
  A plugin that allows you to navigate between Vim and Tmux panes seamlessly.

## Keybindings

The configuration includes the following keybindings, while `<C-a>` is the
default prefix key:

- `r`: Reload the tmux configuration file.
- `|`: Split the current pane vertically.
- `-`: Split the current pane horizontally.
- `j`: Resize the current pane down.
- `k`: Resize the current pane up.
- `h`: Resize the current pane left.
- `l`: Resize the current pane right.
- `c`: Create a new window.
- `m`: Toggle the current pane's zoom state.
- `G`: Display a popup with lazygit.
- `P`: Display a popup with a new shell.
- `I`: Install plugins.
- `U`: Update plugins.
- `,`: Rename the current pane.
