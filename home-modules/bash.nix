{ config, ... }:

{
		programs.bash = {
			enable = true;
			bashrcExtra = ''
			  export EDITOR="${config.home.sessionVariables.EDITOR}"
			  '';
			};

}
