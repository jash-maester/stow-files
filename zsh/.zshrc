# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
#source ~/.profile

autoload -U +X compinit && compinit

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.config/zsh"

#HISTSIZE=100000
#SAVEHIST=100000
#HISTFILE=~/.history

# ---------- CUDA Specific -----------------
export PATH=/usr/local/cuda/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
# ------------------------------------------

#export JAVA_HOME="/usr/lib/jvm/java-11-amazon-corretto/"
#export PATH="$PATH:$JAVA_HOME/bin"
#export PATH="$PATH:$HOME/flutter/bin"
#export PATH="$PATH:$HOME/.cargo/bin"
export EDITOR='nvim'
export _JAVA_AWT_WM_NONREPARENTING=1
export TERMINAL="st"
#export PATH=$PATH:$HOME/bin

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH=~/.npm-global/bin:$PATH
export BROWSER=/usr/bin/google-chrome-stable
export QT_QPA_PLATFORMTHEME=qt5ct

########### ZSH-Utils ######################
# Source Each and every file in zsh-utils directory
for f ($ZSH/zsh-utils/**/*(N.))  . $f

## For autocompletion(TAB) highlighting
zstyle ':completion:*' menu select

########### ZSH_THEME CHANGING ##############

#if [ -z $COLORTERM ]; then
#  ZSH_THEME="agnoster"
#else
#  ZSH_THEME="bullet-train"
#fi

# Made it default theme
#ZSH_THEME="bullet-train"

source ~/.config/zsh/themes/bullet-train.zsh-theme
#source $ZSH/zsh-prompt
# -------------------------------------------

########### PLUGINS ##############################

#plugins=(adb)

source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ## ZSH-AUTOSUGGESTIONS
source $ZSH/plugins/git/git.plugin.zsh ## GIT
source $ZSH/plugins/sudo/sudo.plugin.zsh ## SUDO
source $ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ## ZSH-SYNTAX-HIGHLIGHTING
source $ZSH/plugins/vi-mode/vi-mode.plugin.zsh ## VI-MODE
source $ZSH/plugins/colored-man-pages/colored-man-pages.plugin.zsh ## COLORED-MAN-PAGES
source $ZSH/plugins/z/z.sh ## Z

########### USE FLAGS ######################
CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

########### EDITOR ##############################

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

#EDITOR='nvim'

########### ROS SPECIFIC #######################

#source /opt/ros/noetic/setup.zsh
#source ~/Work/ros/catkin_ws/devel/setup.zsh
#alias catkin_ws='cd ~/Work/ros/catkin_ws && source devel/setup.zsh'

########### ALIASES ############################

#alias youtube='tizonia --youtube-audio-search'
#alias ssh-chat='cd ~/Downloads/ssh-chat/ && sudo ./ssh-chat --bind ":22" --verbose --identity ~/.ssh/id_rsa'

#alias update='sudo apt update && sudo apt upgrade'
alias v='vim'
alias rm='rm -i'
alias cat=bat
alias ls=eza
alias l='eza -lah'
alias la='eza -a'
alias vim=lvim
alias prime-run="__NV_PRIME_RENDER_OFFLOAD=1 __VK_LAYER_NV_optimus=NVIDIA_only __GLX_VENDOR_LIBRARY_NAME=nvidia"
alias youtube-dl-audio='youtube-dl --ignore-errors --output "%(title)s.%(ext)s" --extract-audio --audio-format mp3'

pfetch

VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
VI_MODE_SET_CURSOR=true

#bindkey '\e[3~' delete-char

#eval "`pip completion --zsh`"

# Nix Installer Crap
#if [ -e /home/jash_maester/.nix-profile/etc/profile.d/nix.sh ]; then . /home/jash_maester/.nix-profile/etc/profile.d/nix.sh; fi 

# Docker Crap
export DOCKER_HOST=unix:///run/user/1000/docker.sock

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/jash/.miniconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/jash/.miniconda/etc/profile.d/conda.sh" ]; then
        . "/home/jash/.miniconda/etc/profile.d/conda.sh"
    else
        export PATH="/home/jash/.miniconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

