{
  callPackage,
  lib,
  tree-sitter,
  vimUtils,
  grammars ? [
    "lua"
    "markdown"
    "vim"
    "vimdoc"
  ],
}:
let
  nvplugins = callPackage ../../_sources/generated.nix { };
  nvgrammars = callPackage ./_sources/generated.nix { };

  treesitterGrammars = builtins.map (
    name:
    let
      nvgrammar = nvgrammars."tree-sitter-grammar-${name}";
    in
    tree-sitter.buildGrammar {
      inherit (nvgrammar) src version;
      generate = lib.hasAttr "generate" nvgrammar;
      language = name;
      location = nvgrammar.location or null;
    }
  ) grammars;

  linkCommands = builtins.map (grammar: ''
    ln -sf ${grammar}/parser ./parser/${lib.removeSuffix "-grammar" grammar.pname}.so
  '') treesitterGrammars;
in
vimUtils.buildVimPlugin {
  inherit (nvplugins.nvim-treesitter) pname version src;
  postPatch = lib.concatStrings linkCommands;
}
