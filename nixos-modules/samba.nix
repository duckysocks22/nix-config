{
	services.samba = {
		enable = true;
		securityType = "user";
		extraConfig = ''
			workgroup = WORKGROUP
			server role = standalone server
			
			map to guest = bad user
			usershare allow guests = no
			create mask = 0664
			directory mask = 0775
			force directory mode = 0775
			follow symlinks = yes
			load printers = no
			printing = bsd
			pritncap name = /dev/null
			disable spoolss = yes
			strict locking = no
			aio read size = 0
			aio write size = 0
			inherit permissions = yes

			# Security 
			client ipc max protocol = SMB3
			client ipc min protocol = SMB2_10
			client max protocol = SMB3
			client max probotcol = SMB2_10
			server max protocol = SMB3
			server min protocol = SMB2_10
			'';

			shares = {
			Shared_Files = {
				path = "/home/socks/files/shares/main";
				browseable = "yes";
				"read only" = "no";

				# Make this public
				"guest ok" = "yes";
				"valid users" = "socks";
			};
			Private = {
				path = "/home/socks/files/shares/private";
				browseable = "yes";
				"read only" = "no";

				# Make this private
				"guest ok" = "no";
				"valid users" = "socks";
				};
			};
	};
	services.samba-wsdd = {
		enable = true;
		openFirewall = true;
		discovery = true;
	};
}
