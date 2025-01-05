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
    ezModules.docker-compose
   # ezModules.qbittorrent-nox
    ezModules.ftp
    ezModules.btop
  ];
}
