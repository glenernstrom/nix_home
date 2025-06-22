{config, pkgs, ...}:

{
environment.systemPackages = with pkgs; 
  [
   inkscape
   gimp3
   switcheroo
   scribus
   eyedropper
   pdfarranger
  ];
}
