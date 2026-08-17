# Start mactop with the palette matching the current macOS appearance.
# The selected theme is re-evaluated each time mactop is launched.
mactop() {
  local config_dir="$XDG_CONFIG_HOME/mactop"
  local theme_name="light"

  if [[ "$(defaults read -g AppleInterfaceStyle 2>/dev/null)" == "Dark" ]]; then
    theme_name="dark"
  fi

  mkdir -p "$config_dir" || return
  ln -sfn "$HOME/dotfiles/mactop/themes/${theme_name}.json" "$config_dir/theme.json" || return
  command mactop "$@"
}
