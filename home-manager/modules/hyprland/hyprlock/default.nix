{ ... }: 

{
  programs.hyprlock = {
    enable = true;
    settings = {
      general = {
        disable_loading_bar = true;
        hide_cursor = true;
        no_fade_in = false;
      };

      label = {
        text = "$TIME";
        font_size = 96;
        font_family = "JetBrains Mono";
        color = "rgba(255, 255, 255, 1.0)";
        position = "0, 100";
        shadow_passes = 1;
      };

      background = [
        {
          path = "screenshot";
          blur_passes = 2;
          blur_size = 2;
        }
      ];

      input-field = [
        {
          size = "200, 50";
          position = "0, -80";
          monitor = "";
          dots_center = true;
          font_color = "rgb(255, 255, 255)";
          inner_color = "rgb(40, 40, 40)";
          outer_color = "rgb(60, 56, 54)";
          outline_thickness = 5;
          placeholder_text = "sussy baka";
          shadow_passes = 1;
        }
      ];
    };
  };
}