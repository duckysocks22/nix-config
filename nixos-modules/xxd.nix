{ pkgs, ...}:

{
  environment.systemPackages = [
    pkgs.unixtools.xxd
  ];
}
