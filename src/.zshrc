#############################################################################################################################################################################

# F I X - W I N D O W S - L I N E - E N D I N G S

git config --global core.autocrlf false

#############################################################################################################################################################################

# O H - M Y - Z S H

[[ ! -f $HOME/.oh-my-zsh/oh-my-zsh.sh ]] && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
[[ ! -f $HOME/.oh-my-zsh/oh-my-zsh.sh ]] || export ZSH=$HOME/.oh-my-zsh
[[ ! -f $HOME/.oh-my-zsh/oh-my-zsh.sh ]] || export export ZSH_THEME="powerlevel10k/powerlevel10k"
[[ ! -f $HOME/.oh-my-zsh/oh-my-zsh.sh ]] || source $ZSH/oh-my-zsh.sh
[[ ! -f $HOME/.oh-my-zsh/oh-my-zsh.sh ]] || plugins=(copypath copyfile copybuffer dirhistory history zsh-interactive-cd)

#############################################################################################################################################################################

# P 1 0 K

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[[ ! -f $HOME/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme ]] && git clone https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/custom/themes/powerlevel10k/
[[ ! -f $HOME/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme ]] || source $HOME/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f $HOME/.p10k.zsh ]] || source $HOME/.p10k.zsh

#############################################################################################################################################################################

# Z S H - U T I L S

[[ ! -f $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh ]] && git clone https://github.com/zsh-users/zsh-autosuggestions.git $HOME/.zsh/zsh-autosuggestions/
[[ ! -f $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh ]] || source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

[[ ! -f $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.zsh/zsh-syntax-highlighting/
[[ ! -f $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] || source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#############################################################################################################################################################################

# A S D f

[[ ! -f $HOME/.asdf/asdf.sh ]] && git clone https://github.com/asdf-vm/asdf.git $HOME/.asdf/
[[ ! -f $HOME/.asdf/asdf.sh ]] || source $HOME/.asdf/asdf.sh

#############################################################################################################################################################################

# H O M E B R E W

[[ ! -f $HOME/.homebrew/bin/brew ]] && git clone https://github.com/Homebrew/brew.git $HOME/.homebrew/
[[ ! -f $HOME/.homebrew/bin/brew ]] || export PATH=$HOME/.homebrew/bin:$PATH
[[ ! -f $HOME/.homebrew/bin/brew ]] || export HOMEBREW_GIT_PATH=$(which git)
[[ ! -f $HOME/.homebrew/bin/bat ]] && brew update && brew upgrade && brew install bat
[[ ! -f $HOME/.homebrew/bin/exa ]] && brew update && brew upgrade && brew install exa
[[ ! -f $HOME/.homebrew/bin/fd ]] && brew update && brew upgrade && brew install fd
[[ ! -f $HOME/.homebrew/bin/fzf ]] && brew update && brew upgrade && brew install fzf
[[ ! -f $HOME/.homebrew/bin/jq ]] && brew update && brew upgrade && brew install jq
[[ ! -f $HOME/.homebrew/bin/micro ]] && brew update && brew upgrade && brew install micro
[[ ! -f $HOME/.homebrew/bin/rg ]] && brew update && brew upgrade && brew install ripgrep

#############################################################################################################################################################################
