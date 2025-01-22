{ pkgs, ...}:

{
  environment.systemPackages = [
    pkgs.headscale
    ];
}
