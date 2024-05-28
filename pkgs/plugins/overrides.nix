{
  stdenv,
  lib,
  rustPlatform,
}:
let
in
self: super: {
  nvim-spectre = super.nvim-spectre.overrideAttrs (
    old:
    let
      spectre_oxi = rustPlatform.buildRustPackage {
        pname = "spectre_oxi";
        inherit (old) src version;

        sourceRoot = "${old.src.name}/spectre_oxi";

        cargoLock = old.passthru.cargoLock."spectre_oxi/Cargo.lock";

        preCheck = "mkdir tests/tmp/";
      };
    in
    {
      postInstall = ''
        ln -s ${spectre_oxi}/lib/libspectre_oxi.* $out/lua/spectre_oxi.so
      '';
    }
  );
}
