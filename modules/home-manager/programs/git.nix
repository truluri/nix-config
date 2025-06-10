{ ... }: {
  programs.git = {
    enable = true;
    userName = "Noah Syrkis";
    userEmail = "noah@syrkis.com";
    signing = {
      key = null; # Set to your signing key if you want to sign commits
      signByDefault = false;
      format = "ssh"; # or "gpg" depending on your preference
    };
  };
}