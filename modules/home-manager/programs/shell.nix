{ ... }: {
  programs = {
    # Modern shell prompt
    starship.enable = true;
    
    # Terminal multiplexer
    zellij.enable = true;
    
    # Better cat with syntax highlighting
    bat.enable = true;
    
    # Directory navigation
    zoxide = {
      enable = true;
      enableFishIntegration = true;
      enableZshIntegration = true;
    };
    
    # Modern ls replacement
    eza = {
      enable = true;
      enableFishIntegration = true;
      enableZshIntegration = true;
      git = true;
      icons = "auto";
    };
    
    # Fuzzy finder
    fzf = {
      enable = true;
      enableFishIntegration = true;
      enableZshIntegration = true;
    };
    
    # Better grep
    ripgrep.enable = true;
  };
}