{pkgs}: let
  srcs = builtins.mapAttrs (name: pkg: pkg.src) (pkgs.callPackage ../_sources/generated.nix {});
  inherit (pkgs.lib.generators) mkLuaInline;
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
      sync_root_with_cwd = true;
      diagnostics.enable = true;
      renderer.indent_markers.enable = true;
      modified.enable = true;
    };
    dependencies = {inherit plenary nvim-web-devicons;};
    event = "VeryLazy";
  };
  nvim-web-devicons = {
    src = srcs.nvim-web-devicons;
    config = ./nvim-web-devicons.lua;
    dependencies = {inherit catppuccin;};
    event = "VeryLazy";
  };

  nvim-treesitter = {
    package = pkgs.callPackage ../pkgs/nvim-treesitter {};
    main = "nvim-treesitter.configs";
    config = {
      auto_install = false;
      highlight.enable = true;
      rainbow = {
        enable = true;
        extended_mode = true;
        max_file_lines = 8192;
      };
    };
    dependencies = {
      nvim-treesitter-context = {
        src = srcs.nvim-treesitter-context;
        config = {
          enable = false;
          mode = "topline";
        };
      };
      nvim-treesitter-textobjects.src = srcs.nvim-treesitter-textobjects;
      nvim-ts-autotag.src = srcs.nvim-ts-autotag;
      rainbow-delimiters.src = srcs.rainbow-delimiters;
    };
    event = "VeryLazy";
  };
  vim-helm = {
    src = srcs.vim-helm;
    event = "VeryLazy";
  };
  vim-just = {
    src = srcs.vim-just;
    event = "VeryLazy";
  };

  headlines = {
    src = srcs.headlines;
    config = true;
    dependencies = {inherit nvim-treesitter;};
    event = "VeryLazy";
  };
  markdown-preview = {
    package = pkgs.callPackage ../pkgs/markdown-preview {};
    event = "VeryLazy";
  };
  vim-gnupg = {
    src = srcs.vim-gnupg;
    event = "VeryLazy";
  };
  vim-table-mode = {
    src = srcs.vim-table-mode;
    config = ''
      function()
        vim.cmd([[autocmd FileType markdown let g:table_mode_corner='|']])
      end
    '';
    event = "VeryLazy";
  };

  dressing = {
    src = srcs.dressing;
    event = "VeryLazy";
  };
  glance = {
    src = srcs.glance;
    config = true;
    event = "VeryLazy";
  };

  asyncrun-vim = {
    src = srcs.asyncrun-vim;
    event = "VeryLazy";
  };
  asynctasks-vim = {
    src = srcs.asynctasks-vim;
    event = "VeryLazy";
  };

  alpha = {
    src = srcs.alpha-nvim;
    config = ./alpha.lua;
    dependencies = {
      neovim-session-manager = {
        src = srcs.neovim-session-manager;
        main = "session_manager";
        config.autoload_mode = "CurrentDir";
        dependencies = {inherit plenary;};
      };
    };
  };
  catppuccin = {
    src = srcs.catppuccin;
    config = ./catppuccin.lua;
    lazy = false;
    priority = 1000;
  };
  auto-dark-mode = {
    src = srcs.auto-dark-mode;
    config = true;
    lazy = false;
    priority = 1000;
  };

  flash = {
    src = srcs.flash;
    config = ./flash.lua;
    dependencies = {inherit which-key;};
    event = "VeryLazy";
  };

  fidget = {
    src = srcs.fidget;
    config = {
      progress = {
        ignore = ["copilot" "null-ls"];
        display.done_icon = "󰗡";
      };
      notification.override_vim_notify = true;
    };
    event = "VeryLazy";
  };

  bufferline = {
    src = srcs.bufferline;
    config = ./bufferline.lua;
    dependencies = {inherit catppuccin;};
    event = "VeryLazy";
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
    event = "VeryLazy";
  };
  color-picker = {
    src = srcs.color-picker;
    config = true;
    event = "VeryLazy";
  };

  comment = {
    src = srcs.comment;
    config = true;
    event = "VeryLazy";
  };
  indent-blankline = {
    src = srcs.indent-blankline;
    main = "ibl";
    config.exclude.filetypes = [
      "alpha"
      "fugitive"
      "help"
      "lazy"
      "NeogitCommitView"
      "NeogitConsole"
      "NeogitStatus"
      "NvimTree"
      "TelescopePrompt"
      "Trouble"
    ];
    event = "VeryLazy";
  };
  nvim-surround = {
    src = srcs.nvim-surround;
    config = true;
    event = "VeryLazy";
  };
  tagalong-vim = {
    src = srcs.tagalong-vim;
    config = ''
      function()
        vim.g.tagalong_filetypes = {
          "astro",
          "ejs",
          "html",
          "htmldjango",
          "javascriptreact",
          "jsx",
          "php",
          "typescriptreact",
          "xml",
        }
      end
    '';
    event = "VeryLazy";
  };
  todo-comments = {
    src = srcs.todo-comments;
    config = true;
    event = "VeryLazy";
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
    event = "VeryLazy";
  };

  fugitive = {
    src = srcs.vim-fugitive;
    event = "VeryLazy";
  };
  gitsigns = {
    src = srcs.gitsigns;
    config = ./gitsigns.lua;
    dependencies = {inherit which-key;};
    event = "VeryLazy";
  };
  neogit = {
    src = srcs.neogit;
    config.integrations.diffview = true;
    dependencies = {
      inherit plenary;
      diffview.src = srcs.diffview;
    };
    event = "VeryLazy";
  };

  presence = {
    src = srcs.presence;
    config = ./presence.lua;
    event = "VeryLazy";
  };

  wakatime = {
    src = pkgs.vimPlugins.vim-wakatime;
    paths = [pkgs.wakatime];
    event = "VeryLazy";
  };

  vim-dadbod = {
    src = srcs.vim-dadbod;
    event = "VeryLazy";
  };
  vim-dadbod-completion = {
    src = srcs.vim-dadbod-completion;
    event = "VeryLazy";
  };
  vim-dadbod-ui = {
    src = srcs.vim-dadbod-ui;
    config = ''
      function()
        vim.g.db_ui_use_nerd_fonts = true
        vim.g.db_ui_use_nvim_notify = true
        vim.g.db_ui_win_position = "right"
      end
    '';
    event = "VeryLazy";
  };

  lualine = {
    src = srcs.lualine;
    config = {
      options = {
        icons_enabled = true;
        theme = "catppuccin";
        disabled_filetypes = let
          ft = ["alpha"];
        in {
          statusline = ft;
          winbar = ft;
        };
        component_separators = {
          left = "";
          right = "";
        };
        section_separators = {
          left = "";
          right = "";
        };
      };
      sections = {
        lualine_a = ["mode"];
        lualine_b = ["branch" "diff" "diagnostics"];
        lualine_c = ["searchcount"];
        lualine_x = ["filetype"];
        lualine_y = ["progress"];
        lualine_z = ["location"];
      };
      winbar.lualine_c = [
        (mkLuaInline "{ 'navic', draw_empty = true }")
      ];
    };
    dependencies = {
      navic = {
        src = srcs.nvim-navic;
        config = {
          highlight = true;
          separator = " ";
          icons = {
            File = " ";
            Module = " ";
            Namespace = " ";
            Package = " ";
            Class = " ";
            Method = " ";
            Property = " ";
            Field = " ";
            Constructor = " ";
            Enum = " ";
            Interface = " ";
            Function = " ";
            Variable = " ";
            Constant = " ";
            String = " ";
            Number = " ";
            Boolean = " ";
            Array = " ";
            Object = " ";
            Key = " ";
            Null = " ";
            EnumMember = " ";
            Struct = " ";
            Event = " ";
            Operator = " ";
            TypeParameter = " ";
          };
        };
        dependencies = {inherit nvim-web-devicons;};
      };
    };
  };

  nvim-lspconfig = {
    src = srcs.nvim-lspconfig;
    config = ''
      function()
        require("winston.lsp")
      end
    '';
    dependencies = rec {
      cmp.src = srcs.nvim-cmp;
      cmp-buffer.src = srcs.cmp-buffer;
      cmp-cmdline.src = srcs.cmp-cmdline;
      cmp-nvim-lsp.src = srcs.cmp-nvim-lsp;
      cmp-path.src = srcs.cmp-path;
      luasnip = {
        src = srcs.luasnip;
        dependencies = {
          friendly-snippets.src = srcs.friendly-snippets;
          my-snippets.src = pkgs.callPackage ../pkgs/snippets {};
        };
      };
      cmp_luasnip.src = srcs.cmp_luasnip;
      cmp-git.src = srcs.cmp-git;
      lspkind.src = srcs.lspkind;
      null-ls.src = srcs.null-ls;
      trouble = {
        src = srcs.trouble;
        config.padding = false;
      };
      neoconf.src = srcs.neoconf;
      neodev = {
        src = srcs.neodev;
        config = true;
      };
      neorepl.src = srcs.neorepl;
      nvim-autopairs = {
        src = srcs.nvim-autopairs;
        config = ''
          function()
          	require("nvim-autopairs").setup()

          	local cmp = require("cmp")
          	local cmp_autopairs = require("nvim-autopairs.completion.cmp")
          	cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
          end
        '';
        dependencies = {inherit cmp;};
      };
      lsp-status.src = srcs.lsp-status;
      ltex-extra.src = srcs.ltex-extra;
      schemastore.src = srcs.schemastore;
      py_lsp.src = srcs.py_lsp;
      crates = {
        src = srcs.crates;
        config = true;
      };
      rust-tools.src = srcs.rust-tools;
      typescript-tools.src = srcs.typescript-tools;
      go-nvim = {
        src = srcs.go-nvim;
        dependencies = {
          guihua-lua.src = srcs.guihua-lua;
        };
        paths = [pkgs.repos.nekowinston.gonvim-tools];
      };
      nvim-dap = {
        src = srcs.nvim-dap;
        dependencies = {
          nvim-dap-ui.src = srcs.nvim-dap-ui;
          nvim-dap-virtual-text.src = srcs.nvim-dap-virtual-text;
        };
      };
    };
    event = "VeryLazy";
  };

  telescope = {
    src = srcs.telescope;
    config = ./telescope.lua;
    dependencies = {
      inherit plenary nvim-web-devicons;
      telescope-asynctasks.src = srcs.telescope-asynctasks;
      telescope-file-browser.src = srcs.telescope-file-browser;
      telescope-fzf-native.package = pkgs.callPackage ../pkgs/telescope-fzf-native {};
      telescope-project.src = srcs.telescope-project;
      telescope-ui-select.src = srcs.telescope-ui-select;
      octo = {
        src = srcs.octo;
        config = true;
      };
    };
    event = "VeryLazy";
  };

  toggleterm = {
    src = srcs.toggleterm;
    config = {
      open_mapping = "<C-t>";
      shade_terminals = false;
    };
    event = "VeryLazy";
  };

  spectre = {
    src = srcs.nvim-spectre;
    config.replace_engine.sed.cmd = "sed";
    dependencies = {inherit plenary;};
    paths = [
      pkgs.gnused
      # alias for darwin
      (pkgs.writeShellScriptBin "gsed" "exec ${pkgs.gnused}/bin/sed")
    ];
    event = "VeryLazy";
  };

  neorg = {
    src = srcs.neorg;
    config = {
      load = {
        "core.defaults" = {};
        "core.completion".config = {
          engine = "nvim-cmp";
        };
        "core.concealer" = {};
        "core.dirman".config = {
          workspaces = {
            notes = "~/notes";
          };
        };
        "core.export" = {};
        "core.export.markdown" = {};
        "core.integrations.telescope" = {};
      };
    };
    dependencies = {
      inherit plenary;
      lua-utils.src = srcs.lua-utils;
      nui.src = srcs.nui;
      nvim-nio.src = srcs.nvim-nio;
      pathlib-nvim.src = srcs.pathlib-nvim;
      neorg-telescope.src = srcs.neorg-telescope;
    };
    event = "VeryLazy";
  };

  direnv = {
    src = srcs.direnv-vim;
    event = "VeryLazy";
  };
}
