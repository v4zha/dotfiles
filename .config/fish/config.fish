if status --is-login
  if test (tty)=/dev/tty1
    exec Hyprland
  end
end
if status is-interactive
  starship init fish | source
end
