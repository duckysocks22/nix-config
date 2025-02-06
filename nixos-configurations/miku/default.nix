{ ezModules, ... }:

{
  imports = [
    ./configuration.nix
    ezModules.nix
    ezModules.nvidia
    ezModules.minecraft
    ezModules.vesktop
    ezModules.browsers
    ezModules.qbittorrent
    ezModules.libreoffice
    ezModules.mikualiases
    ezModules.gacha
    ezModules.cachix
    ezModules.steam
    ezModules.network
  ];
}
