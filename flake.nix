{
  description = "nekowinston's neovim config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    flake-utils.url = "github:numtide/flake-utils";
    neovim-nix = {
      url = "github:nekowinston/neovim.nix/feat/add-pluginspec-main-field";
      inputs.flake-parts.follows = "flake-parts";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.pre-commit-nix.follows = "pre-commit-nix";
    };
    pre-commit-nix = {
      url = "github:cachix/pre-commit-hooks.nix";
      inputs.flake-compat.follows = "";
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nekowinston-nur = {
      url = "github:nekowinston/nur";
      inputs.fenix.follows = "";
    };
  };

  outputs = {flake-parts, ...} @ inputs:
    flake-parts.lib.mkFlake {inherit inputs;} {
      imports = [inputs.neovim-nix.flakeModule ./neovim.nix];
      systems = ["x86_64-linux" "aarch64-linux" "aarch64-darwin" "x86_64-darwin"];
      perSystem = {
        config,
        inputs',
        pkgs,
        self',
        system,
        ...
      }: {
        _module.args.pkgs = import inputs.nixpkgs {
          inherit system;
          config.allowUnfree = true;
          overlays = [
            (_: _: {
              repos = {
                nekowinston = import inputs.nekowinston-nur {inherit pkgs;};
              };
            })
          ];
        };

        checks = {
          pre-commit-check = inputs.pre-commit-nix.lib.${system}.run {
            src = ./.;
            excludes = ["_sources/.+"];
            hooks = {
              alejandra.enable = true;
              stylua.enable = true;
            };
          };
        };

        devShells.default = pkgs.mkShell {
          inherit (self'.checks.pre-commit-check) shellHook;
          buildInputs = with pkgs; [just nix-tree];
        };

        formatter = pkgs.alejandra;

        packages = rec {
          default = neovim;
          neovim = config.neovim.final;
          neovide = pkgs.callPackage ./pkgs/neovide {
            env = {
              NEOVIDE_FRAME = "none";
              NEOVIDE_MULTIGRID = "1";
              NEOVIM_BIN = "${neovim}/bin/nvim";
            };
          };
          nvim-treesitter = pkgs.callPackage ./pkgs/nvim-treesitter {};
          telescope-fzf-native = pkgs.callPackage ./pkgs/telescope-fzf-native {};
          markdown-preview = pkgs.callPackage ./pkgs/markdown-preview {};
          docker = pkgs.dockerTools.buildImage {
            name = "nekowinston-nvim";
            copyToRoot = with pkgs.dockerTools; [
              pkgs.dockerTools.usrBinEnv
              pkgs.dockerTools.binSh
              pkgs.dockerTools.caCertificates
              pkgs.dockerTools.fakeNss
              neovim
            ];
          };
        };
      };
    };

  nixConfig = {
    extra-substituters = [
      "https://nekowinston.cachix.org"
      "https://pre-commit-hooks.cachix.org"
    ];
    extra-trusted-public-keys = [
      "nekowinston.cachix.org-1:lucpmaO+JwtoZj16HCO1p1fOv68s/RL1gumpVzRHRDs="
      "pre-commit-hooks.cachix.org-1:Pkk3Panw5AW24TOv6kz3PvLhlH8puAsJTBbOPmBo7Rc="
    ];
  };
}
