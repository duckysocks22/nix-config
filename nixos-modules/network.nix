{lib, ...}:
{
  services.tailscale.enable = true;
  
  networking.search = [ "tailca311e.ts.net" ];
  networking.nameservers = [
    "100.100.100.100"
    "1.1.1.1"
    "8.8.8.8"
  ];

  networking.networkmanager.enable = lib.mkDefault true;

}
