{ config, pkgs, lib, ... }: {
  wayland.windowManager.hyprland.extraConfig = ''
    # change monitor to hires, the last argument is the scale factor
    monitor=,preferred,auto,auto

    # See https://wiki.hyprland.org/Configuring/Keywords/ for more

    # Execute your favorite apps at launch
    exec-once = waybar & hyprpaper & dunst

    # Source a file (multi-file configs)
    source = ~/.config/hypr/hyprui.conf

    # Some default env vars.
    env = XCURSOR_SIZE,24

    # For all categories, see https://wiki.hyprland.org/Configuring/Variables/
    input {
        kb_layout = us
        kb_variant =
        kb_model =
        kb_options = caps:escape
        kb_rules =

        follow_mouse = 1

        touchpad {
            natural_scroll = true
        }

        sensitivity = -0.1 # -1.0 - 1.0, 0 means no modification.
    }



    dwindle {
        # See https://wiki.hyprland.org/Configuring/Dwindle-Layout/ for more
        pseudotile = yes # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
        preserve_split = yes # you probably want this
    }

    master {
        # See https://wiki.hyprland.org/Configuring/Master-Layout/ for more
        new_is_master = true
    }

    gestures {
        # See https://wiki.hyprland.org/Configuring/Variables/ for more
        workspace_swipe = off
    }

    # Example per-device config
    # See https://wiki.hyprland.org/Configuring/Keywords/#executing for more
    device:epic-mouse-v1 {
        sensitivity = -0.5
    }

    # Example windowrule v1
    # windowrule = float, ^(kitty)$
    # Example windowrule v2
    # windowrulev2 = float,class:^(kitty)$,title:^(kitty)$
    # See https://wiki.hyprland.org/Configuring/Window-Rules/ for more


    # See https://wiki.hyprland.org/Configuring/Keywords/ for more
    $mainMod = SUPER
    $term=kitty
    $browser=librewolf

    # Example binds, see https://wiki.hyprland.org/Configuring/Binds/ for more
    bind = $mainMod, RETURN, exec, kitty
    bind = $mainMod, w, killactive 
    bind = $mainMod, SPACE, togglefloating 
    bind = $mainMod, x, exec,dunstctl close-all 
    bind = $mainMod, c, exec,librewolf  
    bind = $mainMod, v, togglefloating 
    bind = $mainMod, f, fullscreen 
    bind = $mainMod, d, exec,pkill rofi || rofi -show drun
    bind = $mainMod, p, exec,librewolf -private-window  
    bind = $mainMod, e, exec,thunar
    bind = $mainMod SHIFT, s, exec, shotman --capture output
    bind = $mainMod SHIFT, x, exec, shotman --capture region


    #volume button 
    binde=, XF86AudioRaiseVolume, exec, wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%+
    bindl=, XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
    bind =, XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
    #brightness
    # bind =, XF86MonBrightnessUp, exec ,brightnessctl set 1%+ 
    # bind =, XF86MonBrightnessDown, exec, brightnessctl set 1%-

    # Move focus with mainMod + arrow keys
    bind = $mainMod, h, movefocus, l
    bind = $mainMod, l, movefocus, r
    bind = $mainMod, k, movefocus, u
    bind = $mainMod, j, movefocus, d

    # Move
    bind = $mainMod SHIFT, h, movewindow, l
    bind = $mainMod SHIFT, l, movewindow, r
    bind = $mainMod SHIFT, k, movewindow, u
    bind = $mainMod SHIFT, j, movewindow, d
    # Resize
    bind = $mainMod CTRL, h, resizeactive, -20 0
    bind = $mainMod CTRL, l, resizeactive, 20 0
    bind = $mainMod CTRL, k, resizeactive, 0 -20
    bind = $mainMod CTRL, j, resizeactive, 0 20


    # Switch workspaces with mainMod + [0-9]
    bind = $mainMod, 1, workspace, 1
    bind = $mainMod, 2, workspace, 2
    bind = $mainMod, 3, workspace, 3
    bind = $mainMod, 4, workspace, 4
    bind = $mainMod, 5, workspace, 5
    bind = $mainMod, 6, workspace, 6
    bind = $mainMod, 7, workspace, 7
    bind = $mainMod, 8, workspace, 8
    bind = $mainMod, 9, workspace, 9
    bind = $mainMod, 0, workspace, 10

    # Move active window to a workspace with mainMod + SHIFT + [0-9]
    bind = $mainMod SHIFT, 1, movetoworkspace, 1
    bind = $mainMod SHIFT, 2, movetoworkspace, 2
    bind = $mainMod SHIFT, 3, movetoworkspace, 3
    bind = $mainMod SHIFT, 4, movetoworkspace, 4
    bind = $mainMod SHIFT, 5, movetoworkspace, 5
    bind = $mainMod SHIFT, 6, movetoworkspace, 6
    bind = $mainMod SHIFT, 7, movetoworkspace, 7
    bind = $mainMod SHIFT, 8, movetoworkspace, 8
    bind = $mainMod SHIFT, 9, movetoworkspace, 9
    bind = $mainMod SHIFT, 0, movetoworkspace, 10

    # Scroll through existing workspaces with mainMod + scroll
    bind = $mainMod, mouse_down, workspace, e+1
    bind = $mainMod, mouse_up, workspace, e-1

    # Move/resize windows with mainMod + LMB/RMB and dragging
    bindm = SUPER, mouse:272, movewindow
    bindm = SUPER, mouse:273, resizewindow
    bind = SUPER, mouse_down, workspace, e+1
    bind = SUPER, mouse_up, workspace, e-1'';
}
