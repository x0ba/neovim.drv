{
  env ? {},
  makeWrapper,
  neovide,
  symlinkJoin,
}: let
  toEnv = env:
    with builtins;
      concatStringsSep " " (attrValues (mapAttrs (k: v: "--set ${k} ${toString v}") env));
in
  symlinkJoin {
    name = "neovide";
    paths = [neovide];
    nativeBuildInputs = [makeWrapper];
    postBuild = ''
      wrapProgram $out/bin/neovide ${toEnv env}
    '';
  }
