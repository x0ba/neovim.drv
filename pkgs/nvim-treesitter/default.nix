{
  callPackage,
  lib,
  stdenv,
  symlinkJoin,
  tree-sitter,
  pkgs,
}: let
  nvplugins = callPackage ../../_sources/generated.nix {};
  nvgrammars = callPackage ./_sources/generated.nix {};
  nvim-treesitter = nvplugins.nvim-treesitter;

  ts-generate = {
    overrides.nativeBuildInputs = [pkgs.nodejs pkgs.tree-sitter];
    overrides.preBuild = "tree-sitter generate";
  };

  grammars = {
    # d = ts-generate;
    arduino = {};
    astro = {};
    awk = {};
    bash = {};
    blade = {};
    c = {};
    cpp = {};
    css = {};
    csv = {};
    dhall = {};
    diff = {};
    dockerfile = {};
    git_config = {};
    git_rebase = {};
    gitattributes = {};
    gitcommit = {};
    gitignore = {};
    go = {};
    gomod = {};
    gosum = {};
    gpg = {};
    graphql = {};
    haskell = {};
    hlsl = {};
    html = {};
    javascript = {};
    jsdoc = {};
    json = {};
    jsonc = {};
    just = ts-generate;
    kdl = {};
    lua = {};
    make = {};
    markdown = {};
    markdown_inline = {};
    nix = {};
    norg = {};
    norg_meta = {};
    php = {};
    php_only = {};
    pug = {};
    python = {};
    rust = {};
    scss = {};
    svelte = {};
    swift = ts-generate;
    tsv = {};
    tsx = {};
    typescript = {};
    vim = {};
    vimdoc = {};
    vue = {};
    yaml = {};
  };

  treesitterGrammars = lib.mapAttrsToList (name: attrs:
    stdenv.mkDerivation (let
      nvgrammar = nvgrammars."tree-sitter-grammar-${name}";
      sourceRoot =
        if lib.hasAttr "location" nvgrammar
        then nvgrammar.location
        else ".";
    in
      {
        inherit (nvgrammar) pname version src;

        buildInputs = [tree-sitter];

        CFLAGS = ["-Isrc" "-O2"];
        CXXFLAGS = ["-Isrc" "-O2"];

        dontConfigure = true;

        buildPhase = ''
          runHook preBuild
          cd ${sourceRoot}
          if [[ -e "src/scanner.cc" ]]; then
            $CXX -c "src/scanner.cc" -o scanner.o $CXXFLAGS
          elif [[ -e "src/scanner.c" ]]; then
            $CC -c "src/scanner.c" -o scanner.o $CFLAGS
          fi
          $CC -c "src/parser.c" -o parser.o $CFLAGS
          $CXX -shared -o parser *.o
          runHook postBuild
        '';

        installPhase = ''
          runHook preInstall
          mkdir -p $out/parser
          mv parser $out/parser/${name}.so
          runHook postInstall
        '';

        fixupPhase = lib.optionalString stdenv.isLinux ''
          runHook preFixup
          $STRIP $out/parser/${name}.so
          runHook postFixup
        '';
      }
      // attrs.overrides or {}))
  grammars;
in
  symlinkJoin {
    name = "nvim-tree-sitter";
    paths = [nvim-treesitter.src] ++ treesitterGrammars;
  }
