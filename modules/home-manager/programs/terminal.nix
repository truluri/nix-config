{ ... }: {
  programs = {
    # Terminal emulator
    alacritty = {
      enable = true;
      settings = {
        window = {
          opacity = 0.95;
          padding = {
            x = 10;
            y = 10;
          };
        };
        font = {
          normal = {
            family = "FiraCode Nerd Font";
            style = "Regular";
          };
          size = 14;
        };
        colors = {
          primary = {
            background = "#1e1e2e";
            foreground = "#cdd6f4";
          };
        };
      };
    };
    
    # Terminal file manager
    yazi = {
      enable = true;
      enableFishIntegration = true;
      enableZshIntegration = true;
    };
    
    # System monitor
    htop = {
      enable = true;
      settings = {
        show_cpu_frequency = true;
        show_cpu_temperature = true;
        tree_view = true;
      };
    };
    
    # Modern du replacement
    du-dust.enable = true;
    
    # Process viewer
    procs.enable = true;
  };
}