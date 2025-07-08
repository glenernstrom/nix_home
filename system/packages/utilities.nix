{config, pkgs, ... }:
{
environment.systemPackages = with pkgs; 
  [
    ghostty
    gnome-solanum
    pika-backup
    junction
    bitwarden
    gnome-tweaks
    gdm-settings
    gnome-extension-manager
    chromium
  ];
}
