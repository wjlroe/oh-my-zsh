# ZSH Theme - Based on Gallifrey
# 2012-02-12: Added rbenv_prompt_info
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

if which rbenv &> /dev/null; then
    PROMPT='%{$fg[green]%}%m%{$reset_color%} %2~ $(rbenv version|sed -e "s/ (set.*$//") $(git_prompt_info)%{$reset_color%}%B»%b '
else
    PROMPT='%{$fg[green]%}%m%{$reset_color%} %2~ $(git_prompt_info)%{$reset_color%}%B»%b '
fi

RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"
