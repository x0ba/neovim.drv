# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  alpha-nvim = {
    pname = "alpha-nvim";
    version = "41283fb402713fc8b327e60907f74e46166f4cfd";
    src = fetchFromGitHub {
      owner = "goolord";
      repo = "alpha-nvim";
      rev = "41283fb402713fc8b327e60907f74e46166f4cfd";
      fetchSubmodules = false;
      sha256 = "sha256-kTVPKZ/e1us/uHfSwFwR38lFYN8EotJq2jKz6xm/eqg=";
    };
    date = "2024-02-25";
  };
  asyncrun-vim = {
    pname = "asyncrun-vim";
    version = "182c636909cfd41e1d72e1278a7db6a4e5271b81";
    src = fetchFromGitHub {
      owner = "skywind3000";
      repo = "asyncrun.vim";
      rev = "182c636909cfd41e1d72e1278a7db6a4e5271b81";
      fetchSubmodules = false;
      sha256 = "sha256-Jc6MgOBfkJzln5W/2Zfsg8Uk3atjxzyYXYVIfpcCeVU=";
    };
    date = "2024-05-23";
  };
  asynctasks-vim = {
    pname = "asynctasks-vim";
    version = "851da4282ffb2ce3d5e4c2f70d2d09da7839d48f";
    src = fetchFromGitHub {
      owner = "skywind3000";
      repo = "asynctasks.vim";
      rev = "851da4282ffb2ce3d5e4c2f70d2d09da7839d48f";
      fetchSubmodules = false;
      sha256 = "sha256-+P6KfM5ud4MVSN9mCOR2cJxGvNqXutNqBDyl8ptItYs=";
    };
    date = "2023-12-12";
  };
  auto-dark-mode = {
    pname = "auto-dark-mode";
    version = "2b8c938da9a7c9432120266b92936b2c22e8cfb8";
    src = fetchFromGitHub {
      owner = "f-person";
      repo = "auto-dark-mode.nvim";
      rev = "2b8c938da9a7c9432120266b92936b2c22e8cfb8";
      fetchSubmodules = false;
      sha256 = "sha256-ZRaJbIuQJmh6MoWjRwNK8n0dmd5Cv/BoXGovNhggcnQ=";
    };
    date = "2024-05-18";
  };
  bufferline = {
    pname = "bufferline";
    version = "73edc1f2732678e7a681e3d3be49782610914f6b";
    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "bufferline.nvim";
      rev = "73edc1f2732678e7a681e3d3be49782610914f6b";
      fetchSubmodules = false;
      sha256 = "sha256-u34PuwWmh0x2bbi4LM/JI3hx64tJ0vedfx5eEYAxRlM=";
    };
    date = "2024-05-21";
  };
  catppuccin = {
    pname = "catppuccin";
    version = "d97387aea8264f484bb5d5e74f2182a06c83e0d8";
    src = fetchFromGitHub {
      owner = "catppuccin";
      repo = "nvim";
      rev = "d97387aea8264f484bb5d5e74f2182a06c83e0d8";
      fetchSubmodules = false;
      sha256 = "sha256-aRrhVHQSCyo1Ti1j8ogWJ8e0eJWiTw5+abIpyUxky/M=";
    };
    date = "2024-05-08";
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
    version = "d250c63aa13ead745e3a40f61fdd3470efde3923";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-cmdline";
      rev = "d250c63aa13ead745e3a40f61fdd3470efde3923";
      fetchSubmodules = false;
      sha256 = "sha256-iBmXp+gUSMbgfkv7c7RDQAwPq02e07wEnBETP0dWBOo=";
    };
    date = "2024-03-22";
  };
  cmp-git = {
    pname = "cmp-git";
    version = "b9603f18496bc3ca07e6bd474607081af709e750";
    src = fetchFromGitHub {
      owner = "petertriho";
      repo = "cmp-git";
      rev = "b9603f18496bc3ca07e6bd474607081af709e750";
      fetchSubmodules = false;
      sha256 = "sha256-T4aw00meHGksdGyfG5C243Ijhh64WFRFxNWdI4N7R2Q=";
    };
    date = "2024-04-15";
  };
  cmp-nvim-lsp = {
    pname = "cmp-nvim-lsp";
    version = "39e2eda76828d88b773cc27a3f61d2ad782c922d";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-nvim-lsp";
      rev = "39e2eda76828d88b773cc27a3f61d2ad782c922d";
      fetchSubmodules = false;
      sha256 = "sha256-CT1+Z4XJBVsl/RqvJeGmyitD6x7So0ylXvvef5jh7I8=";
    };
    date = "2024-05-17";
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
    version = "05a9ab28b53f71d1aece421ef32fee2cb857a843";
    src = fetchFromGitHub {
      owner = "saadparwaiz1";
      repo = "cmp_luasnip";
      rev = "05a9ab28b53f71d1aece421ef32fee2cb857a843";
      fetchSubmodules = false;
      sha256 = "sha256-nUJJl2zyK/oSwz5RzI9j3gf9zpDfCImCYbPbVsyXgz8=";
    };
    date = "2023-10-09";
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
  conform-nvim = {
    pname = "conform-nvim";
    version = "f3b930db4964d60e255c8f9e37b7f2218dfc08cb";
    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "conform.nvim";
      rev = "f3b930db4964d60e255c8f9e37b7f2218dfc08cb";
      fetchSubmodules = false;
      sha256 = "sha256-C5Tn/CpHe14/yqgE5vZXq0OJuN0CvoBGoePYLWJYgnc=";
    };
    date = "2024-05-22";
  };
  copilot-lua = {
    pname = "copilot-lua";
    version = "f7612f5af4a7d7615babf43ab1e67a2d790c13a6";
    src = fetchFromGitHub {
      owner = "zbirenbaum";
      repo = "copilot.lua";
      rev = "f7612f5af4a7d7615babf43ab1e67a2d790c13a6";
      fetchSubmodules = false;
      sha256 = "sha256-JX3sdsnOnjkY7r9fCtC2oauo0PXF3SQ+SHUo8ifBvAc=";
    };
    date = "2024-02-27";
  };
  crates = {
    pname = "crates";
    version = "d556c00d60c9421c913ee54ff690df2a34f6264e";
    src = fetchFromGitHub {
      owner = "saecki";
      repo = "crates.nvim";
      rev = "d556c00d60c9421c913ee54ff690df2a34f6264e";
      fetchSubmodules = false;
      sha256 = "sha256-R1y1OIep4tcFd4mhylZ/A2zdwOmEQtCzuVBOBYu0qUI=";
    };
    date = "2024-05-14";
  };
  diffview = {
    pname = "diffview";
    version = "0bae1a371ac68be86ead374ee2c4f36bd96bb6c6";
    src = fetchFromGitHub {
      owner = "sindrets";
      repo = "diffview.nvim";
      rev = "0bae1a371ac68be86ead374ee2c4f36bd96bb6c6";
      fetchSubmodules = false;
      sha256 = "sha256-rdDuSSwQRFjzEllGo5ZdhmXut/eFgZp5VEAxJGCTZT4=";
    };
    date = "2024-05-23";
  };
  direnv-vim = {
    pname = "direnv-vim";
    version = "ab2a7e08dd630060cd81d7946739ac7442a4f269";
    src = fetchFromGitHub {
      owner = "direnv";
      repo = "direnv.vim";
      rev = "ab2a7e08dd630060cd81d7946739ac7442a4f269";
      fetchSubmodules = false;
      sha256 = "sha256-Lwwm95UEkS8Q0Qsoh10o3sFn48wf7v7eCX/FJJV1HMI=";
    };
    date = "2023-12-02";
  };
  dressing = {
    pname = "dressing";
    version = "3c38ac861e1b8d4077ff46a779cde17330b29f3a";
    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "dressing.nvim";
      rev = "3c38ac861e1b8d4077ff46a779cde17330b29f3a";
      fetchSubmodules = false;
      sha256 = "sha256-AXY1+nA6Q/kWbuwOAqwVdd3QrjkHGVdVMHShvSIfLwM=";
    };
    date = "2024-05-22";
  };
  fidget = {
    pname = "fidget";
    version = "ef99df04a1c53a453602421bc0f756997edc8289";
    src = fetchFromGitHub {
      owner = "j-hui";
      repo = "fidget.nvim";
      rev = "ef99df04a1c53a453602421bc0f756997edc8289";
      fetchSubmodules = false;
      sha256 = "sha256-Gpk/G0ByOAIE8uX4Xr94CvAjJBSJMEOwBuvrhmYYGsg=";
    };
    date = "2024-05-19";
  };
  flash = {
    pname = "flash";
    version = "11a2e667d19d8f48c93c6ed2e2e525ac6b1b79be";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "flash.nvim";
      rev = "11a2e667d19d8f48c93c6ed2e2e525ac6b1b79be";
      fetchSubmodules = false;
      sha256 = "sha256-F8MGarWRw4VY3KGAQb1UZhWYhTgU2k8qpnp+YdDpMPw=";
    };
    date = "2024-05-14";
  };
  friendly-snippets = {
    pname = "friendly-snippets";
    version = "dd2fd1281d4b22e7b4a5bfafa3e142d958e251f2";
    src = fetchFromGitHub {
      owner = "rafamadriz";
      repo = "friendly-snippets";
      rev = "dd2fd1281d4b22e7b4a5bfafa3e142d958e251f2";
      fetchSubmodules = false;
      sha256 = "sha256-lItnzGUpMifEkTGmSaL05IdgCbFNDMkKynjN9dOohRs=";
    };
    date = "2024-05-16";
  };
  gitsigns = {
    pname = "gitsigns";
    version = "cdfcd9d39d23c46ae9a040de2c6a8b8bf868746e";
    src = fetchFromGitHub {
      owner = "lewis6991";
      repo = "gitsigns.nvim";
      rev = "cdfcd9d39d23c46ae9a040de2c6a8b8bf868746e";
      fetchSubmodules = false;
      sha256 = "sha256-TTC3uvRsq4v6PBdS/3YAGpyhVt0w3/SGkPE3fu1zW94=";
    };
    date = "2024-05-23";
  };
  glance = {
    pname = "glance";
    version = "51059bcf21016387b6233c89eed220cf47fca752";
    src = fetchFromGitHub {
      owner = "dnlhc";
      repo = "glance.nvim";
      rev = "51059bcf21016387b6233c89eed220cf47fca752";
      fetchSubmodules = false;
      sha256 = "sha256-ZlOdvtTv5pgdmqhDPQioNs/M07lHu+koEjGzwe+IOqE=";
    };
    date = "2024-03-31";
  };
  headlines = {
    pname = "headlines";
    version = "618ef1b2502c565c82254ef7d5b04402194d9ce3";
    src = fetchFromGitHub {
      owner = "lukas-reineke";
      repo = "headlines.nvim";
      rev = "618ef1b2502c565c82254ef7d5b04402194d9ce3";
      fetchSubmodules = false;
      sha256 = "sha256-U5WpPI7/p3p/IvB+8xSFnz3IigTCgExFKnLqiyJxB7s=";
    };
    date = "2024-02-29";
  };
  indent-blankline = {
    pname = "indent-blankline";
    version = "d98f537c3492e87b6dc6c2e3f66ac517528f406f";
    src = fetchFromGitHub {
      owner = "lukas-reineke";
      repo = "indent-blankline.nvim";
      rev = "d98f537c3492e87b6dc6c2e3f66ac517528f406f";
      fetchSubmodules = false;
      sha256 = "sha256-K5y0UQAXc0N6+1kqncX2eClpvZb7jlg7GhSerHQVZX0=";
    };
    date = "2024-05-23";
  };
  lazy = {
    pname = "lazy";
    version = "8f19915175395680808de529e4220da8dafc0759";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "lazy.nvim";
      rev = "8f19915175395680808de529e4220da8dafc0759";
      fetchSubmodules = false;
      sha256 = "sha256-m4uXqDr7kazKBihYGdi/rUIv8nQ4IcdSbd4yNJmOeyk=";
    };
    date = "2024-05-22";
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
    version = "1735dd5a5054c1fb7feaf8e8658dbab925f4f0cf";
    src = fetchFromGitHub {
      owner = "onsails";
      repo = "lspkind.nvim";
      rev = "1735dd5a5054c1fb7feaf8e8658dbab925f4f0cf";
      fetchSubmodules = false;
      sha256 = "sha256-/QLdBU/Zwmkw1NGuLBD48tvrmIP9d9WHhgcLEQgRTWo=";
    };
    date = "2024-01-11";
  };
  ltex-extra = {
    pname = "ltex-extra";
    version = "4296c2c7aefbca721d02a011366a1de30598046c";
    src = fetchFromGitHub {
      owner = "barreiroleo";
      repo = "ltex-extra.nvim";
      rev = "4296c2c7aefbca721d02a011366a1de30598046c";
      fetchSubmodules = false;
      sha256 = "sha256-OuMCsDxAH2scyf3RO/h75Gc9fca1jyNs47PpUYs0FB8=";
    };
    date = "2024-04-13";
  };
  lua-utils = {
    pname = "lua-utils";
    version = "e565749421f4bbb5d2e85e37c3cef9d56553d8bd";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "lua-utils.nvim";
      rev = "e565749421f4bbb5d2e85e37c3cef9d56553d8bd";
      fetchSubmodules = false;
      sha256 = "sha256-9ildzQEMkXKZ3LHq+khGFgRQFxlIXQclQ7QU3fcU1C4=";
    };
    date = "2024-02-17";
  };
  lualine = {
    pname = "lualine";
    version = "0a5a66803c7407767b799067986b4dc3036e1983";
    src = fetchFromGitHub {
      owner = "nvim-lualine";
      repo = "lualine.nvim";
      rev = "0a5a66803c7407767b799067986b4dc3036e1983";
      fetchSubmodules = false;
      sha256 = "sha256-WcH2dWdRDgMkwBQhcgT+Z/ArMdm+VbRhmQftx4t2kNI=";
    };
    date = "2024-04-05";
  };
  luasnip = {
    pname = "luasnip";
    version = "de1a287c9cb525ae52bc846e8f6207e5ef1da5ac";
    src = fetchFromGitHub {
      owner = "L3MON4D3";
      repo = "LuaSnip";
      rev = "de1a287c9cb525ae52bc846e8f6207e5ef1da5ac";
      fetchSubmodules = false;
      sha256 = "sha256-FLMSWmNOZcY3gT/yGOzQKG0r1vzxP+Lys5msb2G7mKk=";
    };
    date = "2024-05-18";
  };
  neoconf = {
    pname = "neoconf";
    version = "9092129e9a42ae26375001bd2e6118f8d57c7f2a";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "neoconf.nvim";
      rev = "9092129e9a42ae26375001bd2e6118f8d57c7f2a";
      fetchSubmodules = false;
      sha256 = "sha256-Gznl0WEwpJ3YyFwYFipf6oHkSVimH5/KKsZzCiKAbhM=";
    };
    date = "2024-05-21";
  };
  neodev = {
    pname = "neodev";
    version = "ce9a2e8eaba5649b553529c5498acb43a6c317cd";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "neodev.nvim";
      rev = "ce9a2e8eaba5649b553529c5498acb43a6c317cd";
      fetchSubmodules = false;
      sha256 = "sha256-mAJOMVN7/xO7ykVNAeTeX+z2A/7yB8zdqlEKHL6Pb74=";
    };
    date = "2024-03-29";
  };
  neogit = {
    pname = "neogit";
    version = "daebc4bc94bdcfa69d8d75c731878bff758e16fa";
    src = fetchFromGitHub {
      owner = "NeogitOrg";
      repo = "neogit";
      rev = "daebc4bc94bdcfa69d8d75c731878bff758e16fa";
      fetchSubmodules = false;
      sha256 = "sha256-A6YgNvGo/+APV8AQ8h1vQtIIHzZnUiGwZD2gXVUGnEE=";
    };
    date = "2024-05-23";
  };
  neorepl = {
    pname = "neorepl";
    version = "b927ffdbe67fb25ef9e8fd9324234e3d54cfb7f7";
    src = fetchFromGitHub {
      owner = "ii14";
      repo = "neorepl.nvim";
      rev = "b927ffdbe67fb25ef9e8fd9324234e3d54cfb7f7";
      fetchSubmodules = false;
      sha256 = "sha256-VqyBhjABpTbCQP30xNAbRRHIS7EPMUc8mo3C1gqco/k=";
    };
    date = "2024-04-21";
  };
  neorg = {
    pname = "neorg";
    version = "5e14f8e8a773a0057d3f08835e7b6931482124bc";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "neorg";
      rev = "5e14f8e8a773a0057d3f08835e7b6931482124bc";
      fetchSubmodules = false;
      sha256 = "sha256-Vy7XYVK+x6od18RvmKGyKnmBgUs/kDiQ9pyrtw/z9VU=";
    };
    date = "2024-05-23";
  };
  neorg-telescope = {
    pname = "neorg-telescope";
    version = "6069bf428fac56f8c028864eb1bf8beb668fca09";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "neorg-telescope";
      rev = "6069bf428fac56f8c028864eb1bf8beb668fca09";
      fetchSubmodules = false;
      sha256 = "sha256-zR+r57qnfJ0V1EtsN+gyfHYTTI0I5i/GtjoAYvVmH5Y=";
    };
    date = "2024-05-21";
  };
  neovim-session-manager = {
    pname = "neovim-session-manager";
    version = "4376507a99af4a92c85263c30ab8efee0bb2857f";
    src = fetchFromGitHub {
      owner = "Shatur";
      repo = "neovim-session-manager";
      rev = "4376507a99af4a92c85263c30ab8efee0bb2857f";
      fetchSubmodules = false;
      sha256 = "sha256-t7CpEjrwOqbvBxcY8VkiVJIbj0babB8gWzll4R8ipYg=";
    };
    date = "2024-05-23";
  };
  nui = {
    pname = "nui";
    version = "b1b3dcd6ed8f355c78bad3d395ff645be5f8b6ae";
    src = fetchFromGitHub {
      owner = "MunifTanjim";
      repo = "nui.nvim";
      rev = "b1b3dcd6ed8f355c78bad3d395ff645be5f8b6ae";
      fetchSubmodules = false;
      sha256 = "sha256-JRVVRT1CZZTjr58L+gAer7eCg9/fMdAD0YD5ljNwl0Q=";
    };
    date = "2024-05-18";
  };
  nvim-autopairs = {
    pname = "nvim-autopairs";
    version = "c15de7e7981f1111642e7e53799e1211d4606cb9";
    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-autopairs";
      rev = "c15de7e7981f1111642e7e53799e1211d4606cb9";
      fetchSubmodules = false;
      sha256 = "sha256-YEAqjlzVrS/VLrkwGo3L7cNOE1LuyLYlBtkR2HA5oVk=";
    };
    date = "2024-05-20";
  };
  nvim-cmp = {
    pname = "nvim-cmp";
    version = "5260e5e8ecadaf13e6b82cf867a909f54e15fd07";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "nvim-cmp";
      rev = "5260e5e8ecadaf13e6b82cf867a909f54e15fd07";
      fetchSubmodules = false;
      sha256 = "sha256-GhXfnWqpXFVM7Yi9+qEXHfA6LIMILcMG9pP4VYXuptE=";
    };
    date = "2024-05-17";
  };
  nvim-colorizer-lua = {
    pname = "nvim-colorizer-lua";
    version = "85855b38011114929f4058efc97af1059ab3e41d";
    src = fetchFromGitHub {
      owner = "nvchad";
      repo = "nvim-colorizer.lua";
      rev = "85855b38011114929f4058efc97af1059ab3e41d";
      fetchSubmodules = false;
      sha256 = "sha256-oKvFN2K+ASlPNwj2rhptR/ErYgo6XKBPhXSZotDdCP0=";
    };
    date = "2023-12-23";
  };
  nvim-dap = {
    pname = "nvim-dap";
    version = "c65c163daa47e0623dd85d2303fce0c22e52ad01";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-dap";
      rev = "c65c163daa47e0623dd85d2303fce0c22e52ad01";
      fetchSubmodules = false;
      sha256 = "sha256-nInnMm5UkSwyK0ES2dD1r2eltsPNX005S36XY/+fBM4=";
    };
    date = "2024-05-23";
  };
  nvim-dap-ui = {
    pname = "nvim-dap-ui";
    version = "334cf3038c4756e6ab999cbac67c847fb654c190";
    src = fetchFromGitHub {
      owner = "rcarriga";
      repo = "nvim-dap-ui";
      rev = "334cf3038c4756e6ab999cbac67c847fb654c190";
      fetchSubmodules = false;
      sha256 = "sha256-paiyLNzqUq9G3U8qn8yl1AjHJzTTa17exA05QO09nGA=";
    };
    date = "2024-05-20";
  };
  nvim-dap-virtual-text = {
    pname = "nvim-dap-virtual-text";
    version = "d7c695ea39542f6da94ee4d66176f5d660ab0a77";
    src = fetchFromGitHub {
      owner = "theHamsta";
      repo = "nvim-dap-virtual-text";
      rev = "d7c695ea39542f6da94ee4d66176f5d660ab0a77";
      fetchSubmodules = false;
      sha256 = "sha256-Ec6xE+HvbzcBU04jbBqUV0nTa2IEiNuxMBYfDwXmFsM=";
    };
    date = "2024-05-22";
  };
  nvim-lspconfig = {
    pname = "nvim-lspconfig";
    version = "b972e7154bc94ab4ecdbb38c8edbccac36f83996";
    src = fetchFromGitHub {
      owner = "neovim";
      repo = "nvim-lspconfig";
      rev = "b972e7154bc94ab4ecdbb38c8edbccac36f83996";
      fetchSubmodules = false;
      sha256 = "sha256-PMMqPDnq4Q8gWeKQ2WPE+pOf1R1G61wJ+bAWkHpQlzE=";
    };
    date = "2024-05-23";
  };
  nvim-navic = {
    pname = "nvim-navic";
    version = "8649f694d3e76ee10c19255dece6411c29206a54";
    src = fetchFromGitHub {
      owner = "SmiteshP";
      repo = "nvim-navic";
      rev = "8649f694d3e76ee10c19255dece6411c29206a54";
      fetchSubmodules = false;
      sha256 = "sha256-0p5n/V8Jlj9XyxV/fuMwsbQ7oV5m9H2GqZZEA/njxCQ=";
    };
    date = "2023-11-30";
  };
  nvim-nio = {
    pname = "nvim-nio";
    version = "632024157d01e8bc48fd7df6a7de8ffe3fdd4f3a";
    src = fetchFromGitHub {
      owner = "nvim-neotest";
      repo = "nvim-nio";
      rev = "632024157d01e8bc48fd7df6a7de8ffe3fdd4f3a";
      fetchSubmodules = false;
      sha256 = "sha256-UffuTu7mF96LHk0MQRNrsgDyo1QWa/1i5eJKjZkuG8k=";
    };
    date = "2024-05-22";
  };
  nvim-spectre = {
    pname = "nvim-spectre";
    version = "5690ea46baf08bbc1623980012e14b6239ce582e";
    src = fetchFromGitHub {
      owner = "nvim-pack";
      repo = "nvim-spectre";
      rev = "5690ea46baf08bbc1623980012e14b6239ce582e";
      fetchSubmodules = false;
      sha256 = "sha256-AQ+HLIboYtYRWCu6S3Czi5DpcZRhAkI1bhSfnM+FqZI=";
    };
    date = "2024-05-22";
  };
  nvim-surround = {
    pname = "nvim-surround";
    version = "79aaa42da1f698ed31bcbe7f83081f69dca7ba17";
    src = fetchFromGitHub {
      owner = "kylechui";
      repo = "nvim-surround";
      rev = "79aaa42da1f698ed31bcbe7f83081f69dca7ba17";
      fetchSubmodules = false;
      sha256 = "sha256-Mg60htwXPqNKu+JnexKiKF3Huvr7pBNdvc6f3Kt2FRA=";
    };
    date = "2024-05-16";
  };
  nvim-tree-lua = {
    pname = "nvim-tree-lua";
    version = "2bc725a3ebc23f0172fb0ab4d1134b81bcc13812";
    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-tree.lua";
      rev = "2bc725a3ebc23f0172fb0ab4d1134b81bcc13812";
      fetchSubmodules = false;
      sha256 = "sha256-YqHAEztx6gEEm0GoDXC5djnIP030oGGRcskp8LPqVoc=";
    };
    date = "2024-05-14";
  };
  nvim-treesitter-context = {
    pname = "nvim-treesitter-context";
    version = "f62bfe19e0fbc13ae95649dfb3cf22f4ff85b683";
    src = fetchFromGitHub {
      owner = "nvim-treesitter";
      repo = "nvim-treesitter-context";
      rev = "f62bfe19e0fbc13ae95649dfb3cf22f4ff85b683";
      fetchSubmodules = false;
      sha256 = "sha256-EY5Si6t7LXcxOP3ubGAAMd3lgbeaCOCIybSKi1Ucx98=";
    };
    date = "2024-05-22";
  };
  nvim-treesitter-textobjects = {
    pname = "nvim-treesitter-textobjects";
    version = "3557e41418b4a6c5b85d5d64abe94c9c50fa9b14";
    src = fetchFromGitHub {
      owner = "nvim-treesitter";
      repo = "nvim-treesitter-textobjects";
      rev = "3557e41418b4a6c5b85d5d64abe94c9c50fa9b14";
      fetchSubmodules = false;
      sha256 = "sha256-nlkDaOloQNoRB0ztaKCvSrS8qcxZcMtVdtXdVQ7lPoQ=";
    };
    date = "2024-05-22";
  };
  nvim-ts-autotag = {
    pname = "nvim-ts-autotag";
    version = "8ae54b90e36ef1fc5267214b30c2cbff71525fe4";
    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-ts-autotag";
      rev = "8ae54b90e36ef1fc5267214b30c2cbff71525fe4";
      fetchSubmodules = false;
      sha256 = "sha256-gy6OVR2iH361XMDDo0dqxJsAxo+5nXr3wP42pieeCUg=";
    };
    date = "2024-05-22";
  };
  nvim-web-devicons = {
    pname = "nvim-web-devicons";
    version = "e37bb1feee9e7320c76050a55443fa843b4b6f83";
    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-web-devicons";
      rev = "e37bb1feee9e7320c76050a55443fa843b4b6f83";
      fetchSubmodules = false;
      sha256 = "sha256-1trRSUVyWFl3K+7xHXQGNl/EwE0ggyigQpZ+kmRPsk8=";
    };
    date = "2024-05-14";
  };
  octo = {
    pname = "octo";
    version = "5646539320cd62af6ff28f48ec92aeb724c68e18";
    src = fetchFromGitHub {
      owner = "pwntester";
      repo = "octo.nvim";
      rev = "5646539320cd62af6ff28f48ec92aeb724c68e18";
      fetchSubmodules = false;
      sha256 = "sha256-EK05b72/ekNcA7RBauiKZ27/rF4YX6IXnzRpODzXduI=";
    };
    date = "2024-04-17";
  };
  pathlib-nvim = {
    pname = "pathlib-nvim";
    version = "723f9cd0d12a4bb8961cff4c2ac7edbfcf50a280";
    src = fetchFromGitHub {
      owner = "pysan3";
      repo = "pathlib.nvim";
      rev = "723f9cd0d12a4bb8961cff4c2ac7edbfcf50a280";
      fetchSubmodules = false;
      sha256 = "sha256-Hx7RGyVY3j4LvNWQuQI5Vq9mkq+U/ntxgDlw5VxbUII=";
    };
    date = "2024-04-26";
  };
  plenary = {
    pname = "plenary";
    version = "a3e3bc82a3f95c5ed0d7201546d5d2c19b20d683";
    src = fetchFromGitHub {
      owner = "nvim-lua";
      repo = "plenary.nvim";
      rev = "a3e3bc82a3f95c5ed0d7201546d5d2c19b20d683";
      fetchSubmodules = false;
      sha256 = "sha256-5Jf2mWFVDofXBcXLbMa417mqlEPWLA+cQIZH/vNEV1g=";
    };
    date = "2024-05-20";
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
    version = "278db39aedd697613851861b5ea8b0d9138fc06f";
    src = fetchFromGitHub {
      owner = "hallerpatrick";
      repo = "py_lsp.nvim";
      rev = "278db39aedd697613851861b5ea8b0d9138fc06f";
      fetchSubmodules = false;
      sha256 = "sha256-cNvh7A091kdeLoaoz2ysWuNV0BqzTXgjntU/pDZS92U=";
    };
    date = "2024-02-15";
  };
  rainbow-delimiters = {
    pname = "rainbow-delimiters";
    version = "5d0d30b201566ce1fe31415f41fe2a7bdf56f4a7";
    src = fetchFromGitHub {
      owner = "hiphish";
      repo = "rainbow-delimiters.nvim";
      rev = "5d0d30b201566ce1fe31415f41fe2a7bdf56f4a7";
      fetchSubmodules = false;
      sha256 = "sha256-pkUtc8NBoWN2xCbTUl9vCoZYwxWdq8A4AMYOXGRVFxA=";
    };
    date = "2024-05-21";
  };
  schemastore = {
    pname = "schemastore";
    version = "9a5992a881583d886bfbb46631a09f736f0fae50";
    src = fetchFromGitHub {
      owner = "b0o";
      repo = "schemastore.nvim";
      rev = "9a5992a881583d886bfbb46631a09f736f0fae50";
      fetchSubmodules = false;
      sha256 = "sha256-MyQf8/UjHFX+fu9Cx3vsI06PCuRvht2IAth1TrSidyw=";
    };
    date = "2024-05-22";
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
    version = "5665d93988acfbb0747bdbf4f4cb583bcebc8930";
    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope.nvim";
      rev = "5665d93988acfbb0747bdbf4f4cb583bcebc8930";
      fetchSubmodules = false;
      sha256 = "sha256-YQfhr7bmdRNVcQXSCPTHtgRNeUyOwPTjGJeUHkUAJHM=";
    };
    date = "2024-05-23";
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
    version = "4d5fd21bae12ee6e9a79232e1c377f43c419d0c5";
    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope-file-browser.nvim";
      rev = "4d5fd21bae12ee6e9a79232e1c377f43c419d0c5";
      fetchSubmodules = false;
      sha256 = "sha256-P6WR6AohLALn4aU4vPnoBO7QDoRcfcAj51E0K1ldtwU=";
    };
    date = "2024-04-23";
  };
  telescope-project = {
    pname = "telescope-project";
    version = "1aaf16580a614601a7f7077d9639aeb457dc5559";
    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope-project.nvim";
      rev = "1aaf16580a614601a7f7077d9639aeb457dc5559";
      fetchSubmodules = false;
      sha256 = "sha256-touMCltcnqkrQYV1NtNeWLQeFVGt+WM3aIWIdKilA7w=";
    };
    date = "2023-12-01";
  };
  telescope-ui-select = {
    pname = "telescope-ui-select";
    version = "6e51d7da30bd139a6950adf2a47fda6df9fa06d2";
    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope-ui-select.nvim";
      rev = "6e51d7da30bd139a6950adf2a47fda6df9fa06d2";
      fetchSubmodules = false;
      sha256 = "sha256-YRhNmmG4gx9Ht8JwjQfbTjJyTHEuZmtP6lqnhOsk8bE=";
    };
    date = "2023-12-04";
  };
  todo-comments = {
    pname = "todo-comments";
    version = "e1549807066947818113a7d7ed48f637e49620d3";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "todo-comments.nvim";
      rev = "e1549807066947818113a7d7ed48f637e49620d3";
      fetchSubmodules = false;
      sha256 = "sha256-ZJp0emoHogSdhXPIH74MH4CznxhCmMbO243dqxAZMJo=";
    };
    date = "2024-05-22";
  };
  toggleterm = {
    pname = "toggleterm";
    version = "fee58a0473fd92b28c34f8f724e4918b15ba30a3";
    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "toggleterm.nvim";
      rev = "fee58a0473fd92b28c34f8f724e4918b15ba30a3";
      fetchSubmodules = false;
      sha256 = "sha256-h82zisizLm0FOt4l8lzgC/spFk3R5Gx25A5YgULwW8U=";
    };
    date = "2024-05-19";
  };
  trouble = {
    pname = "trouble";
    version = "a8264a65a0b894832ea642844f5b7c30112c458f";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "trouble.nvim";
      rev = "a8264a65a0b894832ea642844f5b7c30112c458f";
      fetchSubmodules = false;
      sha256 = "sha256-D3dqI4NRgEG4BCDLQ3ci9lgYxt90XyWDQXlk4/uuR6M=";
    };
    date = "2024-05-19";
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
    version = "c43d9580c3ff5999a1eabca849f807ab33787ea7";
    src = fetchFromGitHub {
      owner = "pmizio";
      repo = "typescript-tools.nvim";
      rev = "c43d9580c3ff5999a1eabca849f807ab33787ea7";
      fetchSubmodules = false;
      sha256 = "sha256-kpdDYVd6uSuJImS9LU5p/vJgtj9tToNBvRTJHpsHyak=";
    };
    date = "2024-01-16";
  };
  vim-dadbod = {
    pname = "vim-dadbod";
    version = "fb30422b7bee7e2fa4205a4d226f01477f4fc593";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-dadbod";
      rev = "fb30422b7bee7e2fa4205a4d226f01477f4fc593";
      fetchSubmodules = false;
      sha256 = "sha256-SVf6MrNCviTPXVoU4eH2v71CjTlM/EQChzd6Dx7U6qQ=";
    };
    date = "2024-05-21";
  };
  vim-dadbod-completion = {
    pname = "vim-dadbod-completion";
    version = "5d5ad196fcde223509d7dabbade0148f7884c5e3";
    src = fetchFromGitHub {
      owner = "kristijanhusak";
      repo = "vim-dadbod-completion";
      rev = "5d5ad196fcde223509d7dabbade0148f7884c5e3";
      fetchSubmodules = false;
      sha256 = "sha256-9f7w5BgszD61A+4HzCVAVqm/x2x67ARyqmH+x4x935A=";
    };
    date = "2024-05-15";
  };
  vim-dadbod-ui = {
    pname = "vim-dadbod-ui";
    version = "5aa854ee6017e9a3463d3dc8eee5aac93739f021";
    src = fetchFromGitHub {
      owner = "kristijanhusak";
      repo = "vim-dadbod-ui";
      rev = "5aa854ee6017e9a3463d3dc8eee5aac93739f021";
      fetchSubmodules = false;
      sha256 = "sha256-D7EXN0q7nNmlSqfU7Luqb5NmjY1LsTNjGgHKlPNgS4w=";
    };
    date = "2024-05-21";
  };
  vim-fugitive = {
    pname = "vim-fugitive";
    version = "4f59455d2388e113bd510e85b310d15b9228ca0d";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-fugitive";
      rev = "4f59455d2388e113bd510e85b310d15b9228ca0d";
      fetchSubmodules = false;
      sha256 = "sha256-nyNtb3nsS/zFdSNRyXabcGIabAwgivJIUFB2c62vXmA=";
    };
    date = "2024-05-19";
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
    version = "9425cf68d2a73d2efbfd05ab3e8b80ffb5a08802";
    src = fetchFromGitHub {
      owner = "towolf";
      repo = "vim-helm";
      rev = "9425cf68d2a73d2efbfd05ab3e8b80ffb5a08802";
      fetchSubmodules = false;
      sha256 = "sha256-AkQ3qvluKbCihFwFlsSnVrCU0qBmMmk3YKJpb+RC1I8=";
    };
    date = "2024-05-22";
  };
  vim-table-mode = {
    pname = "vim-table-mode";
    version = "e4365bde024f73e205eefa2fb78e3029ddb92ea9";
    src = fetchFromGitHub {
      owner = "dhruvasagar";
      repo = "vim-table-mode";
      rev = "e4365bde024f73e205eefa2fb78e3029ddb92ea9";
      fetchSubmodules = false;
      sha256 = "sha256-8p40cId8dQVhXHuusk2Mn2esRZm8vcY5EZbAXBPU/Fg=";
    };
    date = "2024-03-14";
  };
  which-key = {
    pname = "which-key";
    version = "4433e5ec9a507e5097571ed55c02ea9658fb268a";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "which-key.nvim";
      rev = "4433e5ec9a507e5097571ed55c02ea9658fb268a";
      fetchSubmodules = false;
      sha256 = "sha256-uvghPj/teWrRMm09Gh8iQ/LV2nYJw0lmoiZK6L4+1cY=";
    };
    date = "2023-10-20";
  };
}
