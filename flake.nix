{
  description = "nekowinston's neovim config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    # neovim-nightly-overlay.url = "github:nix-community/neovim-nightly-overlay";
    neovim-nix = {
      url = "github:nekowinston/neovim.nix/dev";
      inputs.flake-parts.follows = "flake-parts";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.pre-commit-nix.follows = "git-hooks-nix";
    };
    nvim-treesitter-nix = {
      url = "github:nekowinston/nvim-treesitter-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    git-hooks-nix.url = "github:cachix/git-hooks.nix";
  };

  outputs =
    { flake-parts, ... }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [
        ./neovim.nix
        inputs.git-hooks-nix.flakeModule
        inputs.neovim-nix.flakeModule
      ];
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "aarch64-darwin"
        "x86_64-darwin"
      ];
      perSystem =
        {
          self',
          config,
          pkgs,
          system,
          ...
        }:
        {
          _module.args.pkgs = import inputs.nixpkgs {
            inherit system;
            config.allowUnfree = true;
            overlays = [
              inputs.nvim-treesitter-nix.overlays.default
              # inputs.neovim-nightly-overlay.overlays.default
            ];
          };

          pre-commit = {
            settings = {
              excludes = [ "_sources/.+" ];
              hooks = {
                nixfmt = {
                  enable = true;
                  package = pkgs.nixfmt-rfc-style;
                };
                stylua.enable = true;
              };
            };
          };

          devShells.default = pkgs.mkShell {
            inherit (config.pre-commit.devShell) shellHook;
            packages = with pkgs; [
              self'.formatter
              nix-tree
              nvfetcher
            ];
          };

          formatter = pkgs.nixfmt-rfc-style;

          packages =
            let
              neovim = config.neovim.final;
            in
            {
              default = neovim;
              neovim = neovim;
              neovide = pkgs.callPackage ./pkgs/neovide {
                env = {
                  NEOVIDE_FRAME = "none";
                  NEOVIDE_MULTIGRID = "1";
                  NEOVIM_BIN = "${neovim}/bin/nvim";
                };
              };
              docker = pkgs.dockerTools.buildImage {
                name = "nekowinston-nvim";
                copyToRoot =
                  (with pkgs.dockerTools; [
                    usrBinEnv
                    binSh
                    caCertificates
                    fakeNss
                  ])
                  ++ [ neovim ];
              };
            };
        };
    };

  nixConfig = {
    extra-substituters = [
      "https://nix-community.cachix.org"
      "https://pre-commit-hooks.cachix.org"
    ];
    extra-trusted-public-keys = [
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
      "pre-commit-hooks.cachix.org-1:Pkk3Panw5AW24TOv6kz3PvLhlH8puAsJTBbOPmBo7Rc="
    ];
  };
}
