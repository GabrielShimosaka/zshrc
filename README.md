# zshrc
Repository for my zsh customizations 

## Prerequisites

* [Curl](https://everything.curl.dev/get)
* [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
* [Zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)

## Basic Installation

Run 
```
zsh -c "$(curl -fsSL https://raw.githubusercontent.com/GabrielShimosaka/zshrc/main/install.sh)"
```

## Customizations

To customize the p10k theme, run

```
p10k configure
```

Or if you want to use another oh-my-zsh theme, set on *ZSH_THEME* env variable, in the $HOME/.zshrc file.
You can also add or remove the plugins in the *plugins=()* section in the $HOME/.zshrc file.

For futher customizations, check out the [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) and [p10k](https://github.com/romkatv/powerlevel10k) documentation.
You can also edit the .zsh files any way you see fit. Checkout the [zsh page](https://zsh.sourceforge.io/Intro/intro_3.html) for zsh documentation.

## Uninstalling

```
zsh -c "$(curl -fsSL https://raw.githubusercontent.com/GabrielShimosaka/zshrc/main/uninstall.sh)"
```
