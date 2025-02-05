{
  description = "miku is pretty cool i think";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    proxmox-nixos.url = "github:SaumonNet/proxmox-nixos";

    home-manager = {
      url = "github:nix-community/home-manager/release-24.1";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    flake-parts.url = "github:hercules-ci/flake-parts";

    # https://github.com/ehllie/ez-configs/pull/12
    ez-configs.url = "github:ehllie/ez-configs/user-home-modules";

    # Hoyo Games
    aagl.url = "github:ezKEa/aagl-gtk-on-nix/release-24.11";
    aagl.inputs.nixpkgs.follows = "nixpkgs"; # Name of nixpkgs input if you want to use
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
        "socks@miku".nameFunction = (_: "socks@miku");
      };
      nixos.hosts = {
       crypton.userHomeModules = { socks = "socks@crypton"; };
       rin.userHomeModules = { socks = "socks@rin"; };
       miku.userHomeModules = { socks = "socks@miku"; };
      };
    };
  };
}
