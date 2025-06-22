{config, pkgs, ... }:
{
environment.systemPackages = with pkgs; 
  [
   wget
   yazi
   zellij
   tesseract
  ];
}

 
 
