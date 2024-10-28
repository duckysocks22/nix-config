{ pkgs, ...}:

{
  environment.systemPackages = [
    pkgs.brave
    pkgs.librewolf
  ];
}
