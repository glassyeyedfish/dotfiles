# =========================================================================== #
# Prompt
# =========================================================================== #

# export PS1="\n[\T] [\u@\h:\w]\n\$ "
export PS1="\n\$ "

# =========================================================================== #
# Aliases
# =========================================================================== #

alias ls="ls --color=auto"

# =========================================================================== #
# Path
# =========================================================================== #

export PATH=$HOME/Scripts/bin:$PATH
# export PATH=/home/wil/Downloads/gradle-7.3.3-bin/gradle-7.3.3/bin:$PATH

# =========================================================================== #
# MOTD
# =========================================================================== #

cowsay -f tux Hello ${USER^}, you are using ${HOSTNAME^}.
