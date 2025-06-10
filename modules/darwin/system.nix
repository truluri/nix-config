{ pkgs, ... }: {
  # System configuration
  # primaryUser is set in each host configuration
  system.stateVersion = 4;

  # Shell configuration
  programs.zsh.enable = true;
  programs.fish.enable = true;
  environment.shells = with pkgs; [ zsh bash fish nushell ];

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

  # System defaults
  system.defaults.dock = {
    orientation = "left";
    autohide = true;
    # mineffect = "scale";
    # minimize-to-application = true;
    # mru-spaces = false;
  };

  system.defaults.dock.persistent-apps = [
    { app = "/Applications/Safari.app"; }
    { app = "/Applications/Zed.app"; }
  ];

  # IDs configuration
  ids.gids.nixbld = 350;

  # sudo via finger
  security.pam.services.sudo_local.touchIdAuth = true;
}
