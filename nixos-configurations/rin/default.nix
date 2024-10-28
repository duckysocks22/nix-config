{ ezModules, ... }:

{
  imports = [
    ./configuration.nix
    ezModules.nix
    ezModules.nvidia
    ezModules.network
  ];
}
