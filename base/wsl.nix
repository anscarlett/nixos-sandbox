{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-${inputs.flake.nixosVersion}";
    nixos-wsl.url = "github:nix-community/NixOS-WSL/main";
    flake = ../.;
  };

  outputs = { self, nixpkgs, nixos-wsl, ... }: {
    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          nixos-wsl.nixosModules.default
          {
            system.stateVersion = "24.05";
            wsl.enable = true;
          }
        ];
      };
    };
  };
}
