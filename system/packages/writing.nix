{config, pkgs, ...};
{
  environment.systemPackages = with pkgs; 
    [
      texliveFull
      texmaker
      citations
      logseq
      papers
    ];
}

