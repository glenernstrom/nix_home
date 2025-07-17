{config, pkgs, ...}:
{
  environment.systemPackages = with pkgs; 
    [
    # texliveFull
      libreoffice
      texmaker
      papers
    ];
}

