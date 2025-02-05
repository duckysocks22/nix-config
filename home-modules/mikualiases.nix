{ config, ...}:
{
home = {
    shellAliases = {
      rebuild = "sudo nixos-rebuild switch -L --flake /home/socks/files/nix-config/";
      ncd = "cd /home/socks/files/nix-config/";
    };
  };
}
