# Notify when a command running in an unfocused tmux pane takes >= 5 seconds.
autoload -Uz add-zsh-hook

_tmux_notify_preexec() {
  _tmux_notify_started_at=$EPOCHSECONDS
  _tmux_notify_command=$1
}

_tmux_notify_precmd() {
  local elapsed client_flags

  [[ -n $TMUX && -n $_tmux_notify_command ]] || return

  elapsed=$(( EPOCHSECONDS - ${_tmux_notify_started_at:-EPOCHSECONDS} ))
  client_flags=$(tmux display-message -p -t "$TMUX_PANE" '#{client_flags}' 2>/dev/null)

  if (( elapsed >= 5 )) && [[ $client_flags != focused ]]; then
    osascript \
      -e 'on run argv' \
      -e 'display notification (item 1 of argv) with title "tmux"' \
      -e 'end run' \
      -- "Finished: $_tmux_notify_command" >/dev/null 2>&1
  fi

  unset _tmux_notify_started_at _tmux_notify_command
}

add-zsh-hook preexec _tmux_notify_preexec
add-zsh-hook precmd _tmux_notify_precmd
