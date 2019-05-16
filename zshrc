# Path to global oh-my-zsh configuration.
ZSH="/usr/local/lib/oh-my-zsh"
ZSH_SHARED="/usr/local/lib/zsh_shared"
ZSH_CUSTOM="$ZSH_SHARED/custom"
ZSH_BIN="$ZSH_SHARED/bin"

# Perform manual upgrade only (do not prompt user
# for upgrade as they do not have right to write
# on default installation)
DISABLE_AUTO_UPDATE=true


# Path
export PATH="/usr/local/bin:$PATH:$HOME/bin:$ZSH_BIN"

# Lang configuration
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Set name of the theme to load.
ZSH_THEME=${ZSH_THEME:-"noj"}

# List of default plugins to load
#plugins=${plugins:-"(git git-flow noj)"}

# Prepare
source $ZSH/oh-my-zsh.sh
