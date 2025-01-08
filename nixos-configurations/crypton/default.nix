{ ezModules, ... }:

{
  imports = [
    ./configuration.nix
    ./vmbridge.nix
    ezModules.nix
    ezModules.samba
    ezModules.jellyfin
    ezModules.docker
    ezModules.docker-compose
    ezModules.ftp
    ezModules.btop
    ezModules.network
    ezModules.cryptonaliases
  ];
}
