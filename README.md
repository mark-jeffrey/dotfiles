# Dotfiles Repository 

Dotfiles for use with GNU stow

## Initial setup

```{shell}
sudo apt install stow zsh fzf lsd zoxoide openssh alacrity neovim ripgrep fd-find
chsh -s /usr/bin/zsh <user>
git clone https://GitHub.com/mark-jeffrey/dotfiles ~/dotfiles
cd ~/dotfiles
stow *
```

## External repos/downloads

- [nordvpn](https://support.nordvpn.com/hc/en-us/articles/20196094470929-Installing-NordVPN-on-Linux-distributions) (for SSH via meshnet)
- [bitwarden](https://bitwarden.com/download/)
- [tpm](https://github.com/tmux-plugins/tpm)
- [MesloLGS nerd font](https://www.nerdfonts.com/font-downloads)
- [LazyVim](https://www.lazyvim.org/installation)
