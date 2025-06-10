{ pkgs, inputs, ... }: {
  home.packages = with pkgs; [
    # Rust toolchain
    inputs.fenix.packages.${pkgs.system}.stable.toolchain

    # Development tools
    typescript
    nodejs_22
    clojure
    uv
    nixd
    nil
    nixpkgs-fmt
    nixfmt
    biome
    swig4
    cmake
    docker

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
    blender

    # Documents & Publishing
    pandoc
    typst
    typstyle
    hledger
    hledger-ui
    newcomputermodern

    # Security & Privacy
    (pass.withExtensions (ps: [ ps.pass-otp ]))

    # Communication
    himalaya

    # System utilities
    less
    starship
    bat
    ollama

    # Specialized tools
    uiua
    nushell
  ];
}