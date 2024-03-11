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
          nodePackages.alex
          nodePackages.bash-language-server
          nodePackages.dockerfile-language-server-nodejs
          nodePackages.graphql
          nodePackages.graphql-language-service-cli
          nodePackages.intelephense
          nodePackages.typescript
          nodePackages.typescript-language-server
          nodePackages.vscode-langservers-extracted
          nodePackages.yaml-language-server

          # etc
          alejandra
          deno
          ltex-ls
          nil
          nodePackages.prettier
          proselint
          shellcheck
          shfmt
          taplo
          repos.bandithedoge.nodePackages.emmet-ls
          repos.nekowinston.helm-ls
          repos.nekowinston.jq-lsp
        ];

        lazy = {
          settings.install.colorscheme = ["catppuccin"];
          plugins = import ./plugins {inherit pkgs;};
        };
      };
    };
  };
}
