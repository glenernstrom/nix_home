{ config, pkgs, ... }:
{
environment.systemPackages = with pkgs; 
  [
   gnome-podcasts
   shortwave
   blanket
   high-tide
   audacity
  ];
}

