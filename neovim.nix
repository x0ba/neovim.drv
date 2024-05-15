{
  config = {
    perSystem =
      { pkgs, ... }:
      {
        neovim = {
          package = pkgs.neovim-nightly;
          paths = with pkgs; [
            fd
            git
            gh
            ripgrep

            # lua
            stylua
            lua-language-server

            # nix
            nixd
            nixfmt-rfc-style

            # python
            ruff
            nodePackages.pyright

            # shell scripting
            nodePackages.bash-language-server
            shellcheck
            shfmt

            # webdev
            deno
            emmet-ls
            nodePackages."@astrojs/language-server"
            nodePackages."@tailwindcss/language-server"
            nodePackages.graphql
            nodePackages.graphql-language-service-cli
            nodePackages.typescript
            nodePackages.typescript-language-server
            nodePackages.vscode-langservers-extracted
            nodePackages.yaml-language-server
            nodejs
            phpactor

            # data formats
            dhall-lsp-server
            helm-ls
            jq-lsp
            ltex-ls
            nodePackages.dockerfile-language-server-nodejs
            taplo
          ];

          lazy = {
            settings = {
              dev.path = "~/Code/neovim";
              install.colorscheme = [ "catppuccin" ];
            };
            plugins = import ./plugins { inherit pkgs; };
          };
        };
      };
  };
}
