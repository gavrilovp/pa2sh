{ config, pkgs, ... }:

{
  networking.firewall.allowedTCPPorts = [ 80 443 ];

  services.nginx = {
    enable = true;
    virtualHosts."pa2sh.club" = {
      root = pkgs.copyPathToStore /home/pa2sh/pa2sh;
    };
  };
}
