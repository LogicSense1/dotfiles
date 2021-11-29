#### FIG ENV VARIABLES ####
# Please make sure this block is at the start of this file.
[ -s ~/.fig/shell/pre.sh ] && source ~/.fig/shell/pre.sh
#### END FIG ENV VARIABLES ####
export https_proxy=http://127.0.0.1:7890
export PATH=/Applications/CMake.app/Contents/bin:$HOME/.local/bin:$PATH
export FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"


source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
setopt auto_cd

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

zinit snippet OMZ::lib/key-bindings.zsh

zinit wait lucid light-mode for \
   atload"starship_precmd" \
      OMZ::lib/completion.zsh \
      OMZ::lib/history.zsh \
      OMZ::lib/directories.zsh \
      OMZ::plugins/dirhistory/dirhistory.plugin.zsh \
      esc/conda-zsh-completion \

zinit wait lucid light-mode for \
  atinit"zicompinit; zicdreplay" \
      VinKK1998/fast-syntax-highlighting \
  atload"_zsh_autosuggest_start" \
      zsh-users/zsh-autosuggestions \
  blockf atpull'zinit creinstall -q .' \
      zsh-users/zsh-completions

alias ls="exa"
alias l='exa -al'
alias ll='exa -l'
alias cat='bat'
alias la='exa -al'
alias cls='clear'
alias hpc='ssh hpc'
alias vim='lvim'
alias ps='procs'
alias find='fd'
alias du='dust'
alias df='duf -hide-fs nullfs -only local'

timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/wentianxia/.local/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/wentianxia/.local/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/wentianxia/.local/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/wentianxia/.local/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
eval "$(starship init zsh)"

#### FIG ENV VARIABLES ####
# Please make sure this block is at the end of this file.
[ -s ~/.fig/fig.sh ] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####
export ITERM2_SQUELCH_MARK=1
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

