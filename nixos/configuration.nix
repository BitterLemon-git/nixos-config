{ config, lib, pkgs, inputs, user, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./modules

    inputs.home-manager.nixosModules.default
  ];

  home-manager.backupFileExtension = "backup";

  time.timeZone = "Europe/Moscow";

  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_TIME = "en_GB.UTF-8";
  };

  services = {
    desktopManager.gnome.enable = true;
  };

  users.users.${user} = {
    isNormalUser = true;
    extraGroups = ["wheel" "networkmanager"];
  };

  swapDevices = [
    {
      device = "/.swapvol/swapfile";
    }
  ];

  system.stateVersion = "24.11"; # Do not
}
