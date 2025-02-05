#------#
# PATH #
#------#
export SUBLIME_PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin"
export USER_BIN_PATH="$HOME/bin"
export POSTGRES_PATH="/Applications/Postgres.app/Contents/Versions/latest/bin"
export HOMEBREW_CELLAR="/opt/homebrew/Cellar"
export HOMEBREW_PREFIX="/opt/homebrew"
export HOMEBREW_REPOSITORY="/opt/homebrew"
export HOMEBREW_PATH="/opt/homebrew/bin:/opt/homebrew/sbin"
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}"
export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:"
export BZIP2_PATH="/opt/homebrew/opt/bzip2/bin"
export OPEN_SSL_PATH="/opt/homebrew/opt/openssl@3/bin"
export GRAPHVIZ_DIR="/opt/homebrew/opt/graphviz"
export PATH=$HOMEBREW_PATH:$SUBLIME_PATH:$OPEN_SSL_PATH:$GRAPHVIZ_DIR:$USER_BIN_PATH:$POSTGRES_PATH:$HOME:$BZIP2_PATH:$PATH:.

#-------#
# PyEnv #
#-------#
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

export GPG_TTY=$(tty)

#-------------------#
# Shell integration #
#-------------------#
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh" || true

#-----#
# NVM #
#-----#
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

#-----------#
# AWS Vault #
#-----------#
export AWS_VAULT_PASS_PREFIX=aws-vault
export AWS_VAULT_BACKEND=pass

#---------#
# OpenSSL #  # Order matters, the first exports don't have -L/-I
#---------#
export LDFLAGS="-L$(brew --prefix openssl)/lib"
export CPPFLAGS="-I$(brew --prefix openssl)/include"
export PKG_CONFIG_PATH="$(brew --prefix openssl)/lib/pkgconfig"

#----------#
# graphviz #
#----------#
export LDFLAGS="${LDFLAGS} -L$(brew --prefix graphviz)/lib"
export CFLAGS="${CPPFLAGS} -I$(brew --prefix graphviz)/include"

#------#
# zlib #
#------#
export LDFLAGS="${LDFLAGS} -L$(brew --prefix zlib)/lib"
export CPPFLAGS="${CPPFLAGS} -I$(brew --prefix zlib)/include"
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} $(brew --prefix zlib)/lib/pkgconfig"


#-------#
# bzip2 #
#-------#
export LDFLAGS="${LDFLAGS} -L$(brew --prefix bzip2)/lib"
export CPPFLAGS="${CPPFLAGS} -I$(brew --prefix bzip2)/include"

#----------#
# readline #
#----------#
export LDFLAGS="${LDFLAGS} -L$(brew --prefix readline)/lib"
export CPPFLAGS="${CPPFLAGS} -I$(brew --prefix readline)/include"
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} $(brew --prefix readline)/lib/pkgconfig"

#-------#
# icu4c #
#-------#
export LDFLAGS="${LDFLAGS} -L$(brew --prefix icu4c)/lib"
export CPPFLAGS="${CPPFLAGS} -I$(brew --prefix icu4c)/include"
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} $(brew --prefix icu4c)/lib/pkgconfig"

#--------#
# sqlite #
#--------#
export LDFLAGS="${LDFLAGS} -L$(brew --prefix sqlite)/lib"
export CPPFLAGS="${CPPFLAGS} -I$(brew --prefix sqlite)/include"
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} $(brew --prefix sqlite)/lib/pkgconfig"

#--------#
# LibFFI #
#--------#
export LDFLAGS="${LDFLAGS} -L$(brew --prefix libffi)/lib"
export CPPFLAGS="${CPPFLAGS} -I$(brew --prefix libffi)/include"
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} $(brew --prefix libffi)/lib/pkgconfig"

#----------#
# OpenBLAS #
#----------#
export LDFLAGS="${LDFLAGS} -L$(brew --prefix openblas)/lib"
export CPPFLAGS="${CPPFLAGS} -I$(brew --prefix openblas)/include"
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} $(brew --prefix openblas)/lib/pkgconfig"

#-------------------#
# VirtualEnvWrapper #
#-------------------#
export VIRTUALENVWRAPPER_PYTHON=$HOME/.pyenv/bin/shims/python
export WORKON_HOME=$HOME/venv
export PROJECT_HOME=$HOME/projects
export VIRTUALENVWRAPPER_HOOK_DIR=$WORKON_HOME
export VIRTUALENVWRAPPER_LOG_DIR=$WORKON_HOME

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

#------------------#
# DEFAULT SETTINGS #
#------------------#

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel9k/powerlevel9k"

# Shorten directory shown
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="false"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Update automatically
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    1password
    alias-finder
    aliases
    # autoenv
    aws
    brew
    celery
    charm
    colored-man-pages
    colorize
    command-not-found
    common-aliases
    cp
    docker
    # dotenv
    git
    git-auto-fetch
    history
    iterm2
    macos
    npm
    nvm
    pre-commit
    pip
    pipenv
    poetry
    pyenv
    python
    sublime
    zsh-syntax-highlighting
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# Set default user to avoid showing 'user' on every line
DEFAULT_USER=striveforbest

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Separate aliases/functions file
source $HOME/.aliases
source $HOME/.functions


# Compilation flags
# export ARCHFLAGS="arm64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id.pub"

# AWS Vault
export AWS_VAULT_BACKEND=keychain
export AWS_VAULT_KEYCHAIN_NAME=aws-vault

# Get a fortune
fortune

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/striveforbest/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/striveforbest/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/striveforbest/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/striveforbest/Downloads/google-cloud-sdk/completion.zsh.inc'; fi


# PDM
export PDM_VENV_PROMPT='{project_name}-py{python_version}'

