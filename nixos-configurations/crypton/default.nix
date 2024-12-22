{ ezModules, ... }:

{
  imports = [
    ./configuration.nix
    ./vmbridge.nix
    ezModules.nix
    ezModules.samba
   # ezModules.proxmox
    ezModules.network
    ezModules.jellyfin
    ezModules.docker
    ezModules.qbittorrent-nox
    ezModules.docker-compose
    ezModules.ftp
  ];
}
