{
	services.samba = {
		enable = true;
		securityType = "user";
		settings = {
		  global = {
			"server role" = "standalone server";
			
			"map to guest" = "bad user";
			"usershare allow guests" = "no";
			"create mask" = "0664";
			"directory mask" = "0775";
			"force directory mode" = "0775";
			"follow symlinks" = "yes";
			"load printers" = "no";
			"printing" = "bsd";
			"printcap name" = "/dev/null";
			"disable spoolss" = "yes";
			"strict locking" = "no";
			"aio read size" = "0";
			"aio write size" = "0";
			"inherit permissions" = "yes";

			# Security 
			"client ipc max protocol" = "SMB3";
			"client ipc min protocol" = "SMB2_10";
			"client max protocol" = "SMB3";
			"client min protocol" = "SMB2_10";
			"server max protocol" = "SMB3";
			"server min protocol" = "SMB2_10";
			};

			"Shared_Files" = {
				"path" = "/data/shares/shared_files";
				"browseable" = "yes";
				"read only" = "no";

				# Set Users
				"guest ok" = "no";
				"force group" = "share";
			};
			"Jellyfin" = {
				"path" = "/data/shares/Jellyfin";
				"browseable" = "yes";
				"read only" = "no";

				#Set Users
				"guest ok" = "no";
				"force group" = "share";
			};
			"Private" = {
				"path" = "/data/shares/private";
				"browseable" = "yes";
				"read only" = "no";

				# Make this private
				"guest ok" = "no";
				"forge group" = "admin";
				};
                 }; 
	};
	services.samba-wsdd = {
		enable = true;
		openFirewall = true;
		discovery = true;
	};
}
