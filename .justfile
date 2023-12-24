[private]
default:
  @just --choose

fetch-plugins:
  nix run 'nixpkgs#nvfetcher'

fetch-grammars:
  nix run 'nixpkgs#nvfetcher' -- \
    -o pkgs/nvim-treesitter/_sources \
    -c pkgs/nvim-treesitter/nvfetcher.toml
