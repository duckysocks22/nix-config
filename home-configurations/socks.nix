{ ezModules, ... }:

{

  imports = [
   ezModules.base
  ];

  home = {
    username = "socks";
    homeDirectory = "/home/socks";
    stateVersion = "24.05";
  };
}
