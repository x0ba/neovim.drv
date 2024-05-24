{ pkgs }:
let
  plugins = pkgs.callPackage ../pkgs/plugins { };
  inherit (pkgs.lib.generators) mkLuaInline;
in
rec {
  config = {
    src = ../config;
    lazy = false;
    priority = 1000;
  };

  plenary.package = plugins.plenary;
  which-key = {
    package = plugins.which-key;
    config = ./which-key.lua;
  };
  nvim-tree = {
    package = plugins.nvim-tree-lua;
    config = {
      sync_root_with_cwd = true;
      diagnostics.enable = true;
      renderer.indent_markers.enable = true;
      modified.enable = true;
    };
    dependencies = {
      inherit plenary nvim-web-devicons;
    };
    event = "VeryLazy";
  };
  nvim-web-devicons = {
    package = plugins.nvim-web-devicons;
    config = ./nvim-web-devicons.lua;
    dependencies = {
      inherit catppuccin;
    };
    event = "VeryLazy";
  };

  nvim-treesitter = {
    package = pkgs.vimPlugins.nvim-treesitter.override {
      grammars = [
        "arduino"
        "astro"
        "awk"
        "bash"
        "blade"
        "c"
        "cpp"
        "css"
        "csv"
        "d"
        "dhall"
        "diff"
        "dockerfile"
        "git_config"
        "git_rebase"
        "gitattributes"
        "gitcommit"
        "gitignore"
        "go"
        "gomod"
        "gosum"
        "gpg"
        "graphql"
        "haskell"
        "hlsl"
        "html"
        "javascript"
        "jsdoc"
        "json"
        "jsonc"
        "just"
        "kdl"
        "lua"
        "make"
        "markdown"
        "markdown_inline"
        "nix"
        "norg"
        "norg_meta"
        "nu"
        "php"
        "php_only"
        "pug"
        "python"
        "rust"
        "scss"
        "svelte"
        "tsv"
        "tsx"
        "typescript"
        "vim"
        "vimdoc"
        "vue"
        "yaml"
      ];
    };
    config = ./nvim-treesitter.lua;
    dependencies = {
      nvim-treesitter-context = {
        package = plugins.nvim-treesitter-context;
        config = {
          enable = false;
          mode = "topline";
        };
      };
      nvim-treesitter-textobjects.package = plugins.nvim-treesitter-textobjects;
      nvim-ts-autotag.package = plugins.nvim-ts-autotag;
      rainbow-delimiters.package = plugins.rainbow-delimiters;
      headlines = {
        package = plugins.headlines;
        config = true;
      };
    };
    event = "VeryLazy";
  };
  vim-helm = {
    package = plugins.vim-helm;
    event = "VeryLazy";
  };

  markdown-preview = {
    package = pkgs.vimPlugins.markdown-preview-nvim;
    ft = "markdown";
  };
  vim-gnupg = {
    package = plugins.vim-gnupg;
    event = "VeryLazy";
  };
  vim-table-mode = {
    package = plugins.vim-table-mode;
    config = ''
      function()
        vim.cmd([[autocmd FileType markdown let g:table_mode_corner='|']])
      end
    '';
    ft = "markdown";
  };

  dressing = {
    package = plugins.dressing;
    event = "VeryLazy";
  };
  glance = {
    package = plugins.glance;
    config = true;
    event = "VeryLazy";
  };

  asyncrun-vim = {
    package = plugins.asyncrun-vim;
    event = "VeryLazy";
  };
  asynctasks-vim = {
    package = plugins.asynctasks-vim;
    event = "VeryLazy";
  };

  alpha = {
    package = plugins.alpha-nvim;
    config = ./alpha.lua;
    dependencies = {
      neovim-session-manager = {
        package = plugins.neovim-session-manager;
        main = "session_manager";
        config.autoload_mode = "CurrentDir";
        dependencies = {
          inherit plenary;
        };
      };
    };
  };
  catppuccin = {
    package = plugins.catppuccin;
    config = ./catppuccin.lua;
    lazy = false;
    priority = 1000;
  };
  auto-dark-mode = {
    package = plugins.auto-dark-mode;
    config = true;
    lazy = false;
    priority = 1000;
  };

  flash = {
    package = plugins.flash;
    config = ./flash.lua;
    dependencies = {
      inherit which-key;
    };
    event = "VeryLazy";
  };

  fidget = {
    package = plugins.fidget;
    config = {
      progress = {
        ignore = [ "copilot" ];
        display.done_icon = "󰗡";
      };
      notification = {
        override_vim_notify = true;
        window.winblend = 0;
      };
    };
    event = "VeryLazy";
  };

  bufferline = {
    package = plugins.bufferline;
    config = ./bufferline.lua;
    dependencies = {
      inherit catppuccin;
    };
    event = "VeryLazy";
  };

  nvim-colorizer = {
    package = plugins.nvim-colorizer-lua;
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
        sass = {
          enable = true;
        };
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
    package = plugins.color-picker;
    config = true;
    event = "VeryLazy";
  };

  comment = {
    package = plugins.comment;
    config = true;
    event = "VeryLazy";
  };
  indent-blankline = {
    package = plugins.indent-blankline;
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
    package = plugins.nvim-surround;
    config = true;
    event = "VeryLazy";
  };
  tagalong-vim = {
    package = plugins.tagalong-vim;
    config = ''
      function()
        vim.g.tagalong_filetypes = {
          "astro",
          "blade",
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
    package = plugins.todo-comments;
    config = true;
    event = "VeryLazy";
  };

  copilot = {
    package = plugins.copilot-lua;
    config = {
      panel.enabled = false;
      suggestion = {
        enabled = true;
        auto_trigger = true;
        debounce = 75;
        keymap.accept = "<C-J>";
      };
      filetypes = {
        gitcommit = true;
        markdown = true;
        yaml = true;
      };
    };
    event = "InsertEnter";
  };

  fugitive = {
    package = plugins.vim-fugitive;
    event = "VeryLazy";
  };
  gitsigns = {
    package = plugins.gitsigns;
    config = ./gitsigns.lua;
    dependencies = {
      inherit which-key;
    };
    event = "VeryLazy";
  };
  neogit = {
    package = plugins.neogit;
    config.integrations.diffview = true;
    dependencies = {
      inherit plenary;
      diffview.package = plugins.diffview;
    };
    event = "VeryLazy";
  };

  presence = {
    package = plugins.presence;
    config = ./presence.lua;
    event = "UIEnter";
  };

  wakatime = {
    enabled = ''
      function()
        return vim.fn.glob("~/.wakatime.cfg") ~= "" or vim.fn.glob("$WAKATIME_HOME/.wakatime.cfg") ~= ""
      end
    '';
    package = pkgs.vimPlugins.vim-wakatime;
    paths = [ pkgs.wakatime ];
    event = "VeryLazy";
  };

  vim-dadbod = {
    package = plugins.vim-dadbod;
    event = "VeryLazy";
  };
  vim-dadbod-completion = {
    package = plugins.vim-dadbod-completion;
    event = "VeryLazy";
  };
  vim-dadbod-ui = {
    package = plugins.vim-dadbod-ui;
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
    package = plugins.lualine;
    config = {
      options = {
        icons_enabled = true;
        theme = "catppuccin";
        disabled_filetypes =
          let
            ft = [ "alpha" ];
          in
          {
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
        lualine_a = [ "mode" ];
        lualine_b = [
          "branch"
          "diff"
          "diagnostics"
        ];
        lualine_c = [ "searchcount" ];
        lualine_x = [ "filetype" ];
        lualine_y = [ "progress" ];
        lualine_z = [ "location" ];
      };
      winbar.lualine_c = [ (mkLuaInline "{ 'navic', draw_empty = true }") ];
    };
    dependencies = {
      navic = {
        package = plugins.nvim-navic;
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
        dependencies = {
          inherit nvim-web-devicons;
        };
      };
    };
  };

  nvim-lspconfig = {
    package = plugins.nvim-lspconfig;
    config = ''
      function()
        require("winston.lsp")
      end
    '';
    dependencies = {
      cmp.package = plugins.nvim-cmp;
      cmp-buffer.package = plugins.cmp-buffer;
      cmp-cmdline.package = plugins.cmp-cmdline;
      cmp-nvim-lsp.package = plugins.cmp-nvim-lsp;
      cmp-path.package = plugins.cmp-path;
      luasnip = {
        package = plugins.luasnip;
        dependencies.friendly-snippets.package = plugins.friendly-snippets;
      };
      cmp_luasnip.package = plugins.cmp_luasnip;
      cmp-git.package = plugins.cmp-git;
      lspkind.package = plugins.lspkind;
      trouble = {
        package = plugins.trouble;
        config.padding = false;
      };
      neoconf.package = plugins.neoconf;
      neodev = {
        package = plugins.neodev;
        config = true;
      };
      neorepl.package = plugins.neorepl;
      nvim-autopairs = {
        package = plugins.nvim-autopairs;
        config = ''
          function()
          	require("nvim-autopairs").setup()

          	local cmp = require("cmp")
          	local cmp_autopairs = require("nvim-autopairs.completion.cmp")
          	cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
          end
        '';
      };
      lsp-status.package = plugins.lsp-status;
      ltex-extra.package = plugins.ltex-extra;
      schemastore.package = plugins.schemastore;
      py_lsp.package = plugins.py_lsp;
      typescript-tools.package = plugins.typescript-tools;
      nvim-dap = {
        package = plugins.nvim-dap;
        dependencies = {
          nvim-dap-ui.package = plugins.nvim-dap-ui;
          nvim-dap-virtual-text.package = plugins.nvim-dap-virtual-text;
        };
      };
    };
    event = "VeryLazy";
  };

  crates = {
    package = plugins.crates;
    config = true;
    event = "BufRead Cargo.toml";
  };

  conform = {
    package = plugins.conform-nvim;
    config = ./conform.lua;
    event = "BufWritePre";
  };

  telescope = {
    package = plugins.telescope;
    config = ./telescope.lua;
    dependencies = {
      inherit plenary nvim-web-devicons;
      telescope-asynctasks.package = plugins.telescope-asynctasks;
      telescope-file-browser.package = plugins.telescope-file-browser;
      telescope-fzf-native.package = pkgs.vimPlugins.telescope-fzf-native-nvim;
      telescope-project.package = plugins.telescope-project;
      telescope-ui-select.package = plugins.telescope-ui-select;
      octo = {
        package = plugins.octo;
        config = true;
      };
    };
    event = "VeryLazy";
  };

  toggleterm = {
    package = plugins.toggleterm;
    config = {
      open_mapping = "<C-t>";
      shade_terminals = false;
    };
    event = "VeryLazy";
  };

  spectre = {
    package = plugins.nvim-spectre;
    config.default.replace.cmd = "oxi";
    dependencies = {
      inherit plenary;
    };
    event = "VeryLazy";
  };

  neorg = {
    package = plugins.neorg;
    config = {
      load = {
        "core.defaults" = { };
        "core.completion".config = {
          engine = "nvim-cmp";
        };
        "core.concealer" = { };
        "core.dirman".config = {
          workspaces = {
            notes = "~/notes";
          };
        };
        "core.export" = { };
        "core.export.markdown" = { };
        "core.integrations.telescope" = { };
      };
    };
    dependencies = {
      inherit plenary;
      lua-utils.package = plugins.lua-utils;
      nui.package = plugins.nui;
      nvim-nio.package = plugins.nvim-nio;
      pathlib-nvim.package = plugins.pathlib-nvim;
      neorg-telescope.package = plugins.neorg-telescope;
    };
    event = "VeryLazy";
  };

  direnv = {
    package = plugins.direnv-vim;
    event = "VeryLazy";
  };
}
