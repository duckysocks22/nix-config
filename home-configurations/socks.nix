{ ezModules, ... }:

{

  imports = [
   ezModules.base
   ezModules.nvim
   ezModules.bash
  ];

  home = {
    username = "socks";
    homeDirectory = "/home/socks";
  };
}
