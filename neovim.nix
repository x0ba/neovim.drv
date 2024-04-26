{
  config = {
    perSystem = {
      inputs',
      pkgs,
      ...
    }: {
      neovim = {
        package = pkgs.neovim-unwrapped;
        paths = with pkgs; [
          # external deps
          fd
          git
          gh
          ripgrep

          # python
          ruff
          nodePackages.pyright

          # lua
          stylua
          lua-language-server
          luaPackages.tl
          luaPackages.teal-language-server

          # webdev
          nodePackages.nodejs
          nodePackages."@astrojs/language-server"
          nodePackages."@tailwindcss/language-server"
          nodePackages.bash-language-server
          nodePackages.dockerfile-language-server-nodejs
          nodePackages.graphql
          nodePackages.graphql-language-service-cli
          nodePackages.typescript
          nodePackages.typescript-language-server
          nodePackages.vscode-langservers-extracted
          nodePackages.yaml-language-server
          phpactor

          # etc
          alejandra
          deno
          emmet-ls
          helm-ls
          jq-lsp
          ltex-ls
          nixd
          shellcheck
          shfmt
          taplo
        ];

        lazy = {
          settings.install.colorscheme = ["catppuccin"];
          plugins = import ./plugins {inherit pkgs;};
        };
      };
    };
  };
}
