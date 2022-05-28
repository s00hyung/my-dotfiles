#################### brew ########################
eval "$(/opt/homebrew/bin/brew shellenv)"
alias brew="env PATH=${PATH//$(pyenv root)\/shims:/} brew"
##################################################

#################### pyenv ##########################
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
#####################################################