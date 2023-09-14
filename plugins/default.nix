{pkgs}: let
  srcs =
    builtins.mapAttrs (name: pkg: pkg.src)
    (pkgs.callPackage ../_sources/generated.nix {});
in rec {
  config = {
    src = ./config;
    lazy = false;
    priority = 1000;
  };

  plenary.src = srcs.plenary;
  which-key = {
    src = srcs.which-key;
    config = ./which-key.lua;
  };
  nvim-tree = {
    src = srcs.nvim-tree-lua;
    config = {
      renderer.indent_markers.enable = true;
      diagnostics.enable = true;
      # actions.file_popup.open_win_config.border = vim.g.bc.style;
    };
    dependencies = {inherit plenary nvim-web-devicons;};
  };
  nvim-web-devicons = {
    src = srcs.nvim-web-devicons;
    config = ./nvim-web-devicons.lua;
    dependencies = {inherit catppuccin;};
  };

  nvim-treesitter = {
    package = pkgs.callPackage ../pkgs/nvim-treesitter {};
    config = {
      highlight.enable = true;
      rainbow = {
        enable = true;
        extended_mode = true;
        max_file_lines = 8192;
      };
    };
  };

  # pure rice
  alpha = {
    src = srcs.alpha-nvim;
    config = ./alpha.lua;
    dependencies = {
      neovim-session-manager = {
        src = srcs.neovim-session-manager;
        dependencies = {inherit plenary;};
      };
    };
  };
  catppuccin = {
    src = srcs.catppuccin;
    config = ./catppuccin.lua;
    priority = 1000;
  };
  auto-dark-mode = {
    src = srcs.auto-dark-mode;
    config = true;
  };

  flash = {
    src = srcs.flash;
  };

  bufferline = {
    src = srcs.bufferline;
    config = ./bufferline.lua;
    dependencies = {inherit catppuccin;};
  };

  nvim-colorizer = {
    src = srcs.nvim-colorizer-lua;
    config = {
      user_default_options = {
        RGB = true;
        RRGGBB = true;
        names = false;
        RRGGBBAA = true;
        AARRGGBB = false;
        rgb_fn = false;
        hsl_fn = false;
        css = false;
        css_fn = false;
        mode = "background";
        tailwind = "both";
        sass = {enable = true;};
        virtualtext = " ";
      };
      buftypes = [
        "*"
        "!dashboard"
        "!lazy"
        "!popup"
        "!prompt"
      ];
    };
  };
  color-picker = {
    src = srcs.color-picker;
    config = true;
  };

  indent-blankline = {
    src = srcs.indent-blankline;
    config = ./indent-blankline.lua;
  };

  copilot-lua = {
    src = srcs.copilot-lua;
    config = {
      panel.enabled = false;
      suggestion = {
        enabled = true;
        auto_trigger = true;
        debounce = 75;
        keymap.accept = "<C-J>";
      };
      filetypes = {
        "." = false;
        cvs = false;
        gitcommit = false;
        gitrebase = false;
        help = false;
        hgcommit = false;
        markdown = false;
        svn = false;
        yaml = true;
      };
      copilot_node_command = "node";
      server_opts_overrides = {};
    };
  };

  # git stuff
  fugitive.src = srcs.vim-fugitive;
  gitsigns = {
    src = srcs.gitsigns;
    config = ./gitsigns.lua;
    dependencies = {inherit which-key;};
  };
  neogit = {
    src = srcs.neogit;
    config.integrations.diffview = true;
    dependencies = {inherit plenary diffview;};
  };
  diffview.src = srcs.diffview;

  presence = {
    src = srcs.presence;
    config = ./presence.lua;
  };

  # wakatime.src = srcs.wakatime;

  vim-dadbod.src = srcs.vim-dadbod;
  vim-dadbod-completion.src = srcs.vim-dadbod-completion;
  vim-dadbod-ui = {
    src = srcs.vim-dadbod-ui;
    # TODO: config:
    # vim.g.db_ui_use_nerd_fonts = true
    # vim.g.db_ui_win_position = "right"
  };
}
