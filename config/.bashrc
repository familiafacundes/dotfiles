#export TERM="xterm-256color"
#export COLORTERM="truecolor"
export EDITOR=nvim
export VISUAL=nvim
# Path to your oh-my-bash installation.
export OSH=/home/$USER/.oh-my-bash

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-bash is loaded.
OSH_THEME="powerline"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_OSH_DAYS=13

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

# Would you like to use another custom folder than $OSH/custom?
# OSH_CUSTOM=/path/to/new-custom-folder

# Which completions would you like to load? (completions can be found in ~/.oh-my-bash/completions/*)
# Custom completions may be added to ~/.oh-my-bash/custom/completions/
# Example format: completions=(ssh git bundler gem pip pip3)
# Add wisely, as too many completions slow down shell startup.
completions=(
  git
  composer
  ssh
)

# Which aliases would you like to load? (aliases can be found in ~/.oh-my-bash/aliases/*)
# Custom aliases may be added to ~/.oh-my-bash/custom/aliases/
# Example format: aliases=(vagrant composer git-avh)
# Add wisely, as too many aliases slow down shell startup.
aliases=(
  general
)

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  bashmarks
)

source $OSH/oh-my-bash.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-bash libs,
# plugins, and themes. Aliases can be placed here, though oh-my-bash
# users are encouraged to define aliases within the OSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias bashconfig="mate ~/.bashrc"
# alias ohmybash="mate ~/.oh-my-bash

##################################################

export HISTFILESIZE=100000
export HISTSIZE=100000
export HISTCONTROL=ignoreboth
export HISTTIMEFORMAT="%F %T "
shopt -s histappend

# Terminal settings
shopt -s checkwinsize
#export PROMPT_COMMAND='history -a'
#export GITAWAREPROMPT=~/.bash/git-aware-prompt
#source $GITAWAREPROMPT/main.sh
export PS1="\[\e[32m\]\t \[$txtgrn\]\u\[$txtwht\]@\[$txtgrn\]\h \[$txtylw\]\w\[$txtrst\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\n\$ "
#export PATH="$PATH:~/Library/Python/2.7/bin:$HOME/Library/Haskell/bin"
export PATH=$PATH:~/.local/bin
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export EDITOR=nvim
#export RBENV_ROOT=/usr/local/var/rbenv

# Aliases

