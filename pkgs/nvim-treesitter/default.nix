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

  grammars = {
    arduino = {};
    astro = {};
    awk = {};
    bash = {};
    beancount = {};
    c = {};
    cpp = {};
    d.overrides = {
      buildInputs = [pkgs.nodejs];
      preBuild = "${tree-sitter}/bin/tree-sitter generate";
    };
    css = {};
    csv.sourceRoot = "csv";
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
    lua = {};
    make = {};
    markdown.sourceRoot = "tree-sitter-markdown";
    markdown_inline.sourceRoot = "tree-sitter-markdown-inline";
    norg = {};
    norg_meta = {};
    nix = {};
    php = {};
    pug = {};
    python = {};
    rust = {};
    scss = {};
    typescript.sourceRoot = "typescript";
    tsv.sourceRoot = "tsv";
    tsx.sourceRoot = "tsx";
    svelte = {};
    vhs = {};
    vue = {};
    yaml = {};
  };

  treesitterGrammars = lib.mapAttrsToList (name: attrs:
    stdenv.mkDerivation ({
        inherit (nvgrammars."tree-sitter-grammar-${name}") pname version src;

        buildInputs = [tree-sitter];

        CFLAGS = ["-Isrc" "-O2"];
        CXXFLAGS = ["-Isrc" "-O2"];

        dontConfigure = true;

        buildPhase = lib.concatStringsSep "\n" [
          "runHook preBuild"
          (
            if attrs ? "sourceRoot"
            then "cd ${attrs.sourceRoot}"
            else ""
          )
          ''
            if [[ -e "src/scanner.cc" ]]; then
              $CXX -c "src/scanner.cc" -o scanner.o $CXXFLAGS
            elif [[ -e "src/scanner.c" ]]; then
              $CC -c "src/scanner.c" -o scanner.o $CFLAGS
            fi
            $CC -c "src/parser.c" -o parser.o $CFLAGS
            $CXX -shared -o parser *.o
            runHook postBuild
          ''
        ];

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
