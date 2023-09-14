{pkgs}: let
  inherit (pkgs) lib;

  nvfetcher = pkgs.callPackage ../../_sources/generated.nix {};
  tree-sitter = nvfetcher.nvim-treesitter;

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
    pkgs.stdenv.mkDerivation ({
        inherit (nvfetcher."tree-sitter-grammar-${name}") pname version src;

        buildInputs = [pkgs.tree-sitter];

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

        fixupPhase = lib.optionalString pkgs.stdenv.isLinux ''
          runHook preFixup
          $STRIP $out/parser/${name}.so
          runHook postFixup
        '';
      }
      // attrs.overrides or {}))
  grammars;
in
  pkgs.symlinkJoin {
    name = "nvim-tree-sitter";
    paths = [tree-sitter.src] ++ treesitterGrammars;
  }
