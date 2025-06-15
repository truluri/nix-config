{ pkgs, inputs, ... }: {
  home.packages = with pkgs; [
    # Rust toolchain
    inputs.fenix.packages.${pkgs.system}.stable.toolchain

    # Development tools
    typescript
    nodejs_22
    uv
    nixd
    nil
    nixpkgs-fmt
    nixfmt-classic
    biome
    swig4
    cmake

    # CLI utilities
    ripgrep
    fd
    fzf
    eza
    zoxide
    sd
    wget
    curl
    htop
    tealdeer
    croc
    just
    hurl
    nmap
    asciinema
    watch

    # Media & Graphics
    ffmpeg
    imagemagick
    ghostscript
    stremio

    # Documents & Publishing
    pandoc
    typst
    typstyle

    # Security & Privacy
    gnupg
    pinentry_mac # Better GPG pinentry for macOS
    (pass.withExtensions (ps: [ ps.pass-otp ]))

    # Communication
    himalaya

    # System utilities
    less
    starship
    bat
    ollama
    yazi
    dust
    procs

    # Specialized tools
    uiua
    nushell
    ruff
    ty

    # git stuff
    gh # GitHub CLI
    git-lfs # Large file support
    glab # GitLab CLI (if you use GitLab)

    # other
    epy

  ];
}
