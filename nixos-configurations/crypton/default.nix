{ ezModules, ... }:

{
  imports = [
    ./configuration.nix
    ezModules.nix
    ezModules.samba
    ezModules.jellyfin
    ezModules.docker
    ezModules.docker-compose
    ezModules.ftp
    ezModules.btop
    ezModules.network
    ezModules.cryptonfirewall
    ezModules.cryptonaliases
    ezModules.headscale
    ezModules.openssl
    ezModules.xxd
    #ezModules.podman
  ];
}
