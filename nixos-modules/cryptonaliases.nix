{ ... }:
{
  programs.bash.shellAliases = {
    rebuild = "sudo nixos-rebuild switch -L --flake /home/socks/files/nix-config/";
    atm10-start = "docker compose -f /home/socks/files/nix-config/docker/allthemods10/docker-compose.yml -p allthemods10 up -d";
    mtg-start = "docker compose -f /home/socks/files/nix-config/docker/mikuthegathering/docker-compose.yml -p mikuthegathering up -d";
    mtg-attach = "docker attach mikuthegathering-mc-1";
    ncd = "cd /home/socks/files/nix-config";
  };

}
