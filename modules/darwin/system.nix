{ pkgs, ... }: {
  # System configuration
  # primaryUser is set in each host configuration
  system.stateVersion = 4;

  # Shell configuration
  programs.zsh.enable = true;
  programs.fish.enable = true;
  environment.shells = with pkgs; [ zsh bash fish nushell ];
  users.defaultUserShell = pkgs.fish;

  # Nix configuration
  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';

  # System packages and paths
  environment = {
    systemPackages = with pkgs; [ coreutils nushell ];
    systemPath = [ "/opt/homebrew/bin/" ];
    pathsToLink = [ "/Applications" ];
  };

  # IDs configuration
  ids.gids.nixbld = 350;

  # sudo via finger
  security.pam.services.sudo_local.touchIdAuth = true;

  # Enhance modules/darwin/system.nix
  system.defaults = {
    dock = {
      autohide = true;
      orientation = "left";
      show-recents = false;
      tilesize = 48;
      persistent-apps = [
        { app = "System/Applications/Mail.app"; }
        { app = "/Applications/Zotero.app"; }
        { app = "/Applications/Zen.app"; }
        { app = "/Applications/Zed.app"; }
        { app = "/System/Applications/System Settings.app"; }
      ];
    };

    finder = {
      AppleShowAllExtensions = true;
      ShowPathbar = true;
      ShowStatusBar = true;
      FXDefaultSearchScope = "SCcf"; # Search current folder
    };

    NSGlobalDomain = {
      # Faster key repeat
      KeyRepeat = 2;
      InitialKeyRepeat = 15;

      # Show file extensions
      AppleShowAllExtensions = true;

      # Disable auto-correct
      NSAutomaticSpellingCorrectionEnabled = false;
    };

    # Screenshot settings
    screencapture = {
      location = "~/Pictures/Screenshots";
      type = "png";
    };
  };

}
