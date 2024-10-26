{ pkgs, ... }:

{
  home.packages = with pkgs; [
   git
   ranger
   neovim
   hyfetch
  ];
}
