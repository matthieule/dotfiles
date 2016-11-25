echo -e "\n\nInstalling homebrew packages..."
echo "=============================="

# cli tools
brew install wget

# development tools
brew install git
brew install macvim --override-system-vim
# To solde some weird tmux/apple stuff:
brew install reattach-to-user-namespace
brew install tmux
brew install zsh
brew install markdown
brew install diff-so-fancy
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions
brew install tree

# install neovim
brew install neovim/neovim/neovim

exit 0
