# Use Neovim as "preferred editor"
export VISUAL=nvim 
# Use Neovim instead of Vim or Vi 
alias vim=nvim 
alias vi=nvim

# Use a Shell Alias to Prevent Accidental Nesting 
# of Neovim instances
if [ -n "$NVIM" ]; then 
	if [ -x "$(command -v nvr)" ]; then 
		alias nvim=nvr  
	else  
		alias nvim='echo "No nesting!"'
	fi
fi

# For zshrc
autoload -U edit-command-line
zle -N edit-command-line 
bindkey '^x^e' edit-command-line
