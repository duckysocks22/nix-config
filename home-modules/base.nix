{ pkgs, ... }:

{
  home.packages = with pkgs; [
   git
   ranger
   hyfetch
  ];
}
