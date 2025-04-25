{
  # COMING SOON


  disko.devices = {
    disk = {
      my-disk = {
        device = "/dev/nvme0n1";
        type = "disk";
        content = {
          type = "gpt";
          partitions = {
            ESP = {
              type = "EF00";
              size = "512M";
              content = {
                type = "filesystem";
                format = "vfat";
                mountpoint = "/boot";
                mountOptions = [ "umask=0077" ];
              };
            };
            root = {
              size = "720G";
              content = {
                type = "filesystem";
                extraArgs = [ "-f" ];
                format = "";
              };
            };
          };
        };
      };
    };
  };
}