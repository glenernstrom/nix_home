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
            knitr
            car
            DHARMa
            emmeans
            NHANES
            faraway
            DescTools
            performance
            ];
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
          knitr
          car
          DHARMa
          emmeans
          faraway
          DescTools
          NHANES
          performance
          ]; 
        };
    in

  [
   RStudio-with-my-packages
   R-with-my-packages
   fiji
  # pymol
  ];
}
