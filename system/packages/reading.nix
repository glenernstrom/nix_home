{config, pkgs, ... }:  
{
  environment.systemPackages = with pkgs; 
    [
     newsflash
     foliate
     calibre
     cozy
    # pdfarranger
     papers
     ];
}

