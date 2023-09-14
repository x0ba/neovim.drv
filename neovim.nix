{
  config = {
    perSystem = {pkgs, ...}: {
      neovim = {
        env = {};

        paths = with pkgs; [
          git
          lazygit
          nodejs
        ];

        lazy = {
          settings = {
            install = {
              colorscheme = ["catppuccin"];
            };
          };
          plugins = import ./plugins {inherit pkgs;};
        };
      };
    };
  };
}
