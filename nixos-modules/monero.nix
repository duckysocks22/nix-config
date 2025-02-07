{ pkgs, ...}:

{
  environment.systemPackages = [
    pkgs.monero-cli
    pkgs.xmrig
  ];
}
