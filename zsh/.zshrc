# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=2000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
#source ~/powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export TERM=xterm-256color

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Customize alias
alias ls='ls --color=auto'
alias ll='ls -al'
alias less='less -Q'
alias man='man -P "less -Q"'
alias grep='grep --color=auto'
alias g='git'
alias ga='g add .'
alias gad='g add'
alias gco='g checkout'
alias gcob='g checkout -b'
alias gb='g branch'
alias gba='g branch -a'
alias gd='g diff'
alias gf='g fetch'
alias gp='g pull'
alias gpr='g pull --rebase'
alias gpo='g push -u origin'
alias gcm='g commit -m'
alias gss='g stash save'
alias gsp='g stash pop'
alias gra='g rebase --abort'
alias grc='g rebase --continue'
alias grh='g reset HEAD^'
alias gst='g status'
alias lo='g log --pretty=oneline --graph'
alias los='g show'
alias gm='g merge'
alias gcfd='g clean -fd'
alias gcx='g checkout .'
alias k='kubectl'
alias ssh='TERM=xterm-256color /usr/bin/ssh'
alias v='nvim'
alias lg='lazygit'

alias ksc='kubectx'
alias ksn='kubens'

# zellij
alias ze='zellij'
alias ze_ls='ze list-sessions'
alias ze_new='ze -s'
alias ze_attach='ze attach'
alias ze_del_all='ze delete-all-sessions'
alias ze_del='ze delete-session'

# nvm
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
