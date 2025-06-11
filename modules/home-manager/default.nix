{ ... }: {
  imports = [
    ./packages.nix
    ./programs/git.nix
    ./programs/neovim.nix
    ./programs/shell.nix
    # ./programs/terminal.nix
    # ./dotfiles.nix
  ];

  home.stateVersion = "25.11";
}
