{ pkgs }:
let
  nvfetcher = pkgs.callPackage ../_sources/generated.nix { };
  srcs = builtins.mapAttrs (_: pkg: pkg.src) nvfetcher;
  inherit (pkgs.lib.generators) mkLuaInline;
in
rec {
  config = {
    src = ../config;
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
    dependencies = {
      inherit plenary nvim-web-devicons;
    };
    event = "VeryLazy";
  };
  nvim-web-devicons = {
    src = srcs.nvim-web-devicons;
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
        src = srcs.nvim-treesitter-context;
        config = {
          enable = false;
          mode = "topline";
        };
      };
      nvim-treesitter-textobjects.src = srcs.nvim-treesitter-textobjects;
      nvim-ts-autotag.src = srcs.nvim-ts-autotag;
      rainbow-delimiters.src = srcs.rainbow-delimiters;
      headlines = {
        src = srcs.headlines;
        config = true;
      };
    };
    event = "VeryLazy";
  };
  vim-helm = {
    src = srcs.vim-helm;
    event = "VeryLazy";
  };

  markdown-preview = {
    package = pkgs.vimPlugins.markdown-preview-nvim;
    ft = "markdown";
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
    ft = "markdown";
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
        dependencies = {
          inherit plenary;
        };
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
    dependencies = {
      inherit which-key;
    };
    event = "VeryLazy";
  };

  fidget = {
    src = srcs.fidget;
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
    src = srcs.bufferline;
    config = ./bufferline.lua;
    dependencies = {
      inherit catppuccin;
    };
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
    src = srcs.todo-comments;
    config = true;
    event = "VeryLazy";
  };

  copilot = {
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
        gitcommit = true;
        markdown = true;
        yaml = true;
      };
    };
    event = "InsertEnter";
  };

  fugitive = {
    src = srcs.vim-fugitive;
    event = "VeryLazy";
  };
  gitsigns = {
    src = srcs.gitsigns;
    config = ./gitsigns.lua;
    dependencies = {
      inherit which-key;
    };
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
    event = "UIEnter";
  };

  wakatime = {
    enabled = ''
      function()
        return vim.fn.glob("~/.wakatime.cfg") ~= "" or vim.fn.glob("$WAKATIME_HOME/.wakatime.cfg") ~= ""
      end
    '';
    src = pkgs.vimPlugins.vim-wakatime;
    paths = [ pkgs.wakatime ];
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
        dependencies = {
          inherit nvim-web-devicons;
        };
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
    dependencies = {
      cmp.src = srcs.nvim-cmp;
      cmp-buffer.src = srcs.cmp-buffer;
      cmp-cmdline.src = srcs.cmp-cmdline;
      cmp-nvim-lsp.src = srcs.cmp-nvim-lsp;
      cmp-path.src = srcs.cmp-path;
      luasnip = {
        src = srcs.luasnip;
        dependencies.friendly-snippets.src = srcs.friendly-snippets;
      };
      cmp_luasnip.src = srcs.cmp_luasnip;
      cmp-git.src = srcs.cmp-git;
      lspkind.src = srcs.lspkind;
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
      };
      lsp-status.src = srcs.lsp-status;
      ltex-extra.src = srcs.ltex-extra;
      schemastore.src = srcs.schemastore;
      py_lsp.src = srcs.py_lsp;
      typescript-tools.src = srcs.typescript-tools;
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

  crates = {
    src = srcs.crates;
    config = true;
    event = "BufRead Cargo.toml";
  };

  conform = {
    src = srcs.conform-nvim;
    config = ./conform.lua;
    event = "BufWritePre";
  };

  telescope = {
    src = srcs.telescope;
    config = ./telescope.lua;
    dependencies = {
      inherit plenary nvim-web-devicons;
      telescope-asynctasks.src = srcs.telescope-asynctasks;
      telescope-file-browser.src = srcs.telescope-file-browser;
      telescope-fzf-native.package = pkgs.vimPlugins.telescope-fzf-native-nvim;
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
    config.replace_engine.sed.cmd = "${pkgs.gnused}/bin/sed";
    dependencies = {
      inherit plenary;
    };
    event = "VeryLazy";
  };

  neorg = {
    src = srcs.neorg;
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
