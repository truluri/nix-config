{ ... }: {
  programs.git = {
    enable = true;
    userName = "Noah Syrkis";
    userEmail = "noah@syrkis.com";

    signing = {
      key = null; # Set to your SSH public key path if you want to sign commits
      signByDefault = false; # Set to true once you configure signing
      format = "ssh";
    };

    extraConfig = {
      # Core settings
      core = {
        editor = "nvim";
        autocrlf = "input"; # Handle line endings properly on macOS
        ignorecase = false; # Case-sensitive file names
      };

      # Better defaults
      init.defaultBranch = "main";
      pull.rebase = true; # Avoid merge commits when pulling
      push.autoSetupRemote = true; # Auto-setup tracking for new branches
      rebase.autoStash = true; # Auto-stash when rebasing

      # Better diff and merge tools
      diff.tool = "nvimdiff";
      merge.tool = "nvimdiff";

      # URL rewriting for SSH (if you prefer SSH over HTTPS)
      url."git@github.com:".insteadOf = "https://github.com/";

      # Better log formatting
      log.date = "iso";

      # Branch settings
      branch.sort = "-committerdate"; # Sort branches by most recent commit

      # Status settings
      status.showUntrackedFiles = "all";
    };

    # Useful aliases
    aliases = {
      # Status and info
      st = "status --short";
      s = "status";

      # Branching
      co = "checkout";
      br = "branch";
      sw = "switch";

      # Committing
      ci = "commit";
      cm = "commit -m";
      ca = "commit --amend";
      can = "commit --amend --no-edit";

      # Adding
      a = "add";
      aa = "add --all";
      ap = "add --patch";

      # Logging
      l = "log --oneline --graph --decorate";
      ll = "log --oneline --graph --decorate --all";
      last = "log -1 HEAD --stat";

      # Diffing
      d = "diff";
      dc = "diff --cached";

      # Undoing things
      unstage = "reset HEAD --";
      undo = "reset --soft HEAD~1";

      # Working with remotes
      pushf = "push --force-with-lease"; # Safer force push
      sync = "!git pull && git push";

      # Cleanup
      cleanup =
        "!git branch --merged | grep -v '\\*\\|main\\|master' | xargs -n 1 git branch -d";

      # Shortcuts for your ~/desk workflow
      desk = "!cd ~/desk && pwd";

      # Quick repo initialization
      init-empty = "!git init && git commit --allow-empty -m 'Initial commit'";
    };

    # Global gitignore
    ignores = [
      # macOS
      ".DS_Store"
      ".DS_Store?"
      "._*"
      ".Spotlight-V100"
      ".Trashes"
      "ehthumbs.db"
      "Thumbs.db"

      # Editors
      "*.swp"
      "*.swo"
      "*~"
      ".vscode/"
      "*.code-workspace"
      ".idea/"

      # Nix
      "result"
      "result-*"
      ".direnv/"

      # Environment files
      ".env"
      ".env.local"
      ".env.*.local"

      # Dependencies
      "node_modules/"
      "__pycache__/"
      "*.pyc"
      ".pytest_cache/"
      "target/" # Rust
      "dist/"
      "build/"

      # Logs
      "*.log"
      "npm-debug.log*"
      "yarn-debug.log*"
      "yarn-error.log*"

      # OS generated files
      "ehthumbs.db"
      "Thumbs.db"
    ];
  };
}
