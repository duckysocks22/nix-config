{ config, ...}:
{
home = {
    shellAliases = {
      rebuild = "sudo nixos-rebuild switch -L --flake /home/socks/files/nix-config/";
      ncd = "cd /home/socks/files/nix-config/";
      atm10-start = "docker compose -f /home/socks/files/nix-config/docker/allthemods10/docker-compose.yml -p allthemods10 up -d";
      atm10-attach = "docker attach allthemods10-mc-1";
    };
  };
}
