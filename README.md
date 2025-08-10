# My dot files for devcontainers

This dotfiles repository requires some features configured in the
`devcontainer.json` file to work properly:

```json
"features": {
  "ghcr.io/devcontainers/features/node:1": {}
  "ghcr.io/devcontainers-extra/features/fd:1": {},
  "ghcr.io/devcontainers-extra/features/fzf:1": {},
  "ghcr.io/devcontainers-extra/features/ripgrep:1": {},
  "ghcr.io/duduribeiro/devcontainer-features/neovim:1": {},
  "ghcr.io/duduribeiro/devcontainer-features/tmux:1": {},
  "ghcr.io/georgofenbeck/features/lazygit-linuxbinary:1": {},
}
```

## Documentation

For detailed documentation refer to the individual README files in their config
directories:

- [nvim](nvim/README.md)
- [tmux](tmux/README.md)

## Troubleshooting

You may experience an issue with lazy-lua showing no or just a few files. This
is a known issue on macOS and can be fixed by running the following commands in
the DevContainer terminal:

```bash
sudo rm /usr/local.bin/fd
sudo rm /usr/local.bin/rg
sudo apt update
sudo apt install fd-find ripgrep
```

## References

- [typecraft - The Modern Programmer](https://typecraft.dev/) A great learning
  resource for NeoVim, Tmux, and more.
- [typecraft](https://www.youtube.com/@typecraft_dev) YouTube channel
- [DevOps Toolbox](https://www.youtube.com/@devopstoolbox) YouTube channel
- [Coding with Sphere](https://www.youtube.com/@codingwithsphere) YouTube
  channel
- [Josean Martinez](https://www.youtube.com/@joseanmartinez) YouTube channel
- [Mischa van den Burg](https://www.youtube.com/@mischavandenburg) YouTube
  channel
- [TJ DeVries](https://www.youtube.com/@teej_dv) YouTube channel
- [Sebastian Daschner](https://www.youtube.com/@SebastianDaschnerIT) YouTube
  channel
- [Marco Peluso](https://www.youtube.com/@marco_peluso) YouTube channel
- [The Primeagen](https://www.youtube.com/@ThePrimeagen) YouTube channel
