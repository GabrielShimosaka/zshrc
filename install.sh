#!/bin/sh

mv_if_exists() {
	if [[ -f $1 ]]; then
		echo 'Moving '$1' to '$2
		mv $1 $2
	fi
	if [[ -d $1 ]]; then
		echo 'Moving '$1' to '$2
		mv $1 $2
	fi
}

save_current_zsh() {
	echo 'Saving current zsh configurations'
	if [[ -f $HOME/.zshrc || -f $HOME/.zshenv || -f $HOME/.p10k.zsh || -f $HOME/.oh-my-zsh || -f $HOME/.asdf || -f $HOME/.homebrew || -f $HOME/.tool-versions ]]; then
		mkdir $HOME/.zsh-old
		mv_if_exists $HOME/.zshrc $HOME/.zsh-old/
		mv_if_exists $HOME/.zshenv $HOME/.zsh-old/
		mv_if_exists $HOME/.p10k.zsh $HOME/.zsh-old/
		mv_if_exists $HOME/.oh-my-zsh $HOME/.zsh-old/
		mv_if_exists $HOME/.asdf $HOME/.zsh-old/
		mv_if_exists $HOME/.homebrew $HOME/.zsh-old/
		mv_if_exists $HOME/.tool-versions $HOME/.zsh-old/
	fi
}

download_source() {
	echo 'Downloading .zshenv and .zshrc files'
	rm -rf tmp
	git clone https://github.com/GabrielShimosaka/zshrc.git tmp  >> /dev/null
	mv tmp/src/.* $HOME/
	rm -rf tmp
	# Kali customization
	if [[ $(lsb_release -i | awk '{print $3}') == 'Kali' ]]; then
		sudo apt update && sudo apt install -y kali-win-kex && sudo apt install -y gcc
	fi
}

apply(){
	source $HOME/.p10k.zsh
	source $HOME/.zshenv
	source $HOME/.zshrc
	[[ -f $HOME/.zshrc.pre-oh-my-zsh ]] && mv $HOME/.zshrc.pre-oh-my-zsh $HOME/.zshrc
	source $HOME/.zshrc
	exec zsh -l
}

main() {
	echo 'Starting instalation'
	save_current_zsh
	download_source
	apply
}

main "$@"
