{
  callPackage,
  lib,
  stdenv,
  symlinkJoin,
  tree-sitter,
}: let
  nvfetcher = callPackage ../../_sources/generated.nix {};
  nvim-treesitter = nvfetcher.nvim-treesitter;

  grammars = {
    astro = {};
    bash = {};
    c = {};
    css = {};
    dockerfile = {};
    go = {};
    graphql = {};
    html = {};
    javascript = {};
    jsdoc = {};
    json = {};
    jsonc = {};
    lua = {};
    markdown = {
      sourceRoot = "tree-sitter-markdown";
    };
    markdown_inline = {
      sourceRoot = "tree-sitter-markdown";
      overrides = {
        pname = "tree-sitter-grammar-markdown_line";
        inherit (nvfetcher."tree-sitter-grammar-markdown") version src;
      };
    };
    nix = {};
    php = {};
    pug = {};
    python = {};
    rust = {};
    scss = {};
    typescript = {
      sourceRoot = "typescript";
    };
    tsx = {
      sourceRoot = "typescript";
      overrides = {
        pname = "tree-sitter-grammar-tsx";
        inherit (nvfetcher."tree-sitter-grammar-typescript") version src;
      };
    };
    yaml = {};
  };

  treesitterGrammars = lib.mapAttrsToList (name: attrs:
    stdenv.mkDerivation ({
        inherit (nvfetcher."tree-sitter-grammar-${name}") pname version src;

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
