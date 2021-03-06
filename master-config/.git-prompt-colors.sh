# This is a theme for gitprompt.sh,
# it uses the default openSUSE bash prompt style with exit status

override_git_prompt_colors() {

  HOST_COLOUR="\[\033[38;5;075m\]"
  USER_COLOUR="\[\033[38;5;033m\]"
  GIT_PROMPT_THEME_NAME="Single_line_nono031"
  GIT_PROMPT_BRANCH="${BoldWhite}"
  GIT_PROMPT_PREFIX="("                 # start of the git info string
  GIT_PROMPT_SUFFIX=")"                 # the end of the git info string
  GIT_PROMPT_MASTER_BRANCH="${GIT_PROMPT_BRANCH}"
  GIT_PROMPT_UNTRACKED="${Red}⊘"
  GIT_PROMPT_CHANGED="${Red}≈"
  GIT_PROMPT_STAGED="${Green}●"

  if [ -z ${AWS_PROFILE:-} ]; then
    AWS_STRING=''
  else
    AWS_STRING="${Green}[$AWS_PROFILE] "
  fi

  GIT_PROMPT_START_USER="_LAST_COMMAND_INDICATOR_ ${AWS_STRING}${USER_COLOUR}\u${White}@${HOST_COLOUR}\h${White}:${USER_COLOUR}\w${ResetColor}"
  GIT_PROMPT_START_ROOT="_LAST_COMMAND_INDICATOR_ ${AWS_STRING}${BoldRed}\u${White}@${HOST_COLOUR}\h${White}:${USER_COLOUR}\w${ResetColor}"

  GIT_PROMPT_END_USER="${ResetColor}$ "
  GIT_PROMPT_END_ROOT="# ${ResetColor}"
}

reload_git_prompt_colors "Custom"

