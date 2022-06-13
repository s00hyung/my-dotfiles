#################### util ###############################################
alias ll="ls -l"
alias la="ls -a"
#########################################################################

#################### brew ###############################################
eval "$(/opt/homebrew/bin/brew shellenv)"
alias brew="env PATH=${PATH//$(pyenv root)\/shims:/} brew"
#########################################################################

#################### pyenv ##############################################
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
alias py="pyenv"
#########################################################################

#################### yt-dlp #############################################
alias yt="yt-dlp -F"
alias mp3="yt-dlp -x --audio-format mp3 --audio-quality 0"
alias mp4="yt-dlp -f 'bv[ext=mp4]+ba[ext=m4a]/b[ext=mp4] / bv*+ba/b'"
alias m4a="yt-dlp -x --audio-format m4a --audio-quality 0"
#########################################################################