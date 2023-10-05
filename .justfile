[private]
default:
  @just --choose

fetch-plugins:
  nvfetcher

fetch-grammars:
  nvfetcher \
    -o pkgs/nvim-treesitter/_sources \
    -c pkgs/nvim-treesitter/nvfetcher.toml
