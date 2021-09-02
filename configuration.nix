{ config, pkgs, ... }:

{
  networking.firewall.allowedTCPPorts = [ 80 443 ];

  services.nginx = {
    enable = true;
    virtualHosts."pa2sh.club" = {
      forceSSL = true;
      enableACME = true;

      root = pkgs.copyPathToStore /home/pa2sh/pa2sh/public;
    };
  };
}
