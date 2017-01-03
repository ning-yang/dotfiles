# Alias Editing
alias ae='vim ~/dotfiles/zsh/common.zsh'
alias ar='source ~/.zshrc'

# update repository
alias up='pushd ~/dotfiles;git pull;popd'

# vimrc editing
alias ve='vim ~/.vimrc'

# clear
alias cl='clear'

# overwrite sgrep in common zsh
sgrep='grep -R -n -H -C 5 --exclude-dir={.git,.svn,CVS,.hg} '
