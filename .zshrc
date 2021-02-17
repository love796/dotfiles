ZSH_CUSTOM="$HOME/.config/zsh"

setopt auto_cd
setopt correct_all
setopt prompt_subst

# Plugins
source "$ZSH_CUSTOM/plugins/git/git.zsh"
source "$ZSH_CUSTOM/plugins/git/git.plugin.zsh"
source "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "$ZSH_CUSTOM/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh"

# Theme
source "$ZSH_CUSTOM/themes/theme.zsh-theme"

# PATH Exports
export PATH="$HOME/myScripts:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# All alias in custom alias.zsh
source "$ZSH_CUSTOM/alias.zsh"

# google search
function google(){
	url="https://www.google.com/search?q=${(j:+:)@[1,-1]}"
	google-chrome "$url"
}

# Extra code
neofetch
