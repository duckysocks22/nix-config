{ ezModules, ... }:

{
  imports = [
    ./socks.nix
    ezModules.qbittorrent
  ];

  home.stateVersion = "24.05";
}
