{
  description = "nekowinston's neovim config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    pre-commit-nix = {
      url = "github:cachix/pre-commit-hooks.nix";
      inputs.flake-compat.follows = "flake-compat";
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    devenv = {
      url = "github:cachix/devenv";
      inputs.flake-compat.follows = "flake-compat";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.pre-commit-hooks.follows = "pre-commit-nix";
    };

    neovim = {
      url = "github:neovim/neovim?dir=contrib";
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    neovim-nix = {
      url = "github:willruggiano/neovim.nix";
      inputs.flake-parts.follows = "flake-parts";
      inputs.neovim.follows = "neovim";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.pre-commit-nix.follows = "pre-commit-nix";
    };

    # LSP
    nixd = {
      url = "github:nekowinston/nixd";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.flake-parts.follows = "flake-parts";
    };
    nekowinston-nur.url = "github:nekowinston/nur";
    bandithedoge-nur.url = "github:bandithedoge/nur-packages";

    # maintenance
    flake-utils.url = "github:numtide/flake-utils";
    flake-compat.url = "github:edolstra/flake-compat";
    flake-compat.flake = false;
    nvfetcher = {
      url = "github:berberman/nvfetcher";
      inputs.flake-compat.follows = "flake-compat";
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {flake-parts, ...} @ inputs:
    flake-parts.lib.mkFlake {inherit inputs;} {
      imports = [
        inputs.devenv.flakeModule
        inputs.neovim-nix.flakeModule
        ./neovim.nix
      ];
      systems = ["x86_64-linux" "aarch64-linux" "aarch64-darwin" "x86_64-darwin"];
      perSystem = {
        config,
        inputs',
        pkgs,
        system,
        ...
      }: {
        _module.args.pkgs = import inputs.nixpkgs {
          inherit system;
          config.allowUnfree = true;
          overlays = [
            (f: p: {
              repos = {
                nixd = inputs'.nixd.packages;
                bandithedoge = import inputs.bandithedoge-nur {inherit (p) pkgs;};
                nekowinston = import inputs.nekowinston-nur {inherit (p) pkgs;};
              };
            })
          ];
        };

        devenv.shells.default = {
          containers = pkgs.lib.mkForce {};
          packages = with pkgs; [
            inputs'.nvfetcher.packages.default
            just
            nix-tree
          ];
          pre-commit.hooks = {
            alejandra.enable = true;
            stylua.enable = true;
          };
        };

        formatter = pkgs.alejandra;

        packages = rec {
          default = neovim;
          neovim = config.neovim.final;
          nvim-treesitter = pkgs.callPackage ./pkgs/nvim-treesitter {};
          markdown-preview = pkgs.callPackage ./pkgs/markdown-preview {};
        };
      };
    };

  nixConfig = {
    extra-substituters = [
      "https://bandithedoge.cachix.org"
      "https://nekowinston.cachix.org"
      "https://pre-commit-hooks.cachix.org"
    ];
    extra-trusted-public-keys = [
      "bandithedoge.cachix.org-1:ZtcHw1anyEa4t6H8m3o/ctYFrwYFPAwoENSvofamE6g="
      "nekowinston.cachix.org-1:lucpmaO+JwtoZj16HCO1p1fOv68s/RL1gumpVzRHRDs="
      "pre-commit-hooks.cachix.org-1:Pkk3Panw5AW24TOv6kz3PvLhlH8puAsJTBbOPmBo7Rc="
    ];
  };
}
