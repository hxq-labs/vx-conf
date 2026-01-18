# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ~='cd ~'

# Listing
alias ll='ls -alF --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'

# Grep function
gr() {
  local pattern="$1"
  local dir="${2:-.}"
  grep -rni "$pattern" "$dir"
}

# Git shortcuts
alias ga='git add'
alias gm='git commit -m "dev"'
alias gp='git push origin main'
alias gl='git pull origin main'
alias pl='git pull origin main'
alias gs='git status'

# Python helper
py() {
  if [ -f "$1.py" ]; then
    python3 "$1.py"
  else
    python3 "$@"
  fi
}
