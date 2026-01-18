export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  docker
  docker-compose
  sudo
  zsh-autosuggestions
  zsh-syntax-highlighting
  z
  web-search
  jsontools
  colored-man-pages
  command-not-found
  extract
  history
)

source $ZSH/oh-my-zsh.sh

alias ..='cd ..'
alias ...='cd ../..'
alias ~='cd ~'
alias ll='ls -alF --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'

gr() {
  local pattern="$1"
  local dir="${2:-.}"
  grep -rni "$pattern" "$dir"
}

alias ga='git add'
alias gm='git commit -m "dev"'
alias gp='git push origin main'
alias gl='git pull origin main'
alias pl='git pull origin main'
alias gs='git status'

py() {
  if [ -f "$1.py" ]; then
    python3 "$1.py"
  else
    python3 "$@"
  fi
}

alias ports='netstat -tulanp'
alias myip='curl ifconfig.me'
alias matrix='cmatrix -b'
alias hack='Hollywood'
alias meteo='curl wttr.in/Paris'
alias speed='speedtest-cli'
