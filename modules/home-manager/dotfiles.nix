{ inputs, ... }: {
  home.file = {
    # Zed editor configuration
    ".config/zed".source = "${inputs.dotfiles}/config/zed";
    
    # Neovim configuration
    # Note: This provides config files (init.lua, etc.) from dotfiles
    # The programs.neovim module in neovim.nix handles installation and plugins
    ".config/nvim".source = "${inputs.dotfiles}/config/nvim";
  };
}