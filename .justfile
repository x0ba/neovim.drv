[private]
default:
  @just --choose

fetch-plugins:
  nix run github:berberman/nvfetcher

fetch-grammars:
  nix run github:berberman/nvfetcher -- \
    -o pkgs/nvim-treesitter/_sources \
    -c pkgs/nvim-treesitter/nvfetcher.toml
