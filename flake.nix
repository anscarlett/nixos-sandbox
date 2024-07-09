{
  description = "A flake for the flake.nix project";

  inputs = {};

  outputs = { self, ... }: let
	nixosVersion = "24.05";
	adminUser = "adrian";
	hostPrefix = "nixos";
	system = "x86_64-linux";
  in {
	packages.x86_64-linux.myConfig = {
	  inherit nixosVersion adminUser hostPrefix system;
	};
  };
}