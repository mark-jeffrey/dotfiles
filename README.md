# Dotfiles Repository 

Dotfiles for use with GNU stow

## Initial setup

```{shell}
sudo apt install stow zsh fzf lsd zoxide alacritty neovim ripgrep fd-find wireguard wireguard-tools rclone
chsh -s /usr/bin/zsh <user>
git clone https://GitHub.com/mark-jeffrey/dotfiles ~/dotfiles
cd ~/dotfiles
stow *
```

## External repos/downloads

- [bitwarden](https://bitwarden.com/download/)
- [tpm](https://github.com/tmux-plugins/tpm)
- [MesloLGS nerd font](https://www.nerdfonts.com/font-downloads)

```{shell}
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Meslo.zip
unzip Meslo.zip -d ~/.fonts
fc-cache -fv
```
- [LazyVim](https://www.lazyvim.org/installation)
- [zinit](https://github.com/zdharma-continuum/zinit?tab=readme-ov-file#install)

## Other new system tasks

- [VsCode] +/- [RStudio] and set keybinds
_ [miniconda], [R] and [Python] environments
- [zotero](https://github.com/retorquere/zotero-deb)
- [Firefox](https://www.mozilla.org/en-GB/firefox/new/)
- Install and configure [syncthing] and [rclone] for backups
- [Wireguard]
- Configure [Remote desktop]
- Configure [Wake on LAN]
- [Authenticator]
- [topydo] Todo.txt manager

## Mount OneDrive on startup

```{shell}
sudo apt install rclone
rclone config
mkdir ~/onedrive
```

Follow prompts to add onedrive remote and authenticate, detailed description [here](https://itsfoss.com/use-onedrive-linux-rclone/).
Open Gnome Startup Applications and add and entry with the below command to mount on startup.

```{shell}
sh -c "rclone --vfs-cache-mode writes mount onedrive: ~/onedrive"
```
