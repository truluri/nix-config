{ inputs, ... }: {
  home.file = {
    # Zed editor configuration - specific files only
    ".config/zed/settings.json".source = "${inputs.dotfiles}/config/zed/settings.json";
    ".config/zed/themes".source = "${inputs.dotfiles}/config/zed/themes";
    
    # Neovim configuration
    # Note: This provides config files (init.lua, etc.) from dotfiles
    # The programs.neovim module in neovim.nix handles installation and plugins
    ".config/nvim".source = "${inputs.dotfiles}/config/nvim";
  };
}