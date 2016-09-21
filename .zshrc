# Path to your oh-my-zsh installation.
export ZSH=/home/thomas/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

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
plugins=(git)

# User configuration
export GOPATH="/home/thomas/go"
export PATH="/home/thomas/intellij/bin:/home/thomas/pycharm/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/thomas/go/bin:$GOPATH/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias zshrc="atom ~/.zshrc"
alias src="source ~/.zshrc"
alias vimrc="atom ~/.vimrc"
alias tcstart="~/tomcat/bin/catalina.sh jpda start > /dev/null"
alias tcsl="tcstart && tclog"
alias tcstop="~/tomcat/bin/catalina.sh stop 4 -force"
alias tclog="tail -f ~/tomcat/logs/catalina.out"
alias tcclearlogs="rm -f ~/tomcat/logs/*"
alias tl="~/tomcat/logs"
alias wa="~/tomcat/webapps"
alias psc="ps aux | grep catalina"
alias grh="git reset --hard HEAD"
alias tf="tail -f"
alias gb="git blame"
alias gst="git status"
alias gf="git fetch --prune origin"
alias gp="git pull"
alias gs="git show"
alias lc="less ~/tomcat/logs/catalina.out"
alias cls="clear"
alias glsd="git log --pretty=format:'%Cgreen(%cd) %Creset %Cred%h%Creset -%C(yellow)%d%Creset %s %C(bold blue)%cn' --date=short"
alias glld="git log --pretty=format:'%Cgreen(%cd) %Creset %Cred%h%Creset -%C(yellow)%d%Creset %s %C(bold blue)%cn' --date=local"
alias ll="ls -la"
alias gitme="git log --pretty=format:'%Cred%H%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)' --author=tj@logentis.de"
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias gshow="git show"
alias sep="echo '------------------->'"
alias me="whoami"
alias pc4="ping -c4 "
alias genpass="tr -dc 'a-zA-Z0-9' < /dev/urandom | head -c"
alias i3="atom ~/.i3/config"
alias a="source ../env/bin/activate"
alias x="chmod u+x"
alias hgrc='atom ~/.hgrc'
alias ux='chmod u+x'
alias hi="hg in"
alias ho="hg out"
alias hs="hg status"
alias hf="hg pull -u"
alias hh="hg tags | head"
alias hu="hg update"
alias hl="hg glog"
alias h="hg glog -l1"
alias b="hg branch"
alias bb="hg branches"
alias hgs="hg serve"
alias docs="invoke docs && serve"
alias serve="python -m SimpleHTTPServer"
alias waskiq="cd ~/Intevation/efa-projekt/waskiq/"
alias sib="cd ~/Intevation/efa-projekt/sib/"
alias pwe="cd ~/Intevation/efa-projekt/pwe/"
alias ec="cd ~/Intevation/efa-projekt/ec/"
alias qe="cd ~/Intevation/efa-projekt/qe/"
alias ringo="cd ~/Intevation/efa-projekt/lib/ringo"
alias efa="cd ~/Intevation/efa-projekt/lib/efa"
alias formbar="cd ~/Intevation/efa-projekt/lib/formbar"
alias brabbel="cd ~/Intevation/efa-projekt/lib/brabbel"
alias p="pserve --reload development.ini"
alias psetup="python setup.py develop"
alias termrc="atom ~/.config/termite/config"
alias tunnel="ssh -N -D5050 tjunk@thoe.intevation.de"
alias tunneldev="ssh -L 9000:waskiq-dev.hq.intevation.de:7941 tjunk@thoe.intevation.de"
eval $(dircolors ~/.dircolors)
 . /etc/profile.d/vte.sh
