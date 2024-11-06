function starship_transient_prompt_func
  starship module character 
end

if status --is-login
  if test (tty)=/dev/tty1
    if not test -n "$TMUX"
      exec Hyprland
    end
  end
end
if status is-interactive
  starship init fish | source
  direnv hook fish | source
  enable_transience
end
