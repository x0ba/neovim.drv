{ callPackage, lib }:
let
  plugins = callPackage ./generated.nix { };
  overrides = callPackage ./overrides.nix { };
in
lib.makeExtensible (lib.extends overrides (lib.extends plugins (self: { })))
