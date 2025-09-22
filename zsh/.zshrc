# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/seth/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# Customize Alias
alias ls='ls --color=auto'
alias ll='ls -al'
alias less='less -Q'
alias man='man -P "less -Q"'
alias grep='grep --color=auto'
alias g='git'
alias gc='g clone'
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

alias kc='kubie ctx'
alias kn='kubie ns'

alias ze='zellij'
alias ze_new='ze -s'
alias ze_ls='ze list-sessions'
alias ze_attach='ze attach'
alias ze_del='ze kill-session'


# nobeep
xset b off

# Customize Path
export PATH="/home/seth/.local/share/gem/ruby/3.4.0/bin:$PATH"
export PATH="/home/seth/.local/bin:$PATH"
export PATH="/home/seth/.volta/bin:$PATH"
export GOOGLE_CLOUD_PROJECT="seth-geimi"

#export NVM_DIR="$HOME/.config/nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Customize Script

#${HOME}/bin/switch_workspace_notify.sh 2>&1 | tee /tmp/switch_workspace_notify.log








