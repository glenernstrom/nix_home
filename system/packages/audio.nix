{ config, pkgs, ... }:
{
environment.systemPackages = with pkgs; 
  [
   gnome-podcasts
   shotwave
   blanket
  ];
}

