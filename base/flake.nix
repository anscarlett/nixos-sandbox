{
    description = "A flake that provides a base environment for other flakes";

    inputs = { imports = [
        "../flake.nix"
    ]};

    outputs = { self, ... } : 

    {
        nixpkgs = import ./nixpkgs.nix { inherit self; };
    };
}