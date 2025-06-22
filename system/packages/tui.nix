{config, pkgs, ... }:
{
environment.systemPackages = with pkgs; 
  [
   wget
   tui
   yazi
   zellij
   tesseract
  ];
}

 
 
