######################################################################################################################################################

# A L I A S E S

alias l='exa --tree --level=1'
alias L='exa --tree --level=1 --long --all'
alias f='fd'
alias rm-plugins='rm -rf .asdf .homebrew .oh-my-zsh .p10k.zsh .tool-versions .zsh/* .zshenv .zshrc'
alias apt-update='sudo apt update -y && sudo apt upgrade -y'
alias dist-update='sudo apt update -y && sudo apt full-upgrade -y'
alias dist-version='lsb_release -a'
alias brew-update='brew update && brew upgrade'
alias update='apt-update && dist-update && brew-update && asdf update'
alias turnoff='wsl.exe --shutdown'
alias wsl-update='wsl.exe --update'
alias kex-start='kex --sl -s'
alias kex-start-esm='kex --esm --ip -s'
alias kex-kill='kex kill'
gitdiff() {
	git diff --name-only --relative --diff-filter=d | xargs bat --diff
}
######################################################################################################################################################

# E N V I R O N M E N T - V A R I A B L E S

# H I S T O R Y

export HISTFILE=~/.zsh_history
export HISTSIZE=1000
export SAVEHIST=1000