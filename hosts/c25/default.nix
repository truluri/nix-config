{ inputs, ... }: {
  imports = [
    ../../modules/darwin
    inputs.home-manager.darwinModules.home-manager
    inputs.nix-homebrew.darwinModules.nix-homebrew
  ];

  # Set primary user for this host
  system.primaryUser = "askebrunken";

  nix-homebrew = {
    # Install Homebrew under the default prefix
    enable = true;

    # Apple Silicon Only: Also install Homebrew under the default Intel prefix for Rosetta 2
    enableRosetta = false;

    autoMigrate = true;

    # User owning the Homebrew prefix
    user = "askebrunken";

    # Optional: Declarative tap management
    taps = {
      "homebrew/homebrew-core" = inputs.homebrew-core;
      "homebrew/homebrew-cask" = inputs.homebrew-cask;
    };

    # Automatically migrate existing Homebrew installations

    # Optional: Enable fully-declarative tap management
    # With mutableTaps disabled, taps can no longer be added imperatively with `brew tap`
    mutableTaps = false;
  };

  users.users.askebrunken = {
    name = "askebrunken";
    home = "/Users/askebrunken";
  };

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    users.askebrunken.imports = [ ../../modules/home-manager ];
    extraSpecialArgs = { inherit inputs; };
    backupFileExtension = "backup";
  };
}
