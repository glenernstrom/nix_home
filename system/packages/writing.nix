{config, pkgs, ...}:
{
  environment.systemPackages = with pkgs; 
    [
      texliveFull
      libreoffice
      texmaker
      citations
      logseq
      papers
    ];
}

