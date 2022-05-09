if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export webmed="/Users/user/Documents/webmed-cli/webmed"

export ZSH="/Users/user/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

POWERLEVEL9K_MODE='nerdfont-complete'

# POWERLEVEL9K=========

# Directories
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_DELIMITER="…"
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_with_package_name"

# Separators
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR="\ue0b4"
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR="\ue0b6"

# Icons
POWERLEVEL9K_HOST_TEMPLATE="%2m"
POWERLEVEL9K_HOST_ICON="\uf109"
POWERLEVEL9K_SSH_ICON="\uf0c2"

POWERLEVEL9K_HOME_ICON="\uf015"
POWERLEVEL9K_HOME_SUB_ICON="\uf07c"
POWERLEVEL9K_FOLDER_ICON="\uf07b"

POWERLEVEL9K_NETWORK_ICON="\uf09e"

POWERLEVEL9K_PYTHON_ICON="\ue606"
POWERLEVEL9K_ANACONDA_LEFT_DELIMITER=""
POWERLEVEL9K_ANACONDA_RIGHT_DELIMITER=""

prompt_nodenv() {
    LOCAL_NODE_VERSION="$( cut -d ' ' -f 1 <<< "$(nodenv version)" )"
    GLOBAL_NODE_VERSION="$( cut -d ' ' -f 1 <<< "$(nodenv global)" )"

    if [ "$LOCAL_NODE_VERSION" != "$GLOBAL_NODE_VERSION" ]
    then
        echo -n "\ue718 $LOCAL_NODE_VERSION"
    fi

}
POWERLEVEL9K_CUSTOM_NODENV="prompt_nodenv"


# Prompt
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(host ip newline dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(anaconda custom_nodenv status)
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

# Prompt Colors
POWERLEVEL9K_HOST_LOCAL_FOREGROUND='black'
POWERLEVEL9K_HOST_LOCAL_BACKGROUND='red'
POWERLEVEL9K_HOST_REMOTE_FOREGROUND='black'
POWERLEVEL9K_HOST_REMOTE_BACKGROUND='cyan'

POWERLEVEL9K_DIR_PATH_SEPARATOR="%F{white}  %F{red}"
POWERLEVEL9K_DIR_HOME_FOREGROUND='red'
POWERLEVEL9K_DIR_HOME_BACKGROUND='blue'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='red'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='blue'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='red'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='cyan'

POWERLEVEL9K_IP_FOREGROUND='red'
POWERLEVEL9K_IP_BACKGROUND='blue'

POWERLEVEL9K_CUSTOM_NODENV_FOREGROUND="black"
POWERLEVEL9K_CUSTOM_NODENV_BACKGROUND="green"

POWERLEVEL9K_STATUS_OK_FOREGROUND='cyan'
POWERLEVEL9K_STATUS_OK_BACKGROUND='blue'
POWERLEVEL9K_STATUS_ERROR_FOREGROUND='white'
POWERLEVEL9K_STATUS_ERROR_BACKGROUND='red'

CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
DISABLE_UPDATE_PROMPT="true"
MAILCHECK=0
DISABLE_AUTO_TITLE="true"

plugins=(
  git
  npm
  node
  sudo
  yarn
  python
  jira
  vscode
  composer
  react-native
  zsh-autosuggestions
  zsh-syntax-highlighting
)

POWERLEVEL9K_MODE="nerdfont-complete"

source $ZSH/oh-my-zsh.sh

customize_agnoster() {
  prompt_segment 'red' '' ' ⚙ ⚡⚡⚡ ⚙  '
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="/usr/local/opt/php@8.1/bin:$PATH"
export PATH="/usr/local/opt/php@8.1/sbin:$PATH"

alias pip=pip3
alias python=python3
alias p=python

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/user/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/user/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/user/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/user/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
