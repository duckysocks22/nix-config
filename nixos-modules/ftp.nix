{
 networking.firewall = { allowedTCPPorts = [ 20 21 ];
 			  connectionTrackingModules = [ "ftp" ];
			};

    services.vsftpd = {
      enable = true;
      writeEnable = true;
      localUsers = true;
      userlist = [ "socks" ];
      userlistEnable = true;
    };
}
