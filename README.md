# Dotfiles Repository 

Dotfiles for use with GNU stow

## Dependencies

### External repos/downloads

- nordvpn (for SSH via meshnet)
- bitwarden
- tpm
- fd 
- MesloLGS nerd font
- LazyVim

```{shell}
sudo apt install stow zsh fzf lsd zoxoide openssh alacrity neovim ripgrep
chsh -s /use/bin/zsh user
git clone https://GitHub.com/mark-jeffrey/dotfiles ~/dotfiles
cd ~/dotfiles
stow *
```


