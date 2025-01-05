{ pkgs, config, lib, ...}:

{
  lib.functions.mkSimpleService = name: ExecStart: {
    ${name} = {
      Unit = {
        Description = "${name}";
      };
      Install = {
        WantedBy = [ "default.target" ];
      };
      Service = {
        inherit ExecStart;
	Restart = "on-failure";
	RestartSec = 5;
	Type = "simple";
      };
     }; 
    };

    systemd.user.services =
  config.lib.functions.mkSimpleService "qbittorrent"
  (lib.getExe pkgs.qbittorrent-nox);
}
