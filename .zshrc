# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/tjunk/.oh-my-zsh"
[ $TERM = "dumb" ] && unsetopt zle && PS1='$ '
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

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

# EXPORTS
export PATH="/home/tjunk/gradle/bin:/usr/local/go/bin:/opt/swift-5.7.1/usr/bin/:/home/tjunk/smartgit/bin:/home/tjunk/.local/bin:/opt/ghc/bin:/home/tjunk/bin:/home/tjunk/p4v/bin:/home/tjunk/shell-functools/ft:/home/tjunk/.cargo/bin/:/home/tjunk/.npm-global/bin:/home/tjunk/go/bin:$PATH"
export GOPATH="/home/tjunk/go"
export TERM="xterm-256color"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_DIRS="/var/lib/flatpak/exports/share:/home/tjunk/.local/share/flatpak/exports/share:$XDG_DATA_DIRS"
export JAVA_HOME="/usr"
export GEOSERVER_HOME="/home/tjunk/apache/"
export EDITOR=vim

# ZSH
alias src="source ~/.zshrc"
alias zshrc="vim ~/.zshrc"

# GIT
alias gd="git diff | dsf"
alias gf="git fetch --prune origin"
alias gitme="git log --pretty=format:'%Cred%H%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)' --author=thomas.junk@intevation.de"
alias glld="git log --pretty=format:'%Cgreen(%cd) %Creset %Cred%h%Creset -%C(yellow)%d%Creset %s %C(bold blue)%cn' --date=local"
alias glsd="git log --pretty=format:'%Cgreen(%cd) %Creset %Cred%h%Creset -%C(yellow)%d%Creset %s %C(bold blue)%cn' --date=short"
alias grh="git reset --hard HEAD"
alias gb="git blame"
alias gp="git pull"
alias gs="git status"
alias gshow="git show"
alias master="git checkout master"
alias push="git push"
alias main="git checkout main"

# MERCURIAL
alias b="hg branch"
alias bb="hg branches"
alias h="hg glog -l1"
alias hi="hg in"
alias hd="hg extdiff -p meld"
alias hf="hg pull -u"
alias hgrc='emacs ~/.hgrc'
alias hgs="hg serve"
alias hh="hg tags | head"
alias hl="hg glog"
alias ho="hg out"
alias hrh="hg revert -a --no-backup"
alias hs="hg status"
alias hu="hg update"
alias hgcc="hg log --template '{author|person}\n' | sort | uniq -c | sort -nr"
alias hglast="hg log -l1 -p"

# python
alias a="source .venv/bin/activate 2> /dev/null || source ../.env/bin/activate"
alias mkinit="touch __init__.py"
alias p="pserve development.ini --reload"
alias psetup="python setup.py develop"
alias runserver="python manage.py runserver"
alias s="python2 -m SimpleHTTPServer"

# DOCKER
alias container="docker container"
alias dps='docker ps --format "table {{.ID}}\t{{.Image}}\t{{.Status}}"'
alias images="docker images"
alias image="docker image"
alias portainer="docker run -d -p 9000:9000 --restart always -v /var/run/docker.sock:/var/run/docker.sock -v /opt/portainer:/data portainer/portainer"


# GENERAL
alias vimrc="vim /home/tjunk/.vimrc"
alias syu="sudo apt update && sudo apt upgrade -y"
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
alias tf="tail -f"
alias open="nautilus"
alias browser="google-chrome"
alias inspect="fzf --preview 'cat {}'"
alias downloadclient="cd /home/tjunk/Intevation/downloadclient/"
alias orga="cd ~/Dokumente/arbeit/"
alias intevation="cd ~/Intevation/"
alias projects="cd ~/projects/"
alias workspace="cd ~/workspace/"
alias lazy="~/lazy.sh"
alias pipshell="pipenv shell"
alias org="emacs -nw"
alias efapreview="ssh efapreview"
alias godev="cd ~/go/src/"
alias wamosdev="ssh wamos"
alias waskiqdev="ssh waskiqdev"
alias ngrok="/home/tjunk/ngrok"
alias hgpush="hg push"
alias wamoszeit="code ~/Intevation/zeiterfassungen/wamos"
alias ys="yarn serve"
alias pq="npx pretty-quick"
alias dcu="docker-compose up"
alias startgeo="GEOSERVER_HOME=/home/tjunk/apache/ _JAVA_OPTIONS='-Xms512m -Xmx512m' /home/tjunk/apache/bin/startup.sh &"
alias stopgeo="/home/tjunk/apache/bin/shutdown.sh"
alias notizen="/home/tjunk/workspace/Markdown/notizen/"
alias efaexport="/home/tjunk/efaexport.sh"
alias gemmalink="hg sum | head -1 | sed -rn 's/^.*:(.*) (.*)/gemma:\1/p'"
alias typora="/home/tjunk/Typora-linux-x64/Typora &"
alias ls="exa"
alias storybook="cd ~/workspace/storybook/"
alias dependend_children="/home/tjunk/dependants.py"
alias goproject="/home/tjunk/goproject.sh"
alias fd="fdfind"
alias dsf="diff-so-fancy | less  --tabs=4 -RFXS --pattern '^(Date|added|deleted|modified): '"
alias morgenseiten="/home/tjunk/morgenseiten.sh"
alias ringo-lkos="cd /home/tjunk/Intevation/ringo_stack/lib/ringo/ && git checkout ringo-lkos && cd -"
alias ringo-master="cd /home/tjunk/Intevation/ringo_stack/lib/ringo/ && git checkout master && cd -"
alias obsidian="cd /home/tjunk/Dokumente/obsidian/Arbeit/"
alias cpwoche="/home/tjunk/cpwoche.sh"
alias bat="batcat"

# work
alias admin="~/smart-admin.sh"
alias dbreset="~/dbreset.sh"
alias intevation="cd /home/tjunk/Intevation"
alias thoe="ssh -AX thoe"
alias euarne="ssh -AX euarne"
alias tunnel="ssh tjunk@thoe.intevation.de -L 5000:sib-testing.hq.intevation.de:80 -N"
alias wdev="ssh -AX waskiqdev"
alias gemmareset="/home/tjunk/gemmareset.sh"
alias xopen="xdg-open"
alias spalogs="docker logs -f gemma-spa"
alias spastop="docker container stop gemma-spa"
alias spastart="docker run --rm --name gemma-spa -v /home/tjunk/Intevation/wamosassets:/home/tjunk/Intevation/wamosassets -v $PWD/client:/opt/gemma/client -d --network host gemma_spa"
alias mountwochenberichte="sshfs tjunk@euarne.intevation.de:/home/intevation/doc/Wochenberichte/2022 /home/tjunk/Intevation/wochenberichte"
alias initcheckin="cp ~/.emacs.d/init.el ~/emacs.d/"
alias initcheckout="cp ~/emacs.d/init.el  ~/.emacs.d/"
alias pr="poetry run"
alias disablev6="sudo sysctl net.ipv6.conf.all.disable_ipv6=1"
alias ducks='du -chs -- * | sort -rn | head'
alias csaf="ssh csaf"
alias csafroot="ssh root@csaf"
alias gitpush="git push"
alias npmdev="npm run dev"
alias ladarst="git reset --hard HEAD && patch -p1 < /home/tjunk/patches/pom.xml"

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

# . /etc/profile.d/vte.sh

setopt clobber

eval "$(zoxide init zsh)"

PATH="/home/tjunk/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/tjunk/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/tjunk/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/tjunk/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/tjunk/perl5"; export PERL_MM_OPT;

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
