{ pkgs, ... }: {
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    defaultEditor = true;

    plugins = with pkgs.vimPlugins; [
      # Himalaya email client
      {
        plugin = himalaya-vim;
        config = ''
          " Himalaya configuration
          syntax on
          filetype plugin on
          set hidden

          " Optional: set folder picker (telescope, fzf, fzflua, or native)
          let g:himalaya_folder_picker = 'telescope'

          " Optional: enable telescope preview
          let g:himalaya_folder_picker_telescope_preview = 1
        '';
      }

      # Recommended plugins for better experience
      telescope-nvim
      plenary-nvim # Required by telescope
      fzf-vim
    ];

    extraConfig = ''
      " General Neovim settings
      syntax on
      filetype plugin on
      set hidden
    '';
  };
}