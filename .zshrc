# Path to your oh-my-zsh installation.
export ZSH=/Users/g11m/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git sublime osx common-aliases cp emoji github)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# you may need to manually set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#

# config and manage zsh
alias zshconfig="st ~/.zshrc"
alias ohmyzsh="st ~/.oh-my-zsh"

# password gen
genpsw() { pwgen -Bs $1 1 |pbcopy |pbpaste; echo “Has been copied to clipboard” }

# local webserver
alias serve='python -m SimpleHTTPServer 8081'

# randomize mac
alias randommac="sudo ifconfig en1 ether $(openssl rand -hex 6 | sed 's%\(..\)%\1:%g; s%.$%%') && echo 'mac randomized'"

# big files
alias lsbig='find . -type f -size +150M'

# tunnel
alias tunnelon='sudo networksetup -setsocksfirewallproxy "Wi-Fi" localhost 1090 && sudo ssh -D 1090 -C -N deployer@ssh.com'
alias tunneloff='sudo networksetup -setsocksfirewallproxystate "Wi-Fi" off'

# docker aliases
alias dev="cd ~/dev/"

# docker aliases
alias doco="docker-compose"

# play nice analog sessions
alias analog='tput setaf 3; echo "Welcome to Analog Journal! \n Tip: Shift+> for next session";  mpv --no-video https://www.youtube.com/c/MyAnalogJournal'

# play noise - source https://gist.github.com/rsvp/1209835
alias noise='play --no-show-progress -c 2 --null synth 01:00 brownnoise band -n 1786 499 tremolo 0.0333333 43 reverb 19 bass -11 treble -1 vol 14dB repeat 58'

# Export custom paths

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:$HOME/bin" # Add local user bin to PATH for custom scripts
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"

# nvm
export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"

# anaconda
#export PATH=/usr/local/anaconda3/bin:"$PATH"
