# nix-config

## setup

- `curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install` instal nix
- `source /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh` ensre it is in your path
- `git clone https://github.com/syrkis/nix-config.git ~/nix-config` clone my nix config
- `cd ~/nix-config` Go to it
- `sudo nix run nix-darwin --extra-experimental-features nix-command  --extra-experimental-features flakes -- switch --flake ~/nix-config#$(hostname -s)` install nix darwin
- `sudo darwin-rebuild switch --flake ~/nix-config#$(hostname -s)` apply config
- `sudo chsh -s $(which fish) $(whoami)`

## nice to haves

- `defaults write NSGlobalDomain ApplePersistence -bool false` disable persistence
