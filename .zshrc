export GITHUB_USERNAME=wgonipro
export HOMEBREW_GITHUB_API_TOKEN=$(cat ~/.secret/gh)
export GH_TOKEN=$HOMEBREW_GITHUB_API_TOKEN
export GITHUB_TOKEN=$GH_TOKEN
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export GO_PKG_NAME="go@1.17"
export GOPATH="$HOME/go"
export GOROOT="$(brew --prefix ${GO_PKG_NAME})/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
export PATH="/Users/williamgoniprow/.rbenv/shims:${PATH}"
export PATH="/usr/local/opt/nodejs:${PATH}"
export PATH="/Users/williamgoniprow/Documents/goforward-repos/infrastructure/scripts:${PATH}" # If stuff is broken - likely here
export INFRA_PATH="/Users/williamgoniprow/Documents/goforward-repos/infrastructure" # Or here
export RBENV_SHELL=zsh
export REPOS="/Users/williamgoniprow/Documents/goforward-repos"
export GOREPOS="${HOME}/go/src/github.com/goforward"
export PATH="$PATH:/usr/local/bin/docker"
export PATH="$PATH:$HOME/go/bin/grpc-server-scaffold"
source '/usr/local/Cellar/rbenv/1.2.0/libexec/../completions/rbenv.zsh'
alias cd_repos="cd $REPOS"
alias cd_go="cd $GOREPOS"
alias xslt="saxon"

## Common Forward API Endpoints
export AUTH_REST="https://auth.api.goforward.com"
export MONEY_REST="https://money.api.goforward.com"
export WORKFLOW_REST="https://workflow.api.goforward.com"

command rbenv rehash 2>/dev/null
rbenv() {
  local command
  command="${1:-}"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval "$(rbenv "sh-$command" "$@")";;
  *)
    command rbenv "$command" "$@";;
  esac
}
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
alias vsc="code ."
export PATH="/usr/local/mysql/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

####################################################################################################
# Python Custom Setup #
####################################################################################################
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

####################################################################################################
# Airport Custom Setup #
####################################################################################################

# MacOS if airport if needed
# ln -s /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport /usr/local/bin/airport

####################################################################################################
# ngrok Custom Setup #
####################################################################################################

export PATH="$PATH:/usr/local/bin/ngrok"

####################################################################################################

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# export PATH="${GOROOT}/libexec/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="/Users/williamgoniprow/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="af-magic"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

RPROMPT='[%F{green}%D{%y/%m/%f} |%@%f]'


# Added by Amplify CLI binary installer
export PATH="$HOME/.amplify/bin:$PATH"

[[ -s "/Users/williamgoniprow/.gvm/scripts/gvm" ]] && source "/Users/williamgoniprow/.gvm/scripts/gvm"
