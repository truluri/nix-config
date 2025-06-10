{ ... }: {
  programs.git = {
    enable = true;
    userName = "Noah Syrkis";
    userEmail = "noah@syrkis.com";

    signing = {
      key = null;
      signByDefault = false;
      format = "ssh";
    };

    extraConfig = {
      # Core settings
      core = {
        editor = "nvim";
        excludesfile = "~/.config/git/ignore"; # Explicitly set this
        autocrlf = "input";
        ignorecase = false;
      };

      # ... rest of your extraConfig
    };

    aliases = {
      st = "status --short";
      # ... rest of your aliases
    };

    # Global gitignore
    ignores = [
      ".DS_Store"
      ".DS_Store?"
      "._*"
      ".Spotlight-V100"
      ".Trashes"
      "*.swp"
      "*.swo"
      "*~"
      ".vscode/"
      ".env"
      "node_modules/"
      "__pycache__/"
      "*.pyc"
      "result"
      "result-*"
      ".direnv/"
    ];
  };
}
