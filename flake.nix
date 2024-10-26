{
  description = "miku is pretty cool i think";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";

    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    flake-parts.url = "github:hercules-ci/flake-parts";
    ez-configs.url = "github:ehllie/ez-configs";
  };

  outputs = { self, flake-parts, ... }@inputs: flake-parts.lib.mkFlake { inherit inputs; } {
    imports = [
      inputs.ez-configs.flakeModule
    ];

    systems = [ "x86_64-linux" ];

    ezConfigs = {
      root = ./.;
      globalArgs = { inherit inputs; };
      nixos.hosts = {
       crypton.userHomeModules = [ "socks" ];
      };
    };
  };
}
