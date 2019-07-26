# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
export PATH

# Git aliases
alias g='git'
alias gcm='git commit -m'
alias gco='git checkout
alias gl='git pull'
alias gp='git push'
alias gpom='git push origin master'
alias gd='git diff'
alias gb='git branch'
alias gba='git branch -a'
alias gf='git fetch'
alias gfa='git fetch -a'
alias gdel='git branch -d'

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file
