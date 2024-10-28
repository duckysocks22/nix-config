{
  services.jellyfin = {
    enable = true;
    user = "socks";
    group = "users";
    openFirewall = true;
  };
}
