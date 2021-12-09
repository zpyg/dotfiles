# plugins {{{
. /usr/share/zinit/zinit.zsh
zinit wait lucid for \
    zdharma-continuum/fast-syntax-highlighting \
    OMZP::fzf \
    Aloxaf/fzf-tab \
    skywind3000/z.lua \
    atload"zicompinit; zicdreplay" blockf OMZL::completion.zsh
# }}}
# vi-mode {{{
# 设置键绑定
bindkey -v
# 减少光标切换延迟
export KEYTIMEOUT=5
# 修复进入 vim 后光标样式改变 {{{
    zle-line-init() {
        echo -ne "\e[5 q"
    }
    zle -N zle-line-init
# }}}
# 自动改变不同模式下的光标样式 {{{
    zle-keymap-select() {
      if [[ ${KEYMAP} == vicmd ]] ||
         [[ $1 = 'block' ]]; then
        echo -ne '\e[1 q'
      elif [[ ${KEYMAP} == main ]] ||
           [[ ${KEYMAP} == viins ]] ||
           [[ ${KEYMAP} = '' ]] ||
           [[ $1 = 'beam' ]]; then
        echo -ne '\e[5 q'
      fi
      zle reset-prompt
    }
    zle -N zle-keymap-select
# }}}
# }}}
# history search by arrow {{{
autoload -U up-line-or-beginning-search; zle -N up-line-or-beginning-search
bindkey -M viins '^[[A' up-line-or-beginning-search
autoload -U down-line-or-beginning-search; zle -N down-line-or-beginning-search
bindkey -M viins '^[[B' down-line-or-beginning-search
# }}}
# history {{{
HISTFILE=~/.zsh_history
HISTSIZE=8192
SAVEHIST=8192
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY
# }}}
# alias {{{
# directory
setopt autocd
alias ...="cd ../../"
alias ....="cd ../../../"
alias l="exa --long --icons --git"
alias ll="exa --long --all --classify --git"
alias la="exa --classify"
alias lt="exa --all --tree --level"
alias li="dust -d"
alias md='mkdir -p'
alias rm='trash'
alias rd='trash -rf'
# python -m http.server -d /usr/share/yacd 3000
# ffmpeg -crf 28 -i ... x.mp4
# trash-empty -f --all-users
# program
alias c="clear"
alias n="neofetch"
alias ipy=ipython
# file type
alias -s mp3=mpv
alias -s mp4='run mpv'
alias -s mkv='run mpv'
alias -s png='run feh'
alias -s docx='run wps'
# trashlate-shell
alias trans='http_proxy= trans'
alias tb='trans -b'
alias td='trans -d'
alias tp='trans -p'
alias tbe='tb :en'
alias tde='td :en'
# }}}
# functions {{{
function setproxy() {
    http_proxy=http://127.0.0.1:7890
    https_proxy=http://127.0.0.1:7890
    all_proxy=http://127.0.0.1:7890
}
function unproxy() {
    http_proxy=
    https_proxy=
    all_proxy=
}
function expy() {
    python -c "print($*)"
}
function run() {
    sh -c "$* &"
}
function runx() {
    run $*
    exit
}
# }}}
# fzf {{{
export FZF_COMPLETION_TRIGGER='\'
# }}}
# colored man pages {{{
export LESS_TERMCAP_mb=$'\E[01;34m' # start blink
export LESS_TERMCAP_md=$'\E[01;31m' # start bold
export LESS_TERMCAP_me=$'\E[0m' # turn off bold, blink and underline
export LESS_TERMCAP_us=$'\E[01;32m' # start underline
export LESS_TERMCAP_ue=$'\E[0m' #  stop underline
export LESS_TERMCAP_so=$'\E[01;36;40m' # start standout
export LESS_TERMCAP_se=$'\E[0m' # stop standout
# }}}
# startship init {{{
# ZSH has a quirk where `preexec` is only run if a command is actually run (i.e
# pressing ENTER at an empty command line will not cause preexec to fire). This
# can cause timing issues, as a user who presses "ENTER" without running a command
# will see the time to the start of the last command, which may be very large.

