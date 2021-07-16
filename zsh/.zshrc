# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
#source ~/.profile

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.config/zsh"

# ---------- CUDA Specific -----------------
#export PATH=/usr/local/cuda/bin${PATH:+:${PATH}}
#export LD_LIBRARY_PATH=/usr/local/cuda/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
# ------------------------------------------

#export JAVA_HOME="/usr/lib/jvm/java-11-amazon-corretto/"
#export PATH="$PATH:$JAVA_HOME/bin"
export PATH="$PATH:$HOME/flutter/bin"
#export PATH="$PATH:$HOME/.cargo/bin"
export EDITOR='vim'
export _JAVA_AWT_WM_NONREPARENTING=1
export TERMINAL="st"
#export PATH=$PATH:$HOME/bin

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#export PATH="$PATH:$HOME/.rvm/bin"

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

EDITOR='vim'

########### ALIASES ############################

#alias youtube='tizonia --youtube-audio-search'
#alias ssh-chat='cd ~/Downloads/ssh-chat/ && sudo ./ssh-chat --bind ":22" --verbose --identity ~/.ssh/id_rsa'

alias update='sudo apt update && sudo apt upgrade'
alias v='vim'
alias rm=rm -i
alias cat=bat
alias ls=exa
alias l='exa -lah'
alias la='exa -a'
alias prime-run="__NV_PRIME_RENDER_OFFLOAD=1 __VK_LAYER_NV_optimus=NVIDIA_only __GLX_VENDOR_LIBRARY_NAME=nvidia"

#neofetch
pfetch
#afetch

VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
VI_MODE_SET_CURSOR=true
#bindkey '\e[3~' delete-char
#eval "`pip completion --zsh`"
