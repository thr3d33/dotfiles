## NUMBER #THR33
## -- SOURCE ADDITIONAL FILES -- ##
if [ -f $XDG_CONFIG_HOME/shell/zshalias ]; then
    source $XDG_CONFIG_HOME/shell/zshalias
else
    print "404: zshalias not found."
fi
#[ -f $XDG_CONFIG_HOME/shell/zshalias ] && source $XDG_CONFIG_HOME/shell/zshalias    # oneliner for sourcing alias file
# Use XDG dirs for completion and history files - XDG Arch Wiki
#[ -d $XDG_STATE_HOME/zsh ] || mkdir -p $XDG_STATE_HOME/zsh                          # Arch Wiki XDG zsh recommendation
#[ -d $XDG_CACHE_HOME/zsh ] || mkdir -p $XDG_CACHE_HOME/zsh                          # Arch Wiki XDG zsh recommendation
## -- AUTOLOAD & ZSH MODULES -- ##
autoload -U compinit colors zcalc
#compinit -d
compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION                              # Arch Wiki XDG zsh recommendation
colors
## -- OPTIONS -- ##
setopt appendhistory                                                                # Immediately append history instead of overwriting
setopt histignorealldups                                                            # If a new command is a duplicate, remove the older one
setopt autocd                                                                       # if only directory path is entered, cd there.
setopt inc_append_history                                                           # save commands are added to the history immediately, otherwise only when shell exits.
setopt histignorespace                                                              # Don't save commands that start with space
## -- ZSTYLE OPTS -- ##
zstyle ':completion:*' cache-path $XDG_CACHE_HOME/zsh/zcompcache                    # Arch Wiki XDG zsh recommendation
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'   # Case insensitive tab completion
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"                             # Colored completion (different colors for dirs/files/etc)
#zstyle ':completion:*' rehash true                                                 # automatically find new executables in path
zstyle ':completion:*' menu select                                                  # Highlight menu selection
# Speed up completions copied from Manjaro
#zstyle ':completion:*' accept-exact '*(N)'
#zstyle ':completion:*' use-cache on
#zstyle ':completion:*' cache-path ~/.zsh/cache
## -- HISTORY OPTS -- ##
HISTFILE=$XDG_STATE_HOME/zsh/history                                                # Arch Wiki XDG zsh recommendation
#HISTFILE=$XDG_CACHE_HOME/.zhistory                                                  # Moved to ~/.cache/ as per XDG
HISTSIZE=10000
SAVEHIST=10000
## -- EXPORT -- ##
export LS_OPTIONS='--color=auto'                                                    # export color options
## -- COLOR MAN PAGES -- ##
export LESS_TERMCAP_mb=$'\E[01;32m'
export LESS_TERMCAP_md=$'\E[01;32m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;47;34m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;36m'
export LESS=-R
## -- ZSH PLUGINS -- ##
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
## -- PROMPT SHIT -- ##
## -- EVAL -- ##
eval "$(dircolors -b)"                                          # ls color options
eval "$(starship init zsh)"                                     # Starship Prompt Init