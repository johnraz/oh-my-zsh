# customization af-magic.zsh-theme
#
# Author: Jonathan Liuti



if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

# primary prompt

function current_venv() {
    if [ $VIRTUAL_ENV ]; then echo "\n$(virtualenv_prompt_info)";
    else echo ''; fi
}
PROMPT='$FG[237]------------------------------------------------------------%{$reset_color%}\
$(current_venv)$FG[032]
$(git_prompt_info)%~\
$FG[105]%(!.#.»)%{$reset_color%} '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='${return_code}'


# color vars
eval my_gray='$FG[237]'
eval my_orange='$FG[214]'

# right prompt
RPROMPT='$my_gray%D{[%I:%M:%S]}-%n@%m%{$reset_color%}%'

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="$FG[075](branch:"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$my_orange*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[075])%{$reset_color%}"
