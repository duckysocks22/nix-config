{
  description = "miku is pretty cool i think";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";

    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    flake-parts.url = "github:hercules-ci/flake-parts";

    # https://github.com/ehllie/ez-configs/pull/12
    ez-configs.url = "github:ehllie/ez-configs/user-home-modules";
  };

  outputs = { self, flake-parts, ... }@inputs: flake-parts.lib.mkFlake { inherit inputs; } {
    imports = [
      inputs.ez-configs.flakeModule
    ];

    systems = [ "x86_64-linux" ];

    ezConfigs = {
      root = ./.;
      globalArgs = { inherit inputs; };
      home.users = {
        "socks".nameFunction = (_: "socks");
	"socks@crypton".nameFunction = (_: "socks@crypton");
        "socks@rin".nameFunction = (_: "socks@rin");
      };
      nixos.hosts = {
       crypton.userHomeModules = { socks = "socks@crypton"; };
       rin.userHomeModules = { socks = "socks@rin"; };
      };
    };
  };
}
