# ~/.bashrc

[[ $- != *i* ]] && return

# Aliases
#alias ls='ls --color=auto'
#alias grep='grep --color=auto'
alias ls='eza --icons --color=always'
alias ll='eza -l --icons --color=always'
alias la='eza -la --icons --color=always'
alias cat='bat'

# ------------------------------
# Catppuccin Mocha Prompt
# ------------------------------

RESET='\[\e[0m\]'

# Mocha palette (truecolor)
ARCH_BG='\[\e[48;2;137;180;250m\]' # blue (#89b4fa)
ARCH_FG='\[\e[38;2;30;30;46m\]'    # base text (#1e1e2e)

BAR_BG='\[\e[48;2;203;166;247m\]' # mauve bg (#cba6f7)
BAR_FG='\[\e[38;2;30;30;46m\]'    # base text

PATH_FG='\[\e[38;2;186;194;222m\]' # subtext1 (#bac2de)

PROMPT_GREEN='\[\e[38;2;166;227;161m\]' # green (#a6e3a1)

# Git branch name (plain text)
git_branch() {
  git rev-parse --is-inside-work-tree &>/dev/null || return
  git symbolic-ref --short HEAD 2>/dev/null || git rev-parse --short HEAD 2>/dev/null
}

# Compressed path for second line
pretty_path() {
  local full="${PWD/#$HOME/~}"
  local parts=()
  local p

  IFS='/' read -r -a parts <<<"$full"

  local cleaned=()
  for p in "${parts[@]}"; do
    [[ -z "$p" ]] && continue
    cleaned+=("$p")
  done

  local n=${#cleaned[@]}
  [[ $n -eq 0 ]] && {
    echo -n "[ / ]"
    return
  }

  local first="${cleaned[0]}"
  local last="${cleaned[n - 1]}"

  # Convert "~" → "home"
  if [[ "$first" == "~" ]]; then
    first="home"
  fi

  # 1 segment only
  if ((n == 1)); then
    echo -n "[ ${first} ]"
    return
  fi

  # 2 segments: just first → last
  if ((n == 2)); then
    echo -n "[ ${first} »  ${last} ]"
    return
  fi

  # >2 segments: compress middle to "…"
  echo -n "[ ${first} »  … »  ${last} ]"
}

# Build PS1
PS1=""

# Block 1 — Arch logo only
PS1+="${ARCH_BG}${ARCH_FG}  ${RESET}"

# Block 2 — user@host
PS1+="${BAR_BG}${BAR_FG} \u@\h ${RESET} "

# Block 3 — current directory name
PS1+="${BAR_BG}${BAR_FG} \W ${RESET} "

# Block 4 — git branch (if in repo)
PS1+="\$(git_branch >/dev/null 2>&1 && echo \"${BAR_BG}${BAR_FG}  \$(git_branch) ${RESET} \")"

# Line 2 — compressed path
PS1+="\n${PATH_FG}\$(pretty_path)${RESET} "

# Line 3 — curved arrow prompt, with space after
PS1+="\n${PROMPT_GREEN}⮩ ${RESET} "

# ------------------------------
# History
# ------------------------------
shopt -s histappend
shopt -s cmdhist
shopt -s lithist

HISTCONTROL=ignoreboth
HISTSIZE=500000
HISTFILESIZE=500000
HISTTIMEFORMAT="%F %T  "
HISTIGNORE="ls:bg:fg:history:clear:cd:pwd:exit"

# Share history across terminals
PROMPT_COMMAND='printf "\n"; history -a'

# ------------------------------
# Arrow key prefix-search history
# (type something, press ↑ to search only matching commands)
# ------------------------------
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\e[OA": history-search-backward'
bind '"\e[OB": history-search-forward'

# ------------------------------
# Bash Completion
# ------------------------------
if [[ -f /usr/share/bash-completion/bash_completion ]]; then
  . /usr/share/bash-completion/bash_completion
fi

# ------------------------------
# Optional: Blesh
# ------------------------------
# [[ $- == *i* ]] && source /usr/share/blesh/ble.sh
