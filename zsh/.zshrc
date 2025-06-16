# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export ESPBAUD=921600
export IDF_PATH=/opt/esp/esp-idf
# export ADF_PATH=/opt/esp/esp-adf
# export IDF_PATH=/opt/esp/esp-adf/esp-idf

export NIX_BUILD_GROUP_ID=30000
export HOMEBREW_NO_AUTO_UPDATE=1

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

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

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
plugins=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
    dotenv
    # direnv
)

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

##############################################
# Python
##############################################
alias python=python3
alias pip=pip3

##############################################
# System
##############################################
alias -g ..='../'
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

##############################################
# Ninja 
##############################################
alias -g na='ninja all'
alias -g nc='ninja clean'
alias -g nf='ninja flash'
alias -g nm='ninja monitor'

##############################################
# West
##############################################
alias -g wf='west flash'
alias -g wb='west build'

##############################################
# Git
##############################################
alias gsync="git checkout master && git fetch upstream && git rebase upstream/master && git push"
alias glog='git log --graph --oneline --decorate --all'
# alias gl="git log --oneline --decorate --color"
alias gamd="git commit --amend --no-edit"

alias gtemp="ga . && gcmsg 'temp' " 
alias gtempa="ga . && gc!"

##############################################
# Tmux
##############################################
# Tmux auto start
# if command -v tmux &> /dev/null; then
#   [ -z "$TMUX" ] && exec tmux
# fi

##############################################
# Set up fzf key bindings and fuzzy completion
##############################################
source <(fzf --zsh)
alias -g f=fzf
# Preview file with bat tool
alias fp='fzf --preview "bat --color=always {}"'

alias gh='cd ~'


##############################################
# Miscellaneous
##############################################
alias ss='source ~/.zshrc'
alias os='code ~/.zshrc'
alias gws='cd ~/Resources/Workspace/ && echo ${PWD}'
alias gusr='cd /Users/quocbui'


# Show only the current directory's name:
# Custom function to shorten the path
# shorten_path() {
#   local path="$PWD"
#   local base="$HOME/Resources/Workspace/Projects/Bia/Bia-Firmware"
  
#   # Remove the specific prefix to show only the nearest folder
#   if [[ "$path" == $base* ]]; then
#     path="${path/#$base/}"
#   fi
  
#   # Show the nearest folder, or just "/" if it's the base path
#   echo "${path##*/}"
# }

# Set the prompt with the shortened path, Git info, and virtualenv info
prompt_dir() {
  prompt_segment blue $CURRENT_FG '%2~'
}



export STM32_PRG_PATH=/Applications/STMicroelectronics/STM32Cube/STM32CubeProgrammer/STM32CubeProgrammer.app/Contents/MacOs/bin
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


export STM32CubeMX_PATH=/Applications/STMicroelectronics/STM32CubeMX.app/Contents/Resources

# Android SDK
export ANDROID_HOME=~/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools