{ pkgs, ... }:

{
  nix = {
    package = pkgs.lix;
    settings = {
      auto-optimise-store = true;
      experimental-features = [ "flakes" "nix-command" "repl-flake" ];
      keep-derivations = true;
      keep-outputs = true;
    };
  };
}
