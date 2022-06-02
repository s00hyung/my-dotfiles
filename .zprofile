#################### brew ###############################################
eval "$(/opt/homebrew/bin/brew shellenv)"
alias brew="env PATH=${PATH//$(pyenv root)\/shims:/} brew"
#########################################################################

#################### pyenv ##############################################
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
#########################################################################

#################### yt-dlp #############################################
alias yt-list="yt-dlp -F"
alias yt-mp3="yt-dlp -x --audio-format mp3 --audio-quality 0"
alias yt-mp4="yt-dlp -f 'bv[ext=mp4]+ba[ext=m4a]/b[ext=mp4] / bv*+ba/b'"
#########################################################################