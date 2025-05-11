{ pkgs, ... }: {
  programs.steam = {
    enable = true;
    extraCompatPackages = with pkgs; [ proton-ge-bin ];
  };

  programs.gamescope = {
    enable = true;
  };
}