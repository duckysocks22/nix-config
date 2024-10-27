{ ezModules, ... }:

{
  imports = [
    ./configuration.nix
    ezModules.nix
    ezModules.nvidia
  ];
}
