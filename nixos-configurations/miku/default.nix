{ ezModules, ... }:

{
  imports = [
    ./configuration.nix
    ezModules.nix
    ezModules.nvidia
    ezModules.network
    ezModules.minecraft
    ezModules.vesktop
    ezModules.browsers
    ezModules.qbittorrent
    ezModules.libreoffice
    ezModules.mikualiases
    ezModules.gacha
    ezModules.cachix
    ezModules.steam
  ];
}
