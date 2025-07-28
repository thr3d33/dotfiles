## NUMBER #ONE
## -- PATH -- ##
export PATH=$HOME/.local/bin:/usr/local/bin:$PATH
## -- DEFAULT APP VARS -- ##
export EDITOR="nvim"                                                      # Default editor
#export TERM="foot"                                                        # Issues with SSH
export TERM="alacritty"                                                   # Default terminal
#export TERMINAL="foot"                                                   # Issues with SSH
export TERMINAL="alacritty"                                               # Default terminal
export BROWSER="brave-browser"                                            # Default browser
#export BROWSER="librewolf"                                                #
## -- XDG USER DIRS -- ##
export XDG_CONFIG_HOME=$HOME/.config                                      # Where user-specific configurations should be written (analogous to /etc).
export XDG_CACHE_HOME=$HOME/.cache                                        # Where user-specific non-essential (cached) data should be written (analogous to /var/cache).
export XDG_DATA_HOME=$HOME/.local/share                                   # Where user-specific data files should be written (analogous to /usr/share).
export XDG_STATE_HOME=$HOME/.local/state                                  # Where user-specific state files should be written (analogous to /var/lib).
#export GIT_CONFIG=XDG_CONFIG_HOME/git/config                              # 
#export GIT_IGNORE=XDG_CONFIG_HOME/git/ignore                              #
#export GIT_ATTR=XDG_CONFIG_HOME/git/attributes                            #
#export GIT_CREDS=XDG_CONFIG_HOME/git/credentials                          #     
#export GIT_GITK=XDG_CONFIG_HOME/git/gitk                                  #
## -- ZSH BABY!! -- ##
export ZDOTDIR=$XDG_CONFIG_HOME/zsh                                       # ZSH home
#export ZSH="$ZDOTDIR/ohmyzsh"                                             # ohmyzsh installation.
## -- XDG VARIABLES -- ##
### --- Development Environment Variables ---- ###
#export APP_HOME=$HOME/Applications                                        # Application/applications Dirs for AppImages and desktop entries
#export DESKTOP_ENTRY_LOC=$XDG_DATA_HOME/applications                      # Application/applications Dirs for AppImages and desktop entries
export PICS_HOME=$HOME/Pictures                                           # Pictures Dir
export DESIGN_HOME=$HOME/Design                                           # Design Dir
export DEV_HOME=$HOME/Development                                         # Development Dir
#export COMPOSE_HOME=$DEV_HOME/compose                                     # Docker Compose Home
#export COMPOSE_PRIV=$COMPOSE_HOME/private                                 #
#export COMPOSE_PUBL=$COMPOSE_HOME/public                                  #
#export COMPOSE_DATA=$COMPOSE_HOME/data                                    #
#export COMPOSE_ENV=$COMPOSE_HOME/env                                      #
export GIT_DEV_HOME=$DEV_HOME/git                                         # GIT Home for cloned repositories
export GIT_DEV_HOME_PRIV=$GIT_DEV_HOME/private                            # Private Git dir (Personal Repos)
export GIT_DEV_HOME_PUBL=$GIT_DEV_HOME/public                             # Public Git dir (Forked and Cloned Repos)
### --- Dev Variables ---- ###
export PYTHON_HISTORY=$XDG_STATE_HOME/python_history                      # Python History
export PYTHONPYCACHEPREFIX=$XDG_CACHE_HOME/python                         # Python cache
export PYTHONUSERBASE=$XDG_DATA_HOME/python                               # Python userbase
## -- GEMS -- ##
export GEM_HOME="$(gem env user_gemhome)"                                 # GEM home
export PATH=$PATH:$GEM_HOME/bin                                           # Adding gems to PATH
export BUNDLE_USER_CACHE=$XDG_CACHE_HOME/bundle                           # Ruby Bundler cache
export BUNDLE_USER_CONFIG=$XDG_CONFIG_HOME/bundle/config                  # Ruby Bundler configuration dir
export BUNDLE_USER_PLUGIN=$XDG_DATA_HOME/bundle                           # Ruby Bundler data files
## -- Jupyter, Gradle and GO -- ##
#export JUPYTER_CONFIG_DIR=$XDG_CONFIG_HOME/jupyter                        # Jupyter configuration home
#export GRADLE_USER_HOME=$XDG_DATA_HOME/gradle                             # Gradle
export GOPATH=$XDG_DATA_HOME/go                                           # GO 
export GOMODCACHE=$XDG_CACHE_HOME/go/mod                                  # GO Cache
### --- Sys Environment Variables ---- ###
export STARSHIP_CONFIG=$XDG_CONFIG_HOME/starship.toml                     # Starship configuration
export STARSHIP_CACHE=$XDG_CACHE_HOME/starship                            # Starship configuration cache
export W3M_DIR=$XDG_STATE_HOME/w3m                                        # w3m configuration directory
export ALACRITTY_CONFIG=$XDG_CONFIG_HOME/alacritty                        # Alacritty configuration home
export SWAY_HOME=$XDG_CONFIG_HOME/sway/                                   # Sway configuration files
export TMUX_HOME=$XDG_CONFIG_HOME/tmux
## -- NX (NoMachine) -- ##  
export NX_INSTALL_PREFIX=/opt                                             # Exporting the Installation directory for NX
export NX_HOME=/opt/NX                                                    # Adding NX_HOME.
export PATH=$PATH:$NX_HOME/bin                                            # Adding NX to PATH.