

#
# User configuration sourced by interactive shells
#

# Source zim
if [[ -s ${ZDOTDIR:-${HOME}}/.zim/init.zsh ]]; then
  source ${ZDOTDIR:-${HOME}}/.zim/init.zsh
fi


# EXPORTS
export TERM="xterm-256color"
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
export PATH="$HOME/.rbenv/bin:$PATH"
export PANEL_FIFO="/tmp/panel-fifo"
export XDG_CONFIG_HOME="$HOME/.config"
export JAVA_HOME="/usr/lib64/jvm/java-8-openjdk/"
export GOPATH="/home/thomas/go"

# PATHS

export PATH="/home/thomas/.cargo/bin/:/home/thomas/mvn/bin/:/home/thomas/.npm-global/bin:/home/thomas/bin/:/home/thomas/smartgit/bin/:/home/thomas/p4/bin/:/home/thomas/tortoisehg/:/home/thomas/maven/bin:/home/thomas/intellij/bin:/home/thomas/pycharm/bin:/bin/:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/thomas/go/bin:$GOPATH/bin:/home/thomas/.cargo/bin:/home/thomas/shell-functools/ft:/home/thomas/.gem/ruby/2.5.0/bin"
export PATH="$HOME/.yarn/bin:$PATH"



# ZSH
alias src="source ~/.zshrc"
alias zshrc="emacs ~/.zshrc"

# GIT
alias gd="git diff"
alias gf="git fetch --prune origin"
alias gitme="git log --pretty=format:'%Cred%H%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)' --author=thomas.junk@intevation.de"
alias glld="git log --pretty=format:'%Cgreen(%cd) %Creset %Cred%h%Creset -%C(yellow)%d%Creset %s %C(bold blue)%cn' --date=local"
alias glsd="git log --pretty=format:'%Cgreen(%cd) %Creset %Cred%h%Creset -%C(yellow)%d%Creset %s %C(bold blue)%cn' --date=short"
alias grh="git reset --hard HEAD"
alias gb="git blame"
alias gp="git pull"
alias gs="git status"
alias gshow="git show"

# configs
alias emacsrc="emacs ~/.emacs.d/init.el"
alias i3rc="emacs ~/.config/i3/config"
alias termrc="emacs ~/.config/termite/config"

# python
alias a="source env/bin/activate 2> /dev/null || source ../env/bin/activate"
alias mkinit="touch __init__.py"
alias p="pserve development.ini --reload"
alias psetup="python setup.py develop"
alias runserver="python manage.py runserver"
alias s="python2 -m SimpleHTTPServer"

# DOCKER
alias container="docker container"
alias dps="docker ps -a"
alias images="docker images"
alias image="docker image"
alias portainer="docker run -d -p 9000:9000 --restart always -v /var/run/docker.sock:/var/run/docker.sock -v /opt/portainer:/data portainer/portainer"

# GENERAL
alias cls="clear"
alias emacs="emacs -nw"
alias genpass="tr -dc 'a-zA-Z0-9' < /dev/urandom | head -c"
alias ll="ls -la"
alias me="whoami"
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias pc4="ping -c4 "
alias sep="echo '------------------->'"
alias side="cdiff -s0"
alias smartgit="smartgit.sh"
alias sublime="/bin/sublime_text"
alias syu="trizen -Syyu"
alias tf="tail -f"
alias open="nautilus"
alias browser="google-chrome"
alias inspect="fzf --preview 'cat {}'"
alias downloadclient="cd /home/thomas/Intevation/downloadclient/"
alias smartgit="~/smartgit/bin/smartgit.sh"
alias gopath="/home/thomas/go/src/github.com/thomasjunk"
alias godev="cd $gopath"
# EVAL
eval $(dircolors ~/.dircolors)
eval "$(rbenv init -)"
eval "$(ssh-agent)" > /dev/null
# Functions
sf() {
  if [ "$#" -lt 1 ]; then echo "Supply string to search for!"; return 1; fi
  printf -v search "%q" "$*"
  include="yml,js,json,php,md,styl,pug,jade,html,config,py,cpp,c,go,hs,rb,conf,fa,lst"
  exclude=".config,.git,node_modules,vendor,build,yarn.lock,*.sty,*.bst,*.coffee,dist"
  rg_command='rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --color "always" -g "*.{'$include'}" -g "!{'$exclude'}/*"'
  files=`eval $rg_command $search | fzf --ansi --multi --reverse | awk -F ':' '{print $1}'`
  [[ -n "$files" ]] && ${EDITOR:-vim} $files
}

. /etc/profile.d/vte.sh

setopt clobber

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

