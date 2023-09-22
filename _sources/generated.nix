# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  alpha-nvim = {
    pname = "alpha-nvim";
    version = "234822140b265ec4ba3203e3e0be0e0bb826dff5";
    src = fetchFromGitHub {
      owner = "goolord";
      repo = "alpha-nvim";
      rev = "234822140b265ec4ba3203e3e0be0e0bb826dff5";
      fetchSubmodules = false;
      sha256 = "sha256-rXCibNJlNcF+p9PF7EoQM4/pnA1C+KGf7RrIyCY3OJY=";
    };
    date = "2023-09-14";
  };
  asyncrun-vim = {
    pname = "asyncrun-vim";
    version = "cf4d110d6a823d785597e01d46fc076124b965a5";
    src = fetchFromGitHub {
      owner = "skywind3000";
      repo = "asyncrun.vim";
      rev = "cf4d110d6a823d785597e01d46fc076124b965a5";
      fetchSubmodules = false;
      sha256 = "sha256-NCaNwo93zS0Rau07RoqP54A62GKUYWXoYVDH1/QVc80=";
    };
    date = "2023-09-22";
  };
  asynctasks-vim = {
    pname = "asynctasks-vim";
    version = "7b77b195a4297d3e4c9dde01c20aa6be17e3fcf3";
    src = fetchFromGitHub {
      owner = "skywind3000";
      repo = "asynctasks.vim";
      rev = "7b77b195a4297d3e4c9dde01c20aa6be17e3fcf3";
      fetchSubmodules = false;
      sha256 = "sha256-FJjBAvjR89sOU+OKhL/ZwJ/AKmQjDdeir9K1G2aFbC8=";
    };
    date = "2023-09-21";
  };
  auto-dark-mode = {
    pname = "auto-dark-mode";
    version = "7cbf30c95c793e06c7df2dbfe6713cf3205c4b59";
    src = fetchFromGitHub {
      owner = "f-person";
      repo = "auto-dark-mode.nvim";
      rev = "7cbf30c95c793e06c7df2dbfe6713cf3205c4b59";
      fetchSubmodules = false;
      sha256 = "sha256-ofZSRYaSdgpS0Q8MLnCnt1/vq1vnFSWx+RfWQpNKp5M=";
    };
    date = "2023-08-13";
  };
  bufferline = {
    pname = "bufferline";
    version = "6ecd37e0fa8b156099daedd2191130e083fb1490";
    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "bufferline.nvim";
      rev = "6ecd37e0fa8b156099daedd2191130e083fb1490";
      fetchSubmodules = false;
      sha256 = "sha256-MQMpXMgUpZA0E9TunzjXeOQxDWSCTogXbvi9VJnv4Kw=";
    };
    date = "2023-09-20";
  };
  catppuccin = {
    pname = "catppuccin";
    version = "85e93601e0f0b48aa2c6bbfae4d0e9d7a1898280";
    src = fetchFromGitHub {
      owner = "catppuccin";
      repo = "nvim";
      rev = "85e93601e0f0b48aa2c6bbfae4d0e9d7a1898280";
      fetchSubmodules = false;
      sha256 = "sha256-86tK098391f4XhJ9JbD03jrqnTmMSIU566SeQPqArzE=";
    };
    date = "2023-09-11";
  };
  cmp-buffer = {
    pname = "cmp-buffer";
    version = "3022dbc9166796b644a841a02de8dd1cc1d311fa";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-buffer";
      rev = "3022dbc9166796b644a841a02de8dd1cc1d311fa";
      fetchSubmodules = false;
      sha256 = "sha256-dG4U7MtnXThoa/PD+qFtCt76MQ14V1wX8GMYcvxEnbM=";
    };
    date = "2022-08-10";
  };
  cmp-cmdline = {
    pname = "cmp-cmdline";
    version = "8ee981b4a91f536f52add291594e89fb6645e451";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-cmdline";
      rev = "8ee981b4a91f536f52add291594e89fb6645e451";
      fetchSubmodules = false;
      sha256 = "sha256-W8v/XhPjbvKSwCrfOAPihO2N9PEVnH5Cp/Fa25lNRw4=";
    };
    date = "2023-06-09";
  };
  cmp-git = {
    pname = "cmp-git";
    version = "f900a4cf117300fdc3ba31d26f8b6223ccd9c574";
    src = fetchFromGitHub {
      owner = "petertriho";
      repo = "cmp-git";
      rev = "f900a4cf117300fdc3ba31d26f8b6223ccd9c574";
      fetchSubmodules = false;
      sha256 = "sha256-McIYDGXu+tSaY/U6eu1XouSHto/mSpJ/i4Z4UKYa+mk=";
    };
    date = "2023-05-30";
  };
  cmp-nvim-lsp = {
    pname = "cmp-nvim-lsp";
    version = "44b16d11215dce86f253ce0c30949813c0a90765";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-nvim-lsp";
      rev = "44b16d11215dce86f253ce0c30949813c0a90765";
      fetchSubmodules = false;
      sha256 = "sha256-mU0soCz79erJXMMqD/FyrJZ0mu2n6fE0deymPzQlxts=";
    };
    date = "2023-06-23";
  };
  cmp-path = {
    pname = "cmp-path";
    version = "91ff86cd9c29299a64f968ebb45846c485725f23";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-path";
      rev = "91ff86cd9c29299a64f968ebb45846c485725f23";
      fetchSubmodules = false;
      sha256 = "sha256-thppiiV3wjIaZnAXmsh7j3DUc6ceSCvGzviwFUnoPaI=";
    };
    date = "2022-10-03";
  };
  cmp_luasnip = {
    pname = "cmp_luasnip";
    version = "18095520391186d634a0045dacaa346291096566";
    src = fetchFromGitHub {
      owner = "saadparwaiz1";
      repo = "cmp_luasnip";
      rev = "18095520391186d634a0045dacaa346291096566";
      fetchSubmodules = false;
      sha256 = "sha256-Z5SPy3j2oHFxJ7bK8DP8Q/oRyLEMlnWyIfDaQcNVIS0=";
    };
    date = "2022-10-28";
  };
  color-picker = {
    pname = "color-picker";
    version = "06cb5f853535dea529a523e9a0e8884cdf9eba4d";
    src = fetchFromGitHub {
      owner = "ziontee113";
      repo = "color-picker.nvim";
      rev = "06cb5f853535dea529a523e9a0e8884cdf9eba4d";
      fetchSubmodules = false;
      sha256 = "sha256-a1hpKKvBG8ey/+gbfFEK8CPawEK9EdcQbnIfi7X0C9I=";
    };
    date = "2023-05-21";
  };
  comment = {
    pname = "comment";
    version = "0236521ea582747b58869cb72f70ccfa967d2e89";
    src = fetchFromGitHub {
      owner = "numtostr";
      repo = "comment.nvim";
      rev = "0236521ea582747b58869cb72f70ccfa967d2e89";
      fetchSubmodules = false;
      sha256 = "sha256-+dF1ZombrlO6nQggufSb0igXW5zwU++o0W/5ZA07cdc=";
    };
    date = "2023-08-07";
  };
  copilot-lua = {
    pname = "copilot-lua";
    version = "1a8032ae496916ccc7a7a52ee79194fbef29f462";
    src = fetchFromGitHub {
      owner = "zbirenbaum";
      repo = "copilot.lua";
      rev = "1a8032ae496916ccc7a7a52ee79194fbef29f462";
      fetchSubmodules = false;
      sha256 = "sha256-UqdPuLf8EPG3aGqj0yk9lTxkDUOdoEc9CRbINJZFcyg=";
    };
    date = "2023-09-21";
  };
  crates = {
    pname = "crates";
    version = "db629b5cfb2aa8de9e44efb795657297ee95ca91";
    src = fetchFromGitHub {
      owner = "saecki";
      repo = "crates.nvim";
      rev = "db629b5cfb2aa8de9e44efb795657297ee95ca91";
      fetchSubmodules = false;
      sha256 = "sha256-zBp7hOLJUsZ889qHZZSDSu5txO40kCexJgSAA5R7zQI=";
    };
    date = "2023-09-11";
  };
  diffview = {
    pname = "diffview";
    version = "a111d19ccceac6530448d329c63f998f77b5626e";
    src = fetchFromGitHub {
      owner = "sindrets";
      repo = "diffview.nvim";
      rev = "a111d19ccceac6530448d329c63f998f77b5626e";
      fetchSubmodules = false;
      sha256 = "sha256-zZQ6aeiRoaf02PyzQic3caPmks9H1AsH/E5PMdEN56E=";
    };
    date = "2023-09-17";
  };
  dressing = {
    pname = "dressing";
    version = "c1e1d5fa44fe08811b6ef4aadac2b50e602f9504";
    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "dressing.nvim";
      rev = "c1e1d5fa44fe08811b6ef4aadac2b50e602f9504";
      fetchSubmodules = false;
      sha256 = "sha256-6mTq4DnCcZeXKcNqPB2bAQdEDvQ3MJ2UergLSsmgqk8=";
    };
    date = "2023-09-05";
  };
  editorconfig = {
    pname = "editorconfig";
    version = "5b9e303e1d6f7abfe616ce4cc8d3fffc554790bf";
    src = fetchFromGitHub {
      owner = "gpanders";
      repo = "editorconfig.nvim";
      rev = "5b9e303e1d6f7abfe616ce4cc8d3fffc554790bf";
      fetchSubmodules = false;
      sha256 = "sha256-pR57tITdVGF4luEmmRYv/XFb35E3KDfcgYRijkPAc+Y=";
    };
    date = "2023-01-10";
  };
  fidget = {
    pname = "fidget";
    version = "90c22e47be057562ee9566bad313ad42d622c1d3";
    src = fetchFromGitHub {
      owner = "j-hui";
      repo = "fidget.nvim";
      rev = "90c22e47be057562ee9566bad313ad42d622c1d3";
      fetchSubmodules = false;
      sha256 = "sha256-N3O/AvsD6Ckd62kDEN4z/K5A3SZNR15DnQeZhH6/Rr0=";
    };
    date = "2023-06-09";
  };
  flash = {
    pname = "flash";
    version = "cc8c7e03987134997d74ee87e55a5717279f2d05";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "flash.nvim";
      rev = "cc8c7e03987134997d74ee87e55a5717279f2d05";
      fetchSubmodules = false;
      sha256 = "sha256-g13YjyoKny1Wq091kWwDefMalp8AQFqJ+lCEDQz4v1M=";
    };
    date = "2023-09-20";
  };
  friendly-snippets = {
    pname = "friendly-snippets";
    version = "ebf6d6e83494cdd88a54a429340256f4dbb6a052";
    src = fetchFromGitHub {
      owner = "rafamadriz";
      repo = "friendly-snippets";
      rev = "ebf6d6e83494cdd88a54a429340256f4dbb6a052";
      fetchSubmodules = false;
      sha256 = "sha256-V4seHHt0PdvS3IBWCajNyUuVj8tTHQ72Yp52Qxbu5Ac=";
    };
    date = "2023-09-02";
  };
  gitsigns = {
    pname = "gitsigns";
    version = "f0e9f5dd3218774fa725e55965b40ca78c2104eb";
    src = fetchFromGitHub {
      owner = "lewis6991";
      repo = "gitsigns.nvim";
      rev = "f0e9f5dd3218774fa725e55965b40ca78c2104eb";
      fetchSubmodules = false;
      sha256 = "sha256-BwMz5+A09wOfgVzpb3KI/h23I3pLwuB4X4t+o1OLOTE=";
    };
    date = "2023-09-22";
  };
  glance = {
    pname = "glance";
    version = "8ed5cf3b3b1231ea696d88c9efd977027429d869";
    src = fetchFromGitHub {
      owner = "dnlhc";
      repo = "glance.nvim";
      rev = "8ed5cf3b3b1231ea696d88c9efd977027429d869";
      fetchSubmodules = false;
      sha256 = "sha256-oyfZUQiVGLSOkMnJF+V+IF4mGUiKbAN4YXq3gwxOVmQ=";
    };
    date = "2023-08-26";
  };
  go-nvim = {
    pname = "go-nvim";
    version = "019936780060efc64c0f22a47afd08fbbe82e026";
    src = fetchFromGitHub {
      owner = "ray-x";
      repo = "go.nvim";
      rev = "019936780060efc64c0f22a47afd08fbbe82e026";
      fetchSubmodules = false;
      sha256 = "sha256-sxv2s3tmqk0rqLuACPJ0+LKO62fmBBJ3boniJ4kbJhc=";
    };
    date = "2023-09-22";
  };
  guihua-lua = {
    pname = "guihua-lua";
    version = "5ad8dba19ce9b9fd8965598984dfdc9c119f97e4";
    src = fetchFromGitHub {
      owner = "ray-x";
      repo = "guihua.lua";
      rev = "5ad8dba19ce9b9fd8965598984dfdc9c119f97e4";
      fetchSubmodules = false;
      sha256 = "sha256-MF30YevxZUreW88RX/Tn9i/5GpqXqKcmH1tbDmsnoZY=";
    };
    date = "2023-08-15";
  };
  headlines = {
    pname = "headlines";
    version = "74a083a3c32a08be24f7dfcc6f448ecf47857f46";
    src = fetchFromGitHub {
      owner = "lukas-reineke";
      repo = "headlines.nvim";
      rev = "74a083a3c32a08be24f7dfcc6f448ecf47857f46";
      fetchSubmodules = false;
      sha256 = "sha256-35OgSoSf9sy5urwHZ3IxZPS/tWnUEhz7NZsClkqQZ6o=";
    };
    date = "2023-07-27";
  };
  indent-blankline = {
    pname = "indent-blankline";
    version = "9637670896b68805430e2f72cf5d16be5b97a22a";
    src = fetchFromGitHub {
      owner = "lukas-reineke";
      repo = "indent-blankline.nvim";
      rev = "9637670896b68805430e2f72cf5d16be5b97a22a";
      fetchSubmodules = false;
      sha256 = "sha256-1EpjFIJ5GK9NXS6dTMJ71w/AtLtR6Q5HrAXCIRNOBAY=";
    };
    date = "2023-08-22";
  };
  lazy = {
    pname = "lazy";
    version = "2a9354c7d2368d78cbd5575a51a2af5bd8a6ad01";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "lazy.nvim";
      rev = "2a9354c7d2368d78cbd5575a51a2af5bd8a6ad01";
      fetchSubmodules = false;
      sha256 = "sha256-03dFvXeQ1rTK2ESP9VcssIP+PF7ipcGUnrpS+TFOgAU=";
    };
    date = "2023-08-26";
  };
  lsp-status = {
    pname = "lsp-status";
    version = "54f48eb5017632d81d0fd40112065f1d062d0629";
    src = fetchFromGitHub {
      owner = "nvim-lua";
      repo = "lsp-status.nvim";
      rev = "54f48eb5017632d81d0fd40112065f1d062d0629";
      fetchSubmodules = false;
      sha256 = "sha256-gmLeVnDyL8Zf5ZG92tP3mb/LAt438BxFtAi/Xax2zLI=";
    };
    date = "2022-08-03";
  };
  lspkind = {
    pname = "lspkind";
    version = "57610d5ab560c073c465d6faf0c19f200cb67e6e";
    src = fetchFromGitHub {
      owner = "onsails";
      repo = "lspkind.nvim";
      rev = "57610d5ab560c073c465d6faf0c19f200cb67e6e";
      fetchSubmodules = false;
      sha256 = "sha256-S+qZm51hw/cRujIfHV/1x1fYyCKI4XQ0utSL8uy4l6I=";
    };
    date = "2023-05-05";
  };
  ltex-extra = {
    pname = "ltex-extra";
    version = "9bed99b2b8488cc2daf66c76d2e0cf051ee80d13";
    src = fetchFromGitHub {
      owner = "barreiroleo";
      repo = "ltex-extra.nvim";
      rev = "9bed99b2b8488cc2daf66c76d2e0cf051ee80d13";
      fetchSubmodules = false;
      sha256 = "sha256-LzgAICiGuaHfYkQq7/4bRJ1M5KopFBcSTVTHrb3rm+w=";
    };
    date = "2023-07-28";
  };
  lualine = {
    pname = "lualine";
    version = "45e27ca739c7be6c49e5496d14fcf45a303c3a63";
    src = fetchFromGitHub {
      owner = "nvim-lualine";
      repo = "lualine.nvim";
      rev = "45e27ca739c7be6c49e5496d14fcf45a303c3a63";
      fetchSubmodules = false;
      sha256 = "sha256-v8finXk+sLNaFMA7pSHhEu0WF5mhPYWHEKhl0IKBv8c=";
    };
    date = "2023-08-03";
  };
  luasnip = {
    pname = "luasnip";
    version = "c5fb16a934892086d4ba01bac48b77c65435025e";
    src = fetchFromGitHub {
      owner = "L3MON4D3";
      repo = "LuaSnip";
      rev = "c5fb16a934892086d4ba01bac48b77c65435025e";
      fetchSubmodules = false;
      sha256 = "sha256-AReM4F4DF3XxoboUPvt6AUJ3LSEwlBeCzZtarC9f+CE=";
    };
    date = "2023-09-21";
  };
  markdown-preview = {
    pname = "markdown-preview";
    version = "02cc3874738bc0f86e4b91f09b8a0ac88aef8e96";
    src = fetchFromGitHub {
      owner = "iamcco";
      repo = "markdown-preview.nvim";
      rev = "02cc3874738bc0f86e4b91f09b8a0ac88aef8e96";
      fetchSubmodules = false;
      sha256 = "sha256-e1Buvu/lkEt9V5LVDFKWTasnSX6EdtRgWyVDZA8LpUE=";
    };
    "app/yarn.lock" = builtins.readFile ./markdown-preview-02cc3874738bc0f86e4b91f09b8a0ac88aef8e96/app/yarn.lock;
    date = "2022-05-13";
  };
  neoconf = {
    pname = "neoconf";
    version = "b7cde4ba41eabf9bec9464c990bcf84a0fef4526";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "neoconf.nvim";
      rev = "b7cde4ba41eabf9bec9464c990bcf84a0fef4526";
      fetchSubmodules = false;
      sha256 = "sha256-o3Fkav9aenxQ1Humspv3+aPV33MqoaiaZel1S61wWRU=";
    };
    date = "2023-09-19";
  };
  neodev = {
    pname = "neodev";
    version = "e9dd1535759794635a951644c183beb327879407";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "neodev.nvim";
      rev = "e9dd1535759794635a951644c183beb327879407";
      fetchSubmodules = false;
      sha256 = "sha256-30bsVM9XmVY6Qbooogsl16xKl/xyJfdKXveuvFD7q64=";
    };
    date = "2023-09-21";
  };
  neogit = {
    pname = "neogit";
    version = "b9f280e36710bb55686867116e3d31eb68984ec1";
    src = fetchFromGitHub {
      owner = "NeogitOrg";
      repo = "neogit";
      rev = "b9f280e36710bb55686867116e3d31eb68984ec1";
      fetchSubmodules = false;
      sha256 = "sha256-DAEzisabFQ34elMcfsQbjYIzb5Jfn6f+CUKY03rJhTI=";
    };
    date = "2023-09-22";
  };
  neorepl = {
    pname = "neorepl";
    version = "bc819bb42edca9c4a6b6e5d00f09f94a49c3b735";
    src = fetchFromGitHub {
      owner = "ii14";
      repo = "neorepl.nvim";
      rev = "bc819bb42edca9c4a6b6e5d00f09f94a49c3b735";
      fetchSubmodules = false;
      sha256 = "sha256-OkePRGuaLWE+NRdONAh14PijUF08HsYf9rvwi58fzRU=";
    };
    date = "2022-11-07";
  };
  neorg = {
    pname = "neorg";
    version = "e20d032ea3c485fc499f4dbc4bf7ce6afd6767ba";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "neorg";
      rev = "e20d032ea3c485fc499f4dbc4bf7ce6afd6767ba";
      fetchSubmodules = false;
      sha256 = "sha256-7fLJUsTz89PsK+7OhY/ePsbuu5Lp3PNAZp6oUUWivYM=";
    };
    date = "2023-09-22";
  };
  neovim-session-manager = {
    pname = "neovim-session-manager";
    version = "df544e17798dd0e6e33ecf0991dfde9174367837";
    src = fetchFromGitHub {
      owner = "Shatur";
      repo = "neovim-session-manager";
      rev = "df544e17798dd0e6e33ecf0991dfde9174367837";
      fetchSubmodules = false;
      sha256 = "sha256-9z974T4Wu0+WXnrrijS9ySZNWCF/s8588k9lBGhg0/k=";
    };
    date = "2023-09-05";
  };
  null-ls = {
    pname = "null-ls";
    version = "0010ea927ab7c09ef0ce9bf28c2b573fc302f5a7";
    src = fetchFromGitHub {
      owner = "jose-elias-alvarez";
      repo = "null-ls.nvim";
      rev = "0010ea927ab7c09ef0ce9bf28c2b573fc302f5a7";
      fetchSubmodules = false;
      sha256 = "sha256-cWA0rzkOp/ekVKaFee7iea1lhnqKtWUIU+fW5M950wI=";
    };
    date = "2023-08-11";
  };
  nvim-autopairs = {
    pname = "nvim-autopairs";
    version = "7b3eb9b5813a22188c4dbb248475fcbaf9f4d195";
    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-autopairs";
      rev = "7b3eb9b5813a22188c4dbb248475fcbaf9f4d195";
      fetchSubmodules = false;
      sha256 = "sha256-I+/DWPXHxKVyEi1PUhh4CBtSjaljVHip+p0wT2zIidY=";
    };
    date = "2023-09-19";
  };
  nvim-cmp = {
    pname = "nvim-cmp";
    version = "5dce1b778b85c717f6614e3f4da45e9f19f54435";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "nvim-cmp";
      rev = "5dce1b778b85c717f6614e3f4da45e9f19f54435";
      fetchSubmodules = false;
      sha256 = "sha256-WGck3By9GhnBUmzLGi2wnKjDreQx5kBOmHCbC5BZhfo=";
    };
    date = "2023-08-26";
  };
  nvim-colorizer-lua = {
    pname = "nvim-colorizer-lua";
    version = "dde3084106a70b9a79d48f426f6d6fec6fd203f7";
    src = fetchFromGitHub {
      owner = "nvchad";
      repo = "nvim-colorizer.lua";
      rev = "dde3084106a70b9a79d48f426f6d6fec6fd203f7";
      fetchSubmodules = false;
      sha256 = "sha256-hShQabr+UafsP+yicWkHycWLTbPhOpRpoa9oTMMVZ9o=";
    };
    date = "2023-02-27";
  };
  nvim-dap = {
    pname = "nvim-dap";
    version = "b3d4408e29d924fe130c9397a7c3b3630b3ea671";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-dap";
      rev = "b3d4408e29d924fe130c9397a7c3b3630b3ea671";
      fetchSubmodules = false;
      sha256 = "sha256-mnK2pFhuWpWb8ynlFZTulA/L4gXASPRuJpGIC/UpUiA=";
    };
    date = "2023-09-14";
  };
  nvim-dap-ui = {
    pname = "nvim-dap-ui";
    version = "34160a7ce6072ef332f350ae1d4a6a501daf0159";
    src = fetchFromGitHub {
      owner = "rcarriga";
      repo = "nvim-dap-ui";
      rev = "34160a7ce6072ef332f350ae1d4a6a501daf0159";
      fetchSubmodules = false;
      sha256 = "sha256-IdWPzLpNH0fkubELr2uTI7UnB0Yaf/zCkF8WUWBtyaM=";
    };
    date = "2023-09-10";
  };
  nvim-dap-virtual-text = {
    pname = "nvim-dap-virtual-text";
    version = "57f1dbd0458dd84a286b27768c142e1567f3ce3b";
    src = fetchFromGitHub {
      owner = "theHamsta";
      repo = "nvim-dap-virtual-text";
      rev = "57f1dbd0458dd84a286b27768c142e1567f3ce3b";
      fetchSubmodules = false;
      sha256 = "sha256-yzMRudA8Wag881ewzw82uXPzHoxaB6kAapPElKN6G6E=";
    };
    date = "2023-05-25";
  };
  nvim-lspconfig = {
    pname = "nvim-lspconfig";
    version = "4266f9bb36b4fb09edd19b67d95043cf7ff88ddf";
    src = fetchFromGitHub {
      owner = "neovim";
      repo = "nvim-lspconfig";
      rev = "4266f9bb36b4fb09edd19b67d95043cf7ff88ddf";
      fetchSubmodules = false;
      sha256 = "sha256-AJdodctcDJOV/gvERz5MHkSSMjt7zZ3YWpVdJkoISLo=";
    };
    date = "2023-09-20";
  };
  nvim-navic = {
    pname = "nvim-navic";
    version = "0ffa7ffe6588f3417e680439872f5049e38a24db";
    src = fetchFromGitHub {
      owner = "SmiteshP";
      repo = "nvim-navic";
      rev = "0ffa7ffe6588f3417e680439872f5049e38a24db";
      fetchSubmodules = false;
      sha256 = "sha256-X4CFFihI5PFIiHlwQt6VoUIxhm5oBuUvIQxCo9k7zRE=";
    };
    date = "2023-09-18";
  };
  nvim-notify = {
    pname = "nvim-notify";
    version = "94859430020f5cf32a1b97ddd9e596fed9db7981";
    src = fetchFromGitHub {
      owner = "rcarriga";
      repo = "nvim-notify";
      rev = "94859430020f5cf32a1b97ddd9e596fed9db7981";
      fetchSubmodules = false;
      sha256 = "sha256-80AvfMbv68BtZyJ/hWBZ9jJQbWw2R75VQ1uzcwSqzBE=";
    };
    date = "2023-09-10";
  };
  nvim-spectre = {
    pname = "nvim-spectre";
    version = "97cfd1b0f5a6ab35979ce1bee6c17f54745fd1e5";
    src = fetchFromGitHub {
      owner = "nvim-pack";
      repo = "nvim-spectre";
      rev = "97cfd1b0f5a6ab35979ce1bee6c17f54745fd1e5";
      fetchSubmodules = false;
      sha256 = "sha256-J9/WPaqpsDpHkymeYPFPqRiU01auLOic8woESWXvSAY=";
    };
    date = "2023-09-13";
  };
  nvim-surround = {
    pname = "nvim-surround";
    version = "1c2ef599abeeb98e40706830bcd27e90e259367a";
    src = fetchFromGitHub {
      owner = "kylechui";
      repo = "nvim-surround";
      rev = "1c2ef599abeeb98e40706830bcd27e90e259367a";
      fetchSubmodules = false;
      sha256 = "sha256-mc3PI2DwcSVe6eWjQzhh69+4Cv0m23puZ9oZbTFIQRo=";
    };
    date = "2023-08-17";
  };
  nvim-tree-lua = {
    pname = "nvim-tree-lua";
    version = "a3aa3b47eac8b6289f028743bef4ce9eb0f6782e";
    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-tree.lua";
      rev = "a3aa3b47eac8b6289f028743bef4ce9eb0f6782e";
      fetchSubmodules = false;
      sha256 = "sha256-PSqsaKsAkkwt0Lm4V/pVBejuotfZufUpcojiubzAzVw=";
    };
    date = "2023-09-17";
  };
  nvim-treesitter = {
    pname = "nvim-treesitter";
    version = "fc93fa5c07df7cd578a3ea82d7c075c0460a6884";
    src = fetchFromGitHub {
      owner = "nvim-treesitter";
      repo = "nvim-treesitter";
      rev = "fc93fa5c07df7cd578a3ea82d7c075c0460a6884";
      fetchSubmodules = false;
      sha256 = "sha256-p611he/hvClmdBKLBlz+dbdq2JCF8BerbXuisrzzwzY=";
    };
    date = "2023-09-22";
  };
  nvim-treesitter-context = {
    pname = "nvim-treesitter-context";
    version = "b6c763db8cc486215ba96e0a67418848a710ab25";
    src = fetchFromGitHub {
      owner = "nvim-treesitter";
      repo = "nvim-treesitter-context";
      rev = "b6c763db8cc486215ba96e0a67418848a710ab25";
      fetchSubmodules = false;
      sha256 = "sha256-K5Son2U0HI/hoH1OPV959jxK3jANkeWSygPeppjNXH0=";
    };
    date = "2023-09-06";
  };
  nvim-treesitter-textobjects = {
    pname = "nvim-treesitter-textobjects";
    version = "bd103502252027434ec42f628d2dbf54821d4ce6";
    src = fetchFromGitHub {
      owner = "nvim-treesitter";
      repo = "nvim-treesitter-textobjects";
      rev = "bd103502252027434ec42f628d2dbf54821d4ce6";
      fetchSubmodules = false;
      sha256 = "sha256-bC3yXw0qbcojHNy0peObGUK9DD047CqOAiQ8soEAHww=";
    };
    date = "2023-08-29";
  };
  nvim-ts-autotag = {
    pname = "nvim-ts-autotag";
    version = "6be1192965df35f94b8ea6d323354f7dc7a557e4";
    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-ts-autotag";
      rev = "6be1192965df35f94b8ea6d323354f7dc7a557e4";
      fetchSubmodules = false;
      sha256 = "sha256-4qTtXYA5HyG1sADV0wsiccO/G89qEoYPmlg8tTx7h8g=";
    };
    date = "2023-06-16";
  };
  nvim-web-devicons = {
    pname = "nvim-web-devicons";
    version = "973ab742f143a796a779af4d786ec409116a0d87";
    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-web-devicons";
      rev = "973ab742f143a796a779af4d786ec409116a0d87";
      fetchSubmodules = false;
      sha256 = "sha256-9IPEts+RaM7Xh1ZOS8V/rECyreHK6FRKca52n031u7o=";
    };
    date = "2023-09-15";
  };
  octo = {
    pname = "octo";
    version = "ffa4c4f9d6579039d772ae32c13083e0974fa31c";
    src = fetchFromGitHub {
      owner = "pwntester";
      repo = "octo.nvim";
      rev = "ffa4c4f9d6579039d772ae32c13083e0974fa31c";
      fetchSubmodules = false;
      sha256 = "sha256-gcyXsqGEHAOAaKQll1+GddsPWNyblAMU9TgpHF0TDqw=";
    };
    date = "2023-09-18";
  };
  playground = {
    pname = "playground";
    version = "ba48c6a62a280eefb7c85725b0915e021a1a0749";
    src = fetchFromGitHub {
      owner = "nvim-treesitter";
      repo = "playground";
      rev = "ba48c6a62a280eefb7c85725b0915e021a1a0749";
      fetchSubmodules = false;
      sha256 = "sha256-gOQr61Y3bVa6EAb0P924X9SJmg9lOmGiLcFTMdgu8u0=";
    };
    date = "2023-09-15";
  };
  plenary = {
    pname = "plenary";
    version = "9ce85b0f7dcfe5358c0be937ad23e456907d410b";
    src = fetchFromGitHub {
      owner = "nvim-lua";
      repo = "plenary.nvim";
      rev = "9ce85b0f7dcfe5358c0be937ad23e456907d410b";
      fetchSubmodules = false;
      sha256 = "sha256-s3qsKf05X5W1VdZT1vYXGQNK0UaiI+umWUf06Spe4hw=";
    };
    date = "2023-09-12";
  };
  presence = {
    pname = "presence";
    version = "87c857a56b7703f976d3a5ef15967d80508df6e6";
    src = fetchFromGitHub {
      owner = "andweeb";
      repo = "presence.nvim";
      rev = "87c857a56b7703f976d3a5ef15967d80508df6e6";
      fetchSubmodules = false;
      sha256 = "sha256-ZpsunLsn//zYgUtmAm5FqKVueVd/Pa1r55ZDqxCimBk=";
    };
    date = "2023-01-29";
  };
  py_lsp = {
    pname = "py_lsp";
    version = "5b2bd6433a2dbab76d54d58ccc1d1e89b220091c";
    src = fetchFromGitHub {
      owner = "hallerpatrick";
      repo = "py_lsp.nvim";
      rev = "5b2bd6433a2dbab76d54d58ccc1d1e89b220091c";
      fetchSubmodules = false;
      sha256 = "sha256-YOYrumIYlWcZBL1LSeBWseb/0G4n8obcll6wPwaXqpM=";
    };
    date = "2023-02-28";
  };
  rainbow-delimiters = {
    pname = "rainbow-delimiters";
    version = "9cbd3dc409af1f5531778ccd1ea6bce668241f39";
    src = fetchFromGitHub {
      owner = "hiphish";
      repo = "rainbow-delimiters.nvim";
      rev = "9cbd3dc409af1f5531778ccd1ea6bce668241f39";
      fetchSubmodules = false;
      sha256 = "sha256-4aH2UhG1alE9F1jOMZUSSnvHmWYR6QSC4HwH3oOv5GM=";
    };
    date = "2023-08-26";
  };
  rust-tools = {
    pname = "rust-tools";
    version = "0cc8adab23117783a0292a0c8a2fbed1005dc645";
    src = fetchFromGitHub {
      owner = "simrat39";
      repo = "rust-tools.nvim";
      rev = "0cc8adab23117783a0292a0c8a2fbed1005dc645";
      fetchSubmodules = false;
      sha256 = "sha256-jtfyDxifchznUupLSao6nmpVqaX1yO0xN+NhqS9fgxg=";
    };
    date = "2023-07-10";
  };
  schemastore = {
    pname = "schemastore";
    version = "d2a3d1da007549c921f7b0e22521d1c20d09c8a7";
    src = fetchFromGitHub {
      owner = "b0o";
      repo = "schemastore.nvim";
      rev = "d2a3d1da007549c921f7b0e22521d1c20d09c8a7";
      fetchSubmodules = false;
      sha256 = "sha256-bCZK5GWkEcYLLuDotbybVVLMe5L8Kk6bTKXHWZTQIgE=";
    };
    date = "2023-09-21";
  };
  tagalong-vim = {
    pname = "tagalong-vim";
    version = "5a2bbf2b1d5b657685a49d48d98a4aa921c1fde3";
    src = fetchFromGitHub {
      owner = "AndrewRadev";
      repo = "tagalong.vim";
      rev = "5a2bbf2b1d5b657685a49d48d98a4aa921c1fde3";
      fetchSubmodules = false;
      sha256 = "sha256-zTdq7hg+tPTy803o+f3gIzb7TCw4KRgKAaLf7bBC1A4=";
    };
    date = "2023-09-07";
  };
  telescope = {
    pname = "telescope";
    version = "40c8d2fc2b729dd442eda093cf8c9496d6e23732";
    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope.nvim";
      rev = "40c8d2fc2b729dd442eda093cf8c9496d6e23732";
      fetchSubmodules = false;
      sha256 = "sha256-/SVOhG05LLAl7kYwtf7I2kcBmpWud3DmAVJESp+13SI=";
    };
    date = "2023-09-19";
  };
  telescope-asynctasks = {
    pname = "telescope-asynctasks";
    version = "065300fb0a8ba6a1c81991da1873c73e136dcdc0";
    src = fetchFromGitHub {
      owner = "GustavoKatel";
      repo = "telescope-asynctasks.nvim";
      rev = "065300fb0a8ba6a1c81991da1873c73e136dcdc0";
      fetchSubmodules = false;
      sha256 = "sha256-50HiNqIeaBz1koWwNpLSa8vd+JTVALbafcufVn+S8hw=";
    };
    date = "2022-04-09";
  };
  telescope-file-browser = {
    pname = "telescope-file-browser";
    version = "c21bdaee7657439e07fb2ebb9ce2ab7221ba1b68";
    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope-file-browser.nvim";
      rev = "c21bdaee7657439e07fb2ebb9ce2ab7221ba1b68";
      fetchSubmodules = false;
      sha256 = "sha256-6P/njv+Oprs9NIvVp0gjgXyYys65pXPULdB2lshyZjo=";
    };
    date = "2023-09-22";
  };
  telescope-fzf-native = {
    pname = "telescope-fzf-native";
    version = "6c921ca12321edaa773e324ef64ea301a1d0da62";
    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope-fzf-native.nvim";
      rev = "6c921ca12321edaa773e324ef64ea301a1d0da62";
      fetchSubmodules = false;
      sha256 = "sha256-Hob1x/jwQYfphYGWQ/i44NVyCM+WFT5/4+J5J4/tLYA=";
    };
    date = "2023-09-10";
  };
  telescope-project = {
    pname = "telescope-project";
    version = "7c64b181dd4e72deddcf6f319e3bf1e95b2a2f30";
    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope-project.nvim";
      rev = "7c64b181dd4e72deddcf6f319e3bf1e95b2a2f30";
      fetchSubmodules = false;
      sha256 = "sha256-H6lrPjpOUVleKHB0ziI+6dthg9ymitHhEWtcgYJTrKo=";
    };
    date = "2023-04-27";
  };
  telescope-ui-select = {
    pname = "telescope-ui-select";
    version = "62ea5e58c7bbe191297b983a9e7e89420f581369";
    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope-ui-select.nvim";
      rev = "62ea5e58c7bbe191297b983a9e7e89420f581369";
      fetchSubmodules = false;
      sha256 = "sha256-/JM2KX70JXa3sydrUj13Vd4rRwhn3VrdW7qLLHqIqyY=";
    };
    date = "2022-04-30";
  };
  todo-comments = {
    pname = "todo-comments";
    version = "3094ead8edfa9040de2421deddec55d3762f64d1";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "todo-comments.nvim";
      rev = "3094ead8edfa9040de2421deddec55d3762f64d1";
      fetchSubmodules = false;
      sha256 = "sha256-Qm8AJ8omU5eCfjLt91DVxLS0R3QHbfW55ZTegB1JvWI=";
    };
    date = "2023-07-28";
  };
  toggleterm = {
    pname = "toggleterm";
    version = "0427b908ebefcb3701c7f2cfbdafa37d11afe71a";
    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "toggleterm.nvim";
      rev = "0427b908ebefcb3701c7f2cfbdafa37d11afe71a";
      fetchSubmodules = false;
      sha256 = "sha256-oOKKYbmCPlnCmO5DGHKz4JytzuFjvurRRLVPMArlufM=";
    };
    date = "2023-09-11";
  };
  trouble = {
    pname = "trouble";
    version = "3f85d8ed30e97ceeddbbcf80224245d347053711";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "trouble.nvim";
      rev = "3f85d8ed30e97ceeddbbcf80224245d347053711";
      fetchSubmodules = false;
      sha256 = "sha256-3dielW+Y+Rpt/sotZjk8tYHhYTlSrYHS5AILdytyNVA=";
    };
    date = "2023-08-30";
  };
  true-zen = {
    pname = "true-zen";
    version = "2b9e210e0d1a735e1fa85ec22190115dffd963aa";
    src = fetchFromGitHub {
      owner = "pocco81";
      repo = "true-zen.nvim";
      rev = "2b9e210e0d1a735e1fa85ec22190115dffd963aa";
      fetchSubmodules = false;
      sha256 = "sha256-euaxTWS98i14wvuKrFvdCRigsKqrSUwZpMEmYtUBBss=";
    };
    date = "2023-06-09";
  };
  typescript-tools = {
    pname = "typescript-tools";
    version = "05dcc6dfc3fe032a3e12f05afff0c1bbe3d490be";
    src = fetchFromGitHub {
      owner = "pmizio";
      repo = "typescript-tools.nvim";
      rev = "05dcc6dfc3fe032a3e12f05afff0c1bbe3d490be";
      fetchSubmodules = false;
      sha256 = "sha256-5hzh5LqxtPoCtEUI5nvseZwZREGZ1mfW8mManOBMmBA=";
    };
    date = "2023-09-19";
  };
  vim-dadbod = {
    pname = "vim-dadbod";
    version = "7d80bbd11c407a09e0f7b869c38f3dec3902805f";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-dadbod";
      rev = "7d80bbd11c407a09e0f7b869c38f3dec3902805f";
      fetchSubmodules = false;
      sha256 = "sha256-3Qg8GZVur4pkz31+WtkwSlPHsbAUOWu/DHEH8pjnSok=";
    };
    date = "2023-05-22";
  };
  vim-dadbod-completion = {
    pname = "vim-dadbod-completion";
    version = "fc7321a17f4c55db11fae89a884ddf4724020bae";
    src = fetchFromGitHub {
      owner = "kristijanhusak";
      repo = "vim-dadbod-completion";
      rev = "fc7321a17f4c55db11fae89a884ddf4724020bae";
      fetchSubmodules = false;
      sha256 = "sha256-HMP+YBO0c1OXkn1na7rtg/Sf/pBec+3HOkQx+j/qfvg=";
    };
    date = "2023-04-25";
  };
  vim-dadbod-ui = {
    pname = "vim-dadbod-ui";
    version = "5c4cad56f2774c3cd3a6ee9944c787820f2fcb20";
    src = fetchFromGitHub {
      owner = "kristijanhusak";
      repo = "vim-dadbod-ui";
      rev = "5c4cad56f2774c3cd3a6ee9944c787820f2fcb20";
      fetchSubmodules = false;
      sha256 = "sha256-4numfhov2vyxUxLBspJNE3FvWu0J34eavJYGSRXHVFU=";
    };
    date = "2023-09-19";
  };
  vim-fugitive = {
    pname = "vim-fugitive";
    version = "99db68d9b3304580bd383da7aaee05c7a954a344";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-fugitive";
      rev = "99db68d9b3304580bd383da7aaee05c7a954a344";
      fetchSubmodules = false;
      sha256 = "sha256-vNCyHrznEow4URIfvN7RyVBOniDaVsn1R4XSPG78hRE=";
    };
    date = "2023-09-18";
  };
  vim-gnupg = {
    pname = "vim-gnupg";
    version = "f9b608f29003dfde6450931dc0f495a912973a88";
    src = fetchFromGitHub {
      owner = "jamessan";
      repo = "vim-gnupg";
      rev = "f9b608f29003dfde6450931dc0f495a912973a88";
      fetchSubmodules = false;
      sha256 = "sha256-B6hSEeNjJdDUDjM0DlmAxc3zRRcJz91//GPk6rCWn6I=";
    };
    date = "2022-05-18";
  };
  vim-helm = {
    pname = "vim-helm";
    version = "c2e7b85711d410e1d73e64eb5df7b70b1c4c10eb";
    src = fetchFromGitHub {
      owner = "towolf";
      repo = "vim-helm";
      rev = "c2e7b85711d410e1d73e64eb5df7b70b1c4c10eb";
      fetchSubmodules = false;
      sha256 = "sha256-NQXmIcDnUqbeiNX0QqvQbLGmONuC8HGFlfsBHBXWEc4=";
    };
    date = "2022-08-22";
  };
  vim-just = {
    pname = "vim-just";
    version = "927b41825b9cd07a40fc15b4c68635c4b36fa923";
    src = fetchFromGitHub {
      owner = "NoahTheDuke";
      repo = "vim-just";
      rev = "927b41825b9cd07a40fc15b4c68635c4b36fa923";
      fetchSubmodules = false;
      sha256 = "sha256-BmxYWUVBzTowH68eWNrQKV1fNN9d1hRuCnXqbEagRoY=";
    };
    date = "2023-08-02";
  };
  vim-table-mode = {
    pname = "vim-table-mode";
    version = "9555a3e6e5bcf285ec181b7fc983eea90500feb4";
    src = fetchFromGitHub {
      owner = "dhruvasagar";
      repo = "vim-table-mode";
      rev = "9555a3e6e5bcf285ec181b7fc983eea90500feb4";
      fetchSubmodules = false;
      sha256 = "sha256-upjy6O1v7Sev5KwPvlia/bvAKDdH0a7eauQTOCCa+F8=";
    };
    date = "2022-10-20";
  };
  which-key = {
    pname = "which-key";
    version = "7ccf476ebe0445a741b64e36c78a682c1c6118b7";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "which-key.nvim";
      rev = "7ccf476ebe0445a741b64e36c78a682c1c6118b7";
      fetchSubmodules = false;
      sha256 = "sha256-B1+EHd2eH/EbD5Kip9PfhdPyyGfIkD6rsx0Z3rXvb5w=";
    };
    date = "2023-07-28";
  };
}
