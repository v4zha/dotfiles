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

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'micromamba shell init' !!
set -gx MAMBA_EXE "/home/arvin-ts406/.local/bin/micromamba"
set -gx MAMBA_ROOT_PREFIX "/home/arvin-ts406/micromamba"
$MAMBA_EXE shell hook --shell fish --root-prefix $MAMBA_ROOT_PREFIX | source
# <<< mamba initialize <<<
