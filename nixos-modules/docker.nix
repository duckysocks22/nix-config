{
  virtualisation.docker.enable = true;

  users.users.socks.extraGroups = [ "docker" ];
  
  virtualisation.docker.daemon.settings = {
   data-root = "/data/docker";
  };
}
