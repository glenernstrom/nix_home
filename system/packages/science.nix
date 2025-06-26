{config, pkgs, ...}:

{
  environment.systemPackages = with pkgs; 
  
    let 
      R-with-my-packages = rWrapper.override {
        packages = with rPackages; 
          [ ggplot2
            ggraph
            dplyr
            tidyr
            survival
            tidyverse
            shiny
            knitr ];
         };

      RStudio-with-my-packages = rstudioWrapper.override {
        packages = with rPackages;
        [ ggplot2
          ggraph
          dplyr
          tidyr 
          survival
          tidyverse
          shiny
          knitr ]; 
        };
    in

  [
   RStudio-with-my-packages
   R-with-my-packages
   python313Packages.numpy
   texliveFull
  # pymol
   fiji
  ];
}
