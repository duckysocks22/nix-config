{ ... }:
{
  programs.bash.shellAliases = {
    rebuild = "sudo nixos-rebuild switch -L --flake /home/socks/nix-config/";
  };

}
