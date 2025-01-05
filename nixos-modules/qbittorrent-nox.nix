{ pkgs, ...}:
{

  environment.systemPackages = [
    pkgs.qbittorrent-nox
  ];

}
