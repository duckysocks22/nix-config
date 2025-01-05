{ pkgs, ...}:

{
  environment.systemPackages = [
    pkgs.qbittorrent
  ];

 # services.qbittorrent = {
 #   enable = true;
 #   openFirewall = true;
 #   port = 8080;
 # };
}
