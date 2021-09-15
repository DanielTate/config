prompt_indicator() {
   echo $'%B%b'
}

arrow_start() {
   echo "%{$FG[$ARROW_FG]%}%{$BG[$ARROW_BG]%}%B"
}

spacer() {
	echo '' 
}

arrow_end() {
   echo "%b%{$reset_color%}%{$FG[$NEXT_ARROW_FG]%}%{$BG[$NEXT_ARROW_BG]%}$(spacer)%{$reset_color%}"
}

ok_username() {
   ARROW_FG="016"
   ARROW_BG="226"
   NEXT_ARROW_BG="022"
   NEXT_ARROW_FG="040"
   echo "$(arrow_start) %n $(arrow_end)"
}

err_username() {
   ARROW_FG="016"
   ARROW_BG="160"
   NEXT_ARROW_BG="183"
   NEXT_ARROW_FG="160"
   echo "$(arrow_start) %n $(arrow_end)"
}

# return err_username if there are errors, ok_username otherwise
username() {
   echo "%(?.$(ok_username).$(err_username))"
}

directory() {
   ARROW_FG="027"
   ARROW_BG="045"
   NEXT_ARROW_BG="139"
   NEXT_ARROW_FG="183"
   # https://unix.stackexchange.com/questions/6463/find-searching-in-parent-directories-instead-of-subdirectories
   echo "$(arrow_start) %2~ $(arrow_end)"
}

current_time() {
   echo "%{$fg[white]%}%*%{$reset_color%}"
}

git_prompt() {
	if [ -d .git ]; then
		ARROW_FG="016"
		ARROW_BG="139"
		NEXT_ARROW_BG="139"
		NEXT_ARROW_FG="096"
		echo "$(arrow_start) $(git_prompt_info) $(arrow_end)"
	fi
}

node_version() {
	NPM=$(cat package.json | jq '.engines.node')

	if (( ${+NPM} )); then
		sed -e 's/^"//' -e 's/"$//' <<< "$NPM"
	fi
}

node_prompt() {
	if [ -f package.json ]; then
		ARROW_FG="022"
		ARROW_BG="040"

		echo "$(arrow_start)  $(node_version) $(arrow_end)"
	fi
}

# set the git_prompt_info text
ZSH_THEME_GIT_PROMPT_PREFIX="  "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# set the git_prompt_status text
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%} ✈%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} ✭%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%} ➦%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%} ✂%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[white]%} ✱%{$reset_color%}"

PROMPT='$(username)$(directory)$(node_prompt)$(git_prompt)
$(prompt_indicator) '
RPROMPT='$(git_prompt_status) $(current_time)'
