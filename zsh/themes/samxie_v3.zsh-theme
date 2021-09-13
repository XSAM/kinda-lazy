setopt prompt_subst

local ret_status="%(?:%{$fg_bold[green]%}$:%{$fg_bold[red]%}$)"
local lapsed_status_prefix="%{$fg_bold[white]%}took %{$fg_bold[yellow]%}"
prompt_begin() {
  echo -n "\n%{$reset_color%}"
}

prompt_end() {
  echo -n "\n${ret_status} %{$reset_color%}"
}

PROMPT='$(prompt_begin)# %{$fg_bold[blue]%}%n%{$reset_color%} %{$fg[white]%}@ %{$fg_bold[cyan]%}%M %{$reset_color%}%{$fg[white]%}in %{$fg_bold[black]%}%~ %{$reset_color%}[%*] $(git_prompt_info)${lapsed_status_prefix}$lapsed_time $(prompt_end)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
