{config, pkgs, ...}:  

{  
environment.systemPackages = with pkgs; 
  [
   obs-studio
   vlc
   kdePackages.kdenlive
   shotcut
   yt-dlp
  ];
}
