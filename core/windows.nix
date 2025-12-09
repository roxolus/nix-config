{ ... }:
{
 fileSystems."/mnt/windows" = {
    	device = "/dev/sda2";
    	fsType = "ntfs-3g";
    	options = [ "uid=1000" "gid=100" "defaults" ];
 };
}
