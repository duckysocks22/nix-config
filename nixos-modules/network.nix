{lib, ...}:
{
  services.tailscale.enable = true;
  
  networking.enableIPv6 = false;

  networking.search = [ "tailca311e.ts.net" ];
  networking.nameservers = [
    "100.100.100.100"
    "1.1.1.1"
    "8.8.8.8"
    "75.75.75.75"
  ];

  networking.defaultGateway = "10.0.0.1";

  networking.firewall = {
    enable = true;
    checkReversePath = "loose";
    # Port List

    #allowedUDPPortRanges = [
    #  { from = 9000; to = 9003; }
    #  { from = 15290; to = 15300; }
    #  { from = 1270; to = 1280; }
    #  {
    #];
  };

}
