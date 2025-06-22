{config, pkgs, lib, ...}:
{

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable scanning
  hardware.sane.enable = true;
  # may need to add "scanner" to user account config with extraGroups
  
  # Enable bluetooth
  hardware.bluetooth.enable = true; 
  hardware.bluetooth.powerOnBoot = true;

}
