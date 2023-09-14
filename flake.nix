{
  description = "nekowinston's neovim config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";

    neovim = {
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.flake-utils.follows = "flake-utils";
      url = "github:neovim/neovim?dir=contrib";
    };
    neovim-nix = {
      inputs.neovim.follows = "neovim";
      # inputs.nixpkgs.follows = "nixpkgs";
      # inputs.pre-commit-nix.follows = "";
      url = "github:willruggiano/neovim.nix";
    };

    flake-utils.url = "github:numtide/flake-utils";
    crane = {
      url = "github:ipetkov/crane/v0.12.2";
      inputs.flake-compat.follows = "";
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.rust-overlay.follows = "rust-overlay";
    };
    rust-overlay = {
      url = "github:oxalica/rust-overlay";
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # LSP
    nekowinston-nur.url = "github:nekowinston/nur";
    bandithedoge-nur.url = "github:bandithedoge/nur-packages";
    # maintenance
    nvfetcher = {
      url = "github:berberman/nvfetcher";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.flake-utils.follows = "flake-utils";
    };
  };

  outputs = {flake-parts, ...} @ inputs:
    flake-parts.lib.mkFlake {inherit inputs;} {
      imports = [
        inputs.neovim-nix.flakeModule
        ./neovim.nix
      ];
      systems = ["x86_64-linux" "aarch64-linux" "aarch64-darwin" "x86_64-darwin"];
      perSystem = {
        config,
        pkgs,
        system,
        ...
      }: {
        _module.args.pkgs = import inputs.nixpkgs {
          inherit system;
          config.allowUnfree = true;
          overlays = [
            (f: p: {
              nvfetcher = inputs.nvfetcher.packages.${system}.default;
              repos = {
                bandithedoge = import inputs.bandithedoge-nur {inherit (p) pkgs;};
                nekowinston = import inputs.nekowinston-nur {inherit (p) pkgs;};
              };
            })
          ];
        };
        legacyPackages = pkgs;

        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [nvfetcher nix-tree];
        };

        # packages.default = pkgs.hello;
        packages.default = config.neovim.final;
        packages.tree-sitter = pkgs.callPackage ./pkgs/tree-sitter {};
      };
    };

  nixConfig = {
    extra-substituters = [
      "https://bandithedoge.cachix.org"
      "https://nekowinston.cachix.org"
    ];
    extra-trusted-public-keys = [
      "bandithedoge.cachix.org-1:ZtcHw1anyEa4t6H8m3o/ctYFrwYFPAwoENSvofamE6g="
      "nekowinston.cachix.org-1:lucpmaO+JwtoZj16HCO1p1fOv68s/RL1gumpVzRHRDs="
    ];
  };
}
