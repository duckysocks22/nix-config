{ pkgs, ...}:
{

virtualisation.docker.enable = true;
virtualisation.podman.enable = true;

environment.systemPackages = with pkgs; [
  docker-compose

];

users.users.socks.extraGroups = [ "docker" ];
}
