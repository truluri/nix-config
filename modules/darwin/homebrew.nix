{ ... }: {
  # Homebrew configuration - works with nix-homebrew
  homebrew = {
    enable = true; # This is required for nix-darwin to manage packages!
    caskArgs.no_quarantine = true;
    global.brewfile = true;

    brews = [
      "pkg-config"
      "watch"
      "bfg"
      "fswatch"
      "pdf2svg"
      "cmake"
      "gettext"
      "wakatime-cli"
      "gmp"
      "hiredis"
      "jpeg-turbo"
      "jsoncpp"
      "leveldb"
      "libogg"
      "libpng"
      "libvorbis"
      "luajit"
      "zstd"
      "gettext"
      "openssl"
      "tinymist"
    ];

    casks = [
      "brave-browser"
      "zen-browser"
      "logseq"
      "raycast"
      "zed"
      "iterm2"
      "skim"
      "obs"
      "vagrant"
      "ghostty"
      "spotify"
      "zotero"
      "obsidian"
      "stremio"
      "jupyterlab"
    ];
  };
}
