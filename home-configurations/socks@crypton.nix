{ ezModules, ... }:

{
  imports = [
    ./socks.nix
    ezModules.qbittorrent
    ezModules.cryptonaliases
  ];

  home.stateVersion = "24.11";
}
