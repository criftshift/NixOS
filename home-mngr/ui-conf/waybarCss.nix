{
  programs.waybar.style = ''
    * {
      border: none;
      border-radius: 0px;
      font-family: "JetBrainsMono Nerd Font";
      font-weight: bold;
      font-size: 14px;
      min-height: 12px;
    }

    @define-color bar-bg rgba(0, 0, 0, 0);

    @define-color main-bg #11111b;
    @define-color main-fg #cdd6f4;

    @define-color wb-act-bg #a6adc8;
    @define-color wb-act-fg #313244;

    @define-color wb-hvr-bg #f5c2e7;
    @define-color wb-hvr-fg #313244;

    window#waybar {
        background: @bar-bg;
    }

    tooltip {
        background: @main-bg;
        color: @main-fg;
        border-radius: 7px;
        border-width: 0px;
    }

    #workspaces button {
      box-shadow: none;
      text-shadow: none;
      padding: 0px;
      border-radius: 9px;
      margin-top: 3px;
      margin-bottom: 3px;
      margin-left: 0px;
      padding-left: 3px;
      padding-right: 3px;
      margin-right: 0px;
      color: @main-fg;
      animation: ws_normal 20s ease-in-out 1;
    }

    #workspaces button.active {
        background: @wb-act-bg;
        color: @wb-act-fg;
        margin-left: 3px;
        padding-left: 12px;
        padding-right: 12px;
        margin-right: 3px;
        animation: ws_active 20s ease-in-out 1;
        transition: all 0.4s cubic-bezier(.55,-0.68,.48,1.682);
    }

    #workspaces button:hover {
        background: @wb-hvr-bg;
        color: @wb-hvr-fg;
        animation: ws_hover 20s ease-in-out 1;
        transition: all 0.3s cubic-bezier(.55,-0.68,.48,1.682);
    }

    #taskbar button {
        box-shadow: none;
      text-shadow: none;
        padding: 0px;
        border-radius: 9px;
        margin-top: 3px;
        margin-bottom: 3px;
        margin-left: 0px;
        padding-left: 3px;
        padding-right: 3px;
        margin-right: 0px;
        color: @wb-color;
        animation: tb_normal 20s ease-in-out 1;
    }

    #taskbar button.active {
        background: @wb-act-bg;
        color: @wb-act-color;
        margin-left: 3px;
        padding-left: 12px;
        padding-right: 12px;
        margin-right: 3px;
        animation: tb_active 20s ease-in-out 1;
        transition: all 0.4s cubic-bezier(.55,-0.68,.48,1.682);
    }

    #taskbar button:hover {
        background: @wb-hvr-bg;
        color: @wb-hvr-color;
        animation: tb_hover 20s ease-in-out 1;
        transition: all 0.3s cubic-bezier(.55,-0.68,.48,1.682);
    }

    #backlight,
    #battery,
    #bluetooth,
    #custom-cliphist,
    #clock,
    #custom-cpuinfo,
    #cpu,
    #custom-gpuinfo,
    #idle_inhibitor,
    #custom-keybindhint,
    #language,
    #memory,
    #mpris,
    #network,
    #custom-power,
    #pulseaudio,
    #custom-spotify,
    #taskbar,
    #custom-theme,
    #tray,
    #custom-updates,
    #custom-wallchange,
    #custom-wbar,
    #window,
    #disk,
    #temperature,
    #workspaces,
    #custom-l_end,
    #custom-r_end,
    #custom-sl_end,
    #custom-sr_end,
    #custom-rl_end,
    #custom-rr_end {
        color: @main-fg;
        background: @main-bg;
        opacity: 1;
        margin: 4px 0px 4px 0px;
        padding-left: 4px;
        padding-right: 4px;
    }

    #workspaces,
    #taskbar {
        padding: 0px;
    }

    #custom-r_end {
        border-radius: 0px 21px 21px 0px;
        margin-right: 9px;
        padding-right: 3px;
    }

    #custom-l_end {
        border-radius: 21px 0px 0px 21px;
        margin-left: 9px;
        padding-left: 3px;
    }

    #custom-sr_end {
        border-radius: 0px;
        margin-right: 9px;
        padding-right: 3px;
    }

    #custom-sl_end {
        border-radius: 0px;
        margin-left: 9px;
        padding-left: 3px;
    }

    #custom-rr_end {
        border-radius: 0px 7px 7px 0px;
        margin-right: 9px;
        padding-right: 3px;
    }

    #custom-rl_end {
        border-radius: 7px 0px 0px 7px;
        margin-left: 9px;
        padding-left: 3px;
    }'';
}