alias ls="lsd"
alias cpi="cpupower frequency-info"
alias bi="cd ~/.local/bin"
alias cp="advcp -g"
alias reboot="/usr/bin/openrc-shutdown --reboot now"
alias shutdown="/usr/bin/openrc-shutdown --poweroff now"
alias matar="pkill -9 -u maria"
alias yd="youtube-dl -i"
alias a="sudo pacman -Syyuu"
alias limpawine="rm -rf ~/.local/share/applications/*wine*"
alias lwine="rm -rf ~/.local/share/applications/*wine*"
alias rwine="rm -rf ~/.local/share/applications/*wine*"
alias remover="rm ~/.local/share/applications/remover-*.desktop"
alias mwine="ps ax|egrep '*\.exe'|grep -v 'egrep'|awk '{print $1 }' | xargs kill -9 $1 ; wineserver -k; wineserver -k9; pkill -9 .exe; pkill -9 Steam; pkill -9 steam; pkill -9 Epic; pkill -9 wine; pkill -9 wineserver; killall -9 wine wineserver; killall -9 .exe"
alias renicewine1="ps ax|egrep '*\.exe'|grep -v 'egrep'|awk '{print $1 }' | xargs sudo renice -n -2 -p $1 ; echo --- ; \
top -bn 1 | grep -Ei --color .exe ; echo --- ; echo 'ps ax|egrep “*\.exe“|grep -v 'egrep'|awk '{print $1 }' | xargs sudo renice -n -2 -p “$ 1“'"
alias renicewine2="ps ax|egrep '*\.exe'|grep -v 'egrep'|awk '{print $1 }' | xargs sudo renice -n -3 -p $1 ; echo --- ; \
top -bn 1 | grep -Ei --color .exe ; echo --- ; echo 'ps ax|egrep “*\.exe“|grep -v 'egrep'|awk '{print $1 }' | xargs sudo renice -n -3 -p “$ 1“'"
alias renicewine3="ps ax|egrep '*\.exe'|grep -v 'egrep'|awk '{print $1 }' | xargs sudo renice -n -5 -p $1 ; echo --- ; \
top -bn 1 | grep -Ei --color .exe ; echo --- ; echo 'ps ax|egrep “*\.exe“|grep -v 'egrep'|awk '{print $1 }' | xargs sudo renice -n -5 -p “$ 1“'"
alias renicewine4="ps ax|egrep '*\.exe'|grep -v 'egrep'|awk '{print $1 }' | xargs sudo renice -n -7 -p $1 ; echo --- ; \
top -bn 1 | grep -Ei --color .exe ; echo --- ; echo 'ps ax|egrep “*\.exe“|grep -v 'egrep'|awk '{print $1 }' | xargs sudo renice -n -7 -p “$ 1“'"
alias reniceuser1="sudo renice -n -2 -u $USER ; echo --- ; \
top -bn 1 | grep -Ei --color $USER ; echo --- ; echo 'sudo renice -n -2 -u $USER'"
alias reniceuser2="sudo renice -n -3 -u $USER ; echo --- ; \
top -bn 1 | grep -Ei --color $USER ; echo --- ; echo 'sudo renice -n -3 -u $USER'"
alias reniceuser3="sudo renice -n -5 -u $USER ; echo --- ; \
top -bn 1 | grep -Ei --color $USER ; echo --- ; echo 'sudo renice -n -5 -u $USER'"
alias reniceuser4="sudo renice -n -7 -u $USER ; echo --- ; \
top -bn 1 | grep -Ei --color $USER ; echo --- ; echo 'sudo renice -n -7 -u $USER'"
alias r1="renice -n -2 -u $USER ; echo --- ; \
top -bn 1 | grep -Ei --color $USER ; echo --- ; echo 'renice -n -2 -u $USER'"
alias r2="renice -n -3 -u $USER ; echo --- ; \
top -bn 1 | grep -Ei --color $USER ; echo --- ; echo 'renice -n -3 -u $USER'"
alias r3="renice -n -5 -u $USER ; echo --- ; \
top -bn 1 | grep -Ei --color $USER ; echo --- ; echo 'renice -n -5 -u $USER'"
alias all="pkill -9 -u $USER"
alias a="pkill -9 -u $USER"
alias temp="sensors k10temp-pci-00c3 | grep --color -i temp1 | lolcat ; sensors amdgpu-pci-0100 | grep --color -i temp1 | lolcat"
alias reflect="sudo reflector -c Brazil --save /etc/pacman.d/mirrorlist-arch"
alias mirror="sudo reflector -c Brazil --save /etc/pacman.d/mirrorlist-arch"
#alias performance="sudo cpupower frequency-set -d 3.3G ; sudo cpupower frequency-set -u 3.3G ; sudo cpupower frequency-set -g performance"
alias game="sudo cpupower frequency-set -u 3.3G ; sudo cpupower frequency-set -g performance ; echo --- ; \
echo 'sudo cpupower frequency-set -u 3.3G ; sudo cpupower frequency-set -g performance'"
alias performance="sudo cpupower frequency-set -u 3.3G ; sudo cpupower frequency-set -g performance ; echo --- ; \
echo 'sudo cpupower frequency-set -u 3.3G ; sudo cpupower frequency-set -g performance'"
alias pachis_ins="paclog-pkglist <(tail -100 /var/log/pacman.log  | grep -A 3 -i installed) ; echo --- ; \
echo 'paclog-pkglist <(tail -100 /var/log/pacman.log  | grep -A 3 -i installed)'"
alias pachis_ins2="paclog-pkglist <(tail -2000 /var/log/pacman.log  | grep -A 3 -i 'pacman -S') ; echo --- ; \
echo 'paclog-pkglist <(tail -2000 /var/log/pacman.log  | grep -A 3 -i 'pacman -S')'"
alias pachis_rem="paclog-pkglist <(tail -5000 /var/log/pacman.log  | grep -A 100 -i 'pacman -Rcs') ; echo --- ; \
echo 'paclog-pkglist <(tail -5000 /var/log/pacman.log  | grep -A 100 -i 'pacman -Rcs')'"
alias pachis="xdg-open /var/log/pacman.log"
alias listmonitor="xrandr --listmonitors ; echo --- ; echo xrandr --listmonitors"
alias monitorlist="xrandr --listmonitors ; echo --- ; echo xrandr --listmonitors"
alias brilho="xrandr --output HDMI-A-0 --brightness 0.8 ; echo --- ; echo xrandr --output HDMI-A-0 --brightness 0.8"
alias gamma="xgamma -gamma .90 ; echo --- ; echo xgamma -gamma .90"
alias gama="xgamma -gamma .90 ; echo --- ; echo xgamma -gamma .90"
alias blue="xgamma -bgamma 1.1 ; xgamma -rgamma .8 ; echo --- ; echo 'xgamma -bgamma 1.1 ; xgamma -rgamma .8'"
alias gt="ffmpeg -video_size 1360x768 -framerate 25 -f x11grab -i :0.0 -f pulse -ac 2 -i default ~/Videos/Tela_$(date +%d-%m-%Y_%H:%M:%S).mkv ; echo --- ; echo 'ffmpeg -video_size 1360x768 -framerate 25 -f x11grab -i :0.0 -f pulse -ac 2 -i default ~/Videos/Tela_$(date +%d-%m-%Y_%H:%M:%S).mkv'"
alias gif="echo 'ffmpeg -i Tela_09-12-2019_14:40:57.mkv -filter_complex '[0:v] palettegen' palette.png ; ffmpeg -ss 00:00:26.00 -t 8 -r 23 -i Tela_09-12-2019_14:40:57.mkv -i palette.png -filter_complex '[0:v][1:v] paletteuse' -pix_fmt rgb24 -s 616x182 GuildWars2.gif'"
alias criargif="echo 'ffmpeg -i Tela_09-12-2019_14:40:57.mkv -filter_complex '[0:v] palettegen' palette.png ; ffmpeg -ss 00:00:26.00 -t 8 -r 23 -i Tela_09-12-2019_14:40:57.mkv -i palette.png -filter_complex '[0:v][1:v] paletteuse' -pix_fmt rgb24 -s 616x182 GuildWars2.gif'"

function xc() {
  xcode=`xcode-select -p | sed 's/\(.*\)\(Xcode.*\.app\).*/\2/'`
  find "$1" -name "*.xcodeproj" -maxdepth 1 | xargs -I file open -a $xcode "file"
}

DISABLE_UPDATE_PROMPT=true
DISABLE_AUTO_UPDATE=true

~/.make/neofetch/neofetch --cpu_temp
#sensors k10temp-pci-00c3 | grep --color -i temp1 | lolcat
#sensors amdgpu-pci-0100 | grep --color -i temp1 | lolcat

#complete -cf pacman
complete -abcdefgjksuv pacman
#complete -cf sudo
complete -abcdefgjksuv sudo

export vblank_mode=0
export __GL_SYNC_TO_VBLANK=0


