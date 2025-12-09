{ pkgs, ... }:
{
 users = {
	users.rocco = {
 		isNormalUser = true;
    		extraGroups = [ "wheel" "networkmanager" ];

		packages = with pkgs; [
      			tree
        	];
		shell = pkgs.zsh;	
 	};
 
 };



}
