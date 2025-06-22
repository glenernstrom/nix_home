{config, pkgs, ...}:
{
 environment.systemPackages = with pkgs;
   [
     libreoffice
     zoom-us
     rnote
     xouralpp
   ];
}
