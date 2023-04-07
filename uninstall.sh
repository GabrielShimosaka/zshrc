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

remove_all() {
	rm -rf $HOME/.asdf/
	rm -rf $HOME/.cache/Homebrew/
	rm -rf $HOME/.homebrew/
	rm -rf $HOME/.oh-my-zsh/
	rm -rf $HOME/.p10k.zsh/
	rm -rf $HOME/.tool-versions/
	rm -rf $HOME/.zsh/
	rm -rf $HOME/.zshenv
	rm -rf $HOME/.zshrc
	if [[ -f  "$HOME/.zsh*" ]]; then
		rm -f $HOME/.zsh*
	fi
	if [[ -f "$HOME/.zcomp*" ]]; then
		rm -rf $HOME/.zcomp*
	fi
}

change_back() {
	if [[ -d "$HOME/.zsh-old" ]]; then
		echo 'Moving old files to $HOME directory'
		mv_if_exists $HOME/.zsh-old/.zshrc $HOME
		mv_if_exists $HOME/.zsh-old/.zshenv $HOME
		mv_if_exists $HOME/.zsh-old/.p10k.zsh $HOME
		mv_if_exists $HOME/.zsh-old/.oh-my-zsh $HOME
		mv_if_exists $HOME/.zsh-old/.asdf $HOME
		mv_if_exists $HOME/.zsh-old/.homebrew $HOME
		mv_if_exists $HOME/.zsh-old/.tool-versions $HOME
		[[ ! -f $HOME/.zshrc ]] || source $HOME/.zshrc
		[[ ! -f $HOME/.zshenv ]] || source $HOME/.zshenv
		rm -rf $HOME/.zsh-old
	fi
}

main(){
	remove_all
	change_back
	exec zsh -l
}

main "$@"
