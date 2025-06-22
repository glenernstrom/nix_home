{config, pkgs, ...}:  

{  
environment.systemPackages = with pkgs; 
  [
   obs-studio
   vlc
   kdePackages.kdenlive
   shotcut
   audacity
   yt-dlp
  ];
}
