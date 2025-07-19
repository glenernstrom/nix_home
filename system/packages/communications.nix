{ config, pkgs, ... }:
 
 {
  environment.systemPackages = with pkgs; 
    [
      iamb
      discord
      element-desktop
      mumble
      aerc
      zoom-us
    ]; 
  }

