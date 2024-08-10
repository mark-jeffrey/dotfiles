# Dotfiles Repository 

Dotfiles for use with GNU stow

## Initial setup

```{shell}
sudo apt install stow zsh fzf lsd zoxoide openssh alacrity neovim ripgrep fd-find wireguard wireguard-tools rclone
chsh -s /usr/bin/zsh <user>
git clone https://GitHub.com/mark-jeffrey/dotfiles ~/dotfiles
cd ~/dotfiles
stow *
```

## External repos/downloads

- [bitwarden](https://bitwarden.com/download/)
- [tpm](https://github.com/tmux-plugins/tpm)
- [MesloLGS nerd font](https://www.nerdfonts.com/font-downloads)
- [LazyVim](https://www.lazyvim.org/installation)

## Other new system tasks

- [VsCode] +/- [RStudio] and set keybinds
_ [miniconda], [R] and [Python] environments
- [zotero]
- [Firefox]
_ [syncthing] and [rclone] for backups
- [Wireguard]
- [Remote desktop]
_ [Wake on LAN]
- [Authenticator]