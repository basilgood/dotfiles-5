{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    gnome3.pomodoro
    gnome3.gconf
  ];

  services = {
    openssh.enable = true;
    printing = {
      enable = true;
      drivers = [ pkgs.gutenprint ];
    };
    xserver = {
      enable = true;
      layout = "us";
      displayManager.gdm.enable = true;
      desktopManager.gnome3 = {
        enable = true;
        extraGSettingsOverrides = ''
          [org.gnome.desktop.interface]
          enable-animations=false
          [org.gnome.desktop.peripherals.touchpad]
          tap-to-click=true
        '';
        sessionPath = with pkgs.gnome3; [ pomodoro ];
      };
    };
    gnome3.gnome-keyring.enable = true;
    udisks2.enable = true;
  };
}