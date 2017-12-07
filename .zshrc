

#
# User configuration sourced by interactive shells
#

# Source zim
if [[ -s ${ZDOTDIR:-${HOME}}/.zim/init.zsh ]]; then
  source ${ZDOTDIR:-${HOME}}/.zim/init.zsh
fi

# PATHS

export PATH="/home/thomas/pkgdiff/:/home/thomas/bin/:/home/thomas/smartgit/bin/:/home/thomas/p4/bin/:/home/thomas/tortoisehg/:/home/thomas/maven/bin:/home/thomas/intellij/bin:/home/thomas/pycharm/bin:/bin/:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/thomas/go/bin:$GOPATH/bin:/home/thomas/.cargo/bin:/home/thomas/shell-functools/ft"
export PATH="$HOME/.yarn/bin:$PATH"

# EXPORTS
export TERM="xterm-256color"
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
export PATH="$HOME/.rbenv/bin:$PATH"
export PANEL_FIFO="/tmp/panel-fifo"
export XDG_CONFIG_HOME="$HOME/.config"
export JAVA_HOME="/usr/java/latest"
export GOPATH="/home/thomas/go"

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

# MERCURIAL
alias b="hg branch"
alias bb="hg branches"
alias h="hg glog -l1"
alias hi="hg in"
alias hd="hg diff"
alias hf="hg pull -u"
alias hgrc='emacs ~/.hgrc'
alias hgs="hg serve"
alias hh="hg tags | head"
alias hl="hg glog"
alias ho="hg out"
alias hrh="hg revert -a"
alias hs="hg status"
alias hu="hg update"

# configs
alias emacsrc="emacs ~/.emacs.d/init.el"
alias i3rc="emacs ~/.config/i3/config"
alias termrc="emacs ~/.config/termite/config"

# python
alias a="source env/bin/activate 2> /dev/null || source ../env/bin/activate"
alias docs="invoke docs && serve"
alias mkinit="touch __init__.py"
alias p="pserve development.ini --reload"
alias psetup="python setup.py develop"
alias runserver="python manage.py runserver"
alias s="python -m SimpleHTTPServer"

# work
alias admin="~/smart-admin.sh"
alias aspirant="cd ~/Intevation/lib/aspirant"
alias bewec="cd ~/Intevation/bewec"
alias brabbel="cd ~/Intevation/lib/brabbel"
alias dbreset="~/dbreset.sh"
alias ec="cd ~/Intevation/ec/"
alias ecimporter="cd ~/Intevation/ecimporter"
alias efa="cd ~/Intevation/lib/efa"
alias euhu="cd ~/Intevation/lib/euhu"
alias formbar="cd ~/Intevation/lib/formbar"
alias intevation="cd /home/thomas/Intevation"
alias pwe="cd ~/Intevation/pwe/"
alias release="emacs /home/thomas/workspace/emacs/org/releases/releases.org"
alias reportserver="cd ~/Intevation/reportserver"
alias ringo="cd ~/Intevation/lib/ringo"
alias qe="cd ~/Intevation/qe/"
alias sib="cd ~/Intevation/sib/"
alias thoe="ssh thoe"
alias tunnel="ssh tjunk@thoe.intevation.de -L 5000:sib-testing.hq.intevation.de:80 -N"
alias waskiq="cd ~/Intevation/waskiq/"
alias wdev="ssh waskiqdev"

# DOCKER
alias container="docker container"
alias dps="docker ps -a"
alias images="docker images"
alias image="docker image"

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
alias syu="sudo zypper dup"
alias tf="tail -f"
alias open="nautilus"
alias browser="google-chrome"
alias inspect="fzf --preview 'cat {}'"
alias downloadclient="cd /home/thomas/Intevation/downloadclient/"
# EVAL
eval $(dircolors ~/.dircolors)
eval "$(rbenv init -)"

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