# To fix this, we create STARSHIP_START_TIME upon preexec() firing, and destroy it
# after drawing the prompt. This ensures that the timing for one command is only
# ever drawn once (for the prompt immediately after it is run).

zmodload zsh/parameter  # Needed to access jobstates variable for STARSHIP_JOBS_COUNT

# Defines a function `__starship_get_time` that sets the time since epoch in millis in STARSHIP_CAPTURED_TIME.
zmodload zsh/datetime
zmodload zsh/mathfunc
__starship_get_time() {
    (( STARSHIP_CAPTURED_TIME = int(rint(EPOCHREALTIME * 1000)) ))
}

# Will be run before every prompt draw
starship_precmd() {
    # Save the status, because commands in this pipeline will change $?
    STARSHIP_CMD_STATUS=$? STARSHIP_PIPE_STATUS=(${pipestatus[@]})

    # Compute cmd_duration, if we have a time to consume, otherwise clear the
    # previous duration
    if (( ${+STARSHIP_START_TIME} )); then
        __starship_get_time && (( STARSHIP_DURATION = STARSHIP_CAPTURED_TIME - STARSHIP_START_TIME ))
        unset STARSHIP_START_TIME
    else
        unset STARSHIP_DURATION
    fi

    # Use length of jobstates array as number of jobs. Expansion fails inside
    # quotes so we set it here and then use the value later on.
    STARSHIP_JOBS_COUNT=${#jobstates}
}
starship_preexec() {
    __starship_get_time && STARSHIP_START_TIME=$STARSHIP_CAPTURED_TIME
}

# If precmd/preexec arrays are not already set, set them. If we don't do this,
# the code to detect whether starship_precmd is already in precmd_functions will
# fail because the array doesn't exist (and same for starship_preexec)
(( ! ${+precmd_functions} )) && precmd_functions=()
(( ! ${+preexec_functions} )) && preexec_functions=()

# If starship precmd/preexec functions are already hooked, don't double-hook them
# to avoid unnecessary performance degradation in nested shells
if [[ -z ${precmd_functions[(re)starship_precmd]} ]]; then
    precmd_functions+=(starship_precmd)
fi
if [[ -z ${preexec_functions[(re)starship_preexec]} ]]; then
    preexec_functions+=(starship_preexec)
fi

__starship_get_time && STARSHIP_START_TIME=$STARSHIP_CAPTURED_TIME

export STARSHIP_SHELL="zsh"

# Set up the session key that will be used to store logs
STARSHIP_SESSION_KEY="$RANDOM$RANDOM$RANDOM$RANDOM$RANDOM"; # Random generates a number b/w 0 - 32767
STARSHIP_SESSION_KEY="${STARSHIP_SESSION_KEY}0000000000000000" # Pad it to 16+ chars.
export STARSHIP_SESSION_KEY=${STARSHIP_SESSION_KEY:0:16}; # Trim to 16-digits if excess.

VIRTUAL_ENV_DISABLE_PROMPT=1

setopt promptsubst

PROMPT='$(/usr/bin/starship prompt --terminal-width="$COLUMNS" --keymap="${KEYMAP:-}" --status="$STARSHIP_CMD_STATUS" --pipestatus="${STARSHIP_PIPE_STATUS[*]}" --cmd-duration="${STARSHIP_DURATION:-}" --jobs="$STARSHIP_JOBS_COUNT")'
RPROMPT='$(/usr/bin/starship prompt --right --terminal-width="$COLUMNS" --keymap="${KEYMAP:-}" --status="$STARSHIP_CMD_STATUS" --pipestatus="${STARSHIP_PIPE_STATUS[*]}" --cmd-duration="${STARSHIP_DURATION:-}" --jobs="$STARSHIP_JOBS_COUNT")'
# }}}
# vim: foldmethod=marker:foldlevel=0
