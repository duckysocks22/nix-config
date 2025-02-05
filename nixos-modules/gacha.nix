{ config, pkgs, inputs, ... }:

{
	imports = [
		inputs.aagl.nixosModules.default
	];
	
	programs.anime-game-launcher.enable = true;
	programs.honkers-railway-launcher.enable = true;
	programs.honkers-launcher.enable = true;
	programs.sleepy-launcher.enable = true;
}
