{ ezModules, ... }:

{
  imports = [
    ./configuration.nix
    ezModules.nix
    ezModules.samba
  ];
}
