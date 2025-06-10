# nix-config

## setup

- `curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install` instal nix
- `source /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh` ensre it is in your path
- `git clone https://github.com/syrkis/nix-config.git ~/nix-config` clone my nix config
- `cd ~/nix-config` Go to it
- `sudo nix run nix-darwin --extra-experimental-features nix-command  --extra-experimental-features flakes -- switch --flake ~/nix-config#mac624172` install nix darwin
- `sudo darwin-rebuild switch --flake ~/nix-config#mac624172` apply config
- `sudo chsh -s $(which fish) $(whoami)`
