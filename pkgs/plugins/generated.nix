{ callPackage, vimUtils }:
let
  nvfetcher = builtins.removeAttrs (callPackage ../../_sources/generated.nix { }) [
    "override"
    "overrideDerivation"
  ];
  plugins = builtins.mapAttrs (
    k: v:
    vimUtils.buildVimPlugin {
      inherit (v) pname version src;
      leaveDotGit = true;

      passthru = {
        inherit (v) cargoLock;
      };
    }
  ) nvfetcher;
in
final: prev: plugins
