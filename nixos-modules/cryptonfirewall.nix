{lib, ...}:
{
  networking.interfaces.eno3.ipv4.addresses = [ {
    address = "10.0.0.253";
    prefixLength = 16;
    } ];

  networking.defaultGateway = "10.0.0.1";

  networking.firewall = {
    enable = true;
    checkReversePath = "loose";
    allowedTCPPorts = [ 80 8096 8080 13378 25565 9001 ];
    allowedUDPPorts = [ 9003 ];
    # Port List
    # Jellyfin: 8096
    # qBittorrent: 8080
    # Audiobookshelf: 13378:80
    # Minecraft: 25565 9001 9003/udp

    #allowedUDPPortRanges = [
    #  { from = 9000; to = 9003; }
    #  { from = 15290; to = 15300; }
    #  { from = 1270; to = 1280; }
    #  {
    #];
  };

}
