{config, pkgs, ... }:
{
environment.systemPackages = with pkgs; 
  [
   git
   wget
   yazi
   zellij
   tesseract
  ];
}

 
 
