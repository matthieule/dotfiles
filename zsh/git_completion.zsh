# this is specific to the location of the current version of git, installed by homebrew

fpath=(~/Documents/repos/dotfiles/git $fpath)
autoload -U compinit && compinit
rm -f ~/.zcompdump; compinit

