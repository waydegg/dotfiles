# Dotfiles

## Install

**Requirements**
- `git`
- `stow`

**Steps**
1. Clone this repository
2. `cd` into the top level directory of the repository
3. Use `stow` to create symlinks
```
stow -t $HOME */    # Symlink everything
stow -t $HOME nvim  # Just create nvim symlinks
```

## Tmux

[TPM](https://github.com/tmux-plugins/tpm) (Tmux Plugin Manager) is required to display a prefix highlight in the status bar.

To install, clone the repository:

```
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm/tpm
```

Then once inside Tmux, press `prefix` + `I` to install all of the plugins.

## Brew

Formulae and Casks listed in `brew/Brewfile` can be installed with Homebrew's [bundle](https://docs.brew.sh/Manpage#bundle-subcommand) subcommand

## Reference

Here are some dotfiles I've taken inspiration from:

- [craftzdog/dotfiles-public](https://github.com/craftzdog/dotfiles-public)
- [nickjj/dotfiles](https://github.com/nickjj/dotfiles)
- [ChristianChiarulli/Machfiles](https://github.com/ChristianChiarulli/Machfiles)
- [ThePrimeagen/.dotfiles](https://github.com/ThePrimeagen/.dotfiles)
