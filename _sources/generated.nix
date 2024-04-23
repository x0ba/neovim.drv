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
    version = "014e2e2fe51ad4b1a774cffa0f12887767d952eb";
    src = fetchFromGitHub {
      owner = "skywind3000";
      repo = "asyncrun.vim";
      rev = "014e2e2fe51ad4b1a774cffa0f12887767d952eb";
      fetchSubmodules = false;
      sha256 = "sha256-ITc7uUddHw386wzX7fum5eRz7To6WqSGbaqK/qNqVAU=";
    };
    date = "2024-03-23";
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
    version = "e328dc463d238cb7d690fb4daf068eba732a5a14";
    src = fetchFromGitHub {
      owner = "f-person";
      repo = "auto-dark-mode.nvim";
      rev = "e328dc463d238cb7d690fb4daf068eba732a5a14";
      fetchSubmodules = false;
      sha256 = "sha256-lRwHJfjinWEbNnh5EdGOr+j0my5xmY5jZt40ZP2RywY=";
    };
    date = "2024-03-07";
  };
  bufferline = {
    pname = "bufferline";
    version = "64e2c5def50dfd6b6f14d96a45fa3d815a4a1eef";
    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "bufferline.nvim";
      rev = "64e2c5def50dfd6b6f14d96a45fa3d815a4a1eef";
      fetchSubmodules = false;
      sha256 = "sha256-drvgwupiyRAoShL2enXEYUumkYJnG+QtIkBIVqVZK+U=";
    };
    date = "2024-03-07";
  };
  catppuccin = {
    pname = "catppuccin";
    version = "a1439ad7c584efb3d0ce14ccb835967f030450fe";
    src = fetchFromGitHub {
      owner = "catppuccin";
      repo = "nvim";
      rev = "a1439ad7c584efb3d0ce14ccb835967f030450fe";
      fetchSubmodules = false;
      sha256 = "sha256-yTVou/WArEWygBBs2NFPI9Dm9iSGfwVftKFbOAGl8tk=";
    };
    date = "2024-04-14";
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
    version = "5af77f54de1b16c34b23cba810150689a3a90312";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "cmp-nvim-lsp";
      rev = "5af77f54de1b16c34b23cba810150689a3a90312";
      fetchSubmodules = false;
      sha256 = "sha256-/0sh9vJBD9pUuD7q3tNSQ1YLvxFMNykdg5eG+LjZAA8=";
    };
    date = "2023-12-10";
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
    version = "786d12a70c9b91fa2d0d102bb07df02be0db31a1";
    src = fetchFromGitHub {
      owner = "saecki";
      repo = "crates.nvim";
      rev = "786d12a70c9b91fa2d0d102bb07df02be0db31a1";
      fetchSubmodules = false;
      sha256 = "sha256-rRm7xXt5+u76ylWhLYXwjDqxWQL8epfjnTHLv7M+Lc8=";
    };
    date = "2024-04-13";
  };
  diffview = {
    pname = "diffview";
    version = "3dc498c9777fe79156f3d32dddd483b8b3dbd95f";
    src = fetchFromGitHub {
      owner = "sindrets";
      repo = "diffview.nvim";
      rev = "3dc498c9777fe79156f3d32dddd483b8b3dbd95f";
      fetchSubmodules = false;
      sha256 = "sha256-3EdnBUka9Rh5Brl6TWpN6GlD9z32mmY3Ip+wyiKob/8=";
    };
    date = "2023-11-20";
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
    version = "18e5beb3845f085b6a33c24112b37988f3f93c06";
    src = fetchFromGitHub {
      owner = "stevearc";
      repo = "dressing.nvim";
      rev = "18e5beb3845f085b6a33c24112b37988f3f93c06";
      fetchSubmodules = false;
      sha256 = "sha256-9AwOFTRvhWFo7USgoFYfceiojZM62IXPpBs8CnSqc18=";
    };
    date = "2024-03-12";
  };
  fidget = {
    pname = "fidget";
    version = "1ba38e4cbb24683973e00c2e36f53ae64da38ef5";
    src = fetchFromGitHub {
      owner = "j-hui";
      repo = "fidget.nvim";
      rev = "1ba38e4cbb24683973e00c2e36f53ae64da38ef5";
      fetchSubmodules = false;
      sha256 = "sha256-fZhK5opGXRRryhNpdaEPLpBq4tTibZREelXmasMLHzw=";
    };
    date = "2024-04-04";
  };
  flash = {
    pname = "flash";
    version = "48817af25f51c0590653bbc290866e4890fe1cbe";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "flash.nvim";
      rev = "48817af25f51c0590653bbc290866e4890fe1cbe";
      fetchSubmodules = false;
      sha256 = "sha256-j917u46PaOG6RmsKKoUQHuBMfXfGDD/uOBzDGhKlwTE=";
    };
    date = "2023-10-17";
  };
  friendly-snippets = {
    pname = "friendly-snippets";
    version = "ea068f1becd91bcd4591fceb6420d4335e2e14d3";
    src = fetchFromGitHub {
      owner = "rafamadriz";
      repo = "friendly-snippets";
      rev = "ea068f1becd91bcd4591fceb6420d4335e2e14d3";
      fetchSubmodules = false;
      sha256 = "sha256-5i/QhWhcKUX6Cvn/XTGc3lsNBeh8ri43CdCTrLWEVJw=";
    };
    date = "2024-03-31";
  };
  gitsigns = {
    pname = "gitsigns";
    version = "7e38f07cab0e5387f9f41e92474db174a63a4725";
    src = fetchFromGitHub {
      owner = "lewis6991";
      repo = "gitsigns.nvim";
      rev = "7e38f07cab0e5387f9f41e92474db174a63a4725";
      fetchSubmodules = false;
      sha256 = "sha256-xszsGkEFXHHCY5sFRnbovqlqa5RHqBx5qY0NUc//nkc=";
    };
    date = "2024-04-18";
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
  go-nvim = {
    pname = "go-nvim";
    version = "591a0b837420f27c734600fa5c6de87f18352e50";
    src = fetchFromGitHub {
      owner = "ray-x";
      repo = "go.nvim";
      rev = "591a0b837420f27c734600fa5c6de87f18352e50";
      fetchSubmodules = false;
      sha256 = "sha256-2BaayFu/XUG9GLEltiaHeqVOTVmPfU87yV//eEwef8I=";
    };
    date = "2024-04-12";
  };
  guihua-lua = {
    pname = "guihua-lua";
    version = "3b3126ae87c254f6849e708549ba76c39e3f42f8";
    src = fetchFromGitHub {
      owner = "ray-x";
      repo = "guihua.lua";
      rev = "3b3126ae87c254f6849e708549ba76c39e3f42f8";
      fetchSubmodules = false;
      sha256 = "sha256-n5vU/MQmlO4+m+zO+9w3ogX0ekCT2shJUNS/UOe2EYk=";
    };
    date = "2024-04-03";
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
    version = "3d08501caef2329aba5121b753e903904088f7e6";
    src = fetchFromGitHub {
      owner = "lukas-reineke";
      repo = "indent-blankline.nvim";
      rev = "3d08501caef2329aba5121b753e903904088f7e6";
      fetchSubmodules = false;
      sha256 = "sha256-Xp8ZQBz0in2MX3l0bnLUsSbH0lDPE+QvdmFpBFry5yY=";
    };
    date = "2024-03-14";
  };
  lazy = {
    pname = "lazy";
    version = "31ddbea7c10b6920c9077b66c97951ca8682d5c8";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "lazy.nvim";
      rev = "31ddbea7c10b6920c9077b66c97951ca8682d5c8";
      fetchSubmodules = false;
      sha256 = "sha256-MyJfQS80so7COsN87aGtd6DSrDKUme6SaFGWpaQ1ZHk=";
    };
    date = "2024-03-29";
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
    version = "03c8e67eb7293c404845b3982db895d59c0d1538";
    src = fetchFromGitHub {
      owner = "L3MON4D3";
      repo = "LuaSnip";
      rev = "03c8e67eb7293c404845b3982db895d59c0d1538";
      fetchSubmodules = false;
      sha256 = "sha256-E1Ov6aF9DJ0poVM6q6jK1ypsJf6cRzHqC2Gi6u9kai0=";
    };
    date = "2024-04-16";
  };
  markdown-preview = {
    pname = "markdown-preview";
    version = "a923f5fc5ba36a3b17e289dc35dc17f66d0548ee";
    src = fetchFromGitHub {
      owner = "iamcco";
      repo = "markdown-preview.nvim";
      rev = "a923f5fc5ba36a3b17e289dc35dc17f66d0548ee";
      fetchSubmodules = false;
      sha256 = "sha256-TBXdG/Ih5DusAYZJyn37zVqHcMD85VkjrCoLyTo/KBg=";
    };
    "app/yarn.lock" = builtins.readFile ./markdown-preview-a923f5fc5ba36a3b17e289dc35dc17f66d0548ee/app/yarn.lock;
    date = "2023-10-17";
  };
  neoconf = {
    pname = "neoconf";
    version = "a7da418753379af428f5d26ac91aa6fc18baf86e";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "neoconf.nvim";
      rev = "a7da418753379af428f5d26ac91aa6fc18baf86e";
      fetchSubmodules = false;
      sha256 = "sha256-/jCpCKHULBazmS2dq7mP1yM9B2s6fvlfpSEUseJvKtM=";
    };
    date = "2024-04-17";
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
    version = "0cae7abc30cb91d661f28257c331fcb5b5198e31";
    src = fetchFromGitHub {
      owner = "NeogitOrg";
      repo = "neogit";
      rev = "0cae7abc30cb91d661f28257c331fcb5b5198e31";
      fetchSubmodules = false;
      sha256 = "sha256-6TFUuJbgF7bUeYChR5Y/hWl8oMh4NL3MBQNCXBrTnio=";
    };
    date = "2024-04-16";
  };
  neorepl = {
    pname = "neorepl";
    version = "e60b114217248907a3a1d27bab9988a092865ee0";
    src = fetchFromGitHub {
      owner = "ii14";
      repo = "neorepl.nvim";
      rev = "e60b114217248907a3a1d27bab9988a092865ee0";
      fetchSubmodules = false;
      sha256 = "sha256-7Q8KndseaENovxKPD9LWyHBbXaiRsqbDqyW8JJLJBoY=";
    };
    date = "2024-01-03";
  };
  neorg = {
    pname = "neorg";
    version = "2cd93f2336bc7df7bd6b0dcb74bb01c05a91b649";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "neorg";
      rev = "2cd93f2336bc7df7bd6b0dcb74bb01c05a91b649";
      fetchSubmodules = false;
      sha256 = "sha256-ZBzwRFCGbXZWsyh8eKMbqVuQWGmudrwaNTCw8j1QfM8=";
    };
    date = "2024-04-18";
  };
  neorg-telescope = {
    pname = "neorg-telescope";
    version = "a4fc4eb3cd5db6ccd52e99f2b49ce931c458e38f";
    src = fetchFromGitHub {
      owner = "nvim-neorg";
      repo = "neorg-telescope";
      rev = "a4fc4eb3cd5db6ccd52e99f2b49ce931c458e38f";
      fetchSubmodules = false;
      sha256 = "sha256-Gfb/09JCp9v65CUD7ni+8x1Yqg0xnyfgycYVcVOHQvU=";
    };
    date = "2024-04-05";
  };
  neovim-session-manager = {
    pname = "neovim-session-manager";
    version = "d8e1ba3bbcf3fdc6a887bcfbd94c48ae4707b457";
    src = fetchFromGitHub {
      owner = "Shatur";
      repo = "neovim-session-manager";
      rev = "d8e1ba3bbcf3fdc6a887bcfbd94c48ae4707b457";
      fetchSubmodules = false;
      sha256 = "sha256-+TDWY8mprJfUp9ZFKbz83to7XW8iiovja22jHms+N1A=";
    };
    date = "2024-02-18";
  };
  nui = {
    pname = "nui";
    version = "cbd2668414331c10039278f558630ed19b93e69b";
    src = fetchFromGitHub {
      owner = "MunifTanjim";
      repo = "nui.nvim";
      rev = "cbd2668414331c10039278f558630ed19b93e69b";
      fetchSubmodules = false;
      sha256 = "sha256-Zr5CNx6BIM6naCXW8YBc/Oj1qOtWV/3tuMoaaZjoSZA=";
    };
    date = "2024-03-18";
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
    version = "4f41e5940bc0443fdbe5f995e2a596847215cd2a";
    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-autopairs";
      rev = "4f41e5940bc0443fdbe5f995e2a596847215cd2a";
      fetchSubmodules = false;
      sha256 = "sha256-ta+0jw7P0ESThP8q2c+CD+nCzPMyHH2Cy3kjjysH0TE=";
    };
    date = "2024-04-07";
  };
  nvim-cmp = {
    pname = "nvim-cmp";
    version = "ce16de5665c766f39c271705b17fff06f7bcb84f";
    src = fetchFromGitHub {
      owner = "hrsh7th";
      repo = "nvim-cmp";
      rev = "ce16de5665c766f39c271705b17fff06f7bcb84f";
      fetchSubmodules = false;
      sha256 = "sha256-DBxQTmwuEGj2g7LP7d1PJk/SyO0iJq2CIIHsFh0QJ4I=";
    };
    date = "2024-04-02";
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
    version = "6ae8a14828b0f3bff1721a35a1dfd604b6a933bb";
    src = fetchFromGitHub {
      owner = "mfussenegger";
      repo = "nvim-dap";
      rev = "6ae8a14828b0f3bff1721a35a1dfd604b6a933bb";
      fetchSubmodules = false;
      sha256 = "sha256-kEn2INrNMQSLHY3gpSVV+cTx9f1nFeUCM6by9WGn5Sg=";
    };
    date = "2024-04-18";
  };
  nvim-dap-ui = {
    pname = "nvim-dap-ui";
    version = "edfa93f60b189e5952c016eee262d0685d838450";
    src = fetchFromGitHub {
      owner = "rcarriga";
      repo = "nvim-dap-ui";
      rev = "edfa93f60b189e5952c016eee262d0685d838450";
      fetchSubmodules = false;
      sha256 = "sha256-KAwCt8E3lC0fzXQ9GpPsdb9wdWC6G2P4C/YFQFY9AAM=";
    };
    date = "2024-03-19";
  };
  nvim-dap-virtual-text = {
    pname = "nvim-dap-virtual-text";
    version = "3e8e207513e6ef520894950acd76b79902714103";
    src = fetchFromGitHub {
      owner = "theHamsta";
      repo = "nvim-dap-virtual-text";
      rev = "3e8e207513e6ef520894950acd76b79902714103";
      fetchSubmodules = false;
      sha256 = "sha256-9X/GtteA0H4ouOrBomKkLvBoHwrfXoycfjiotgktS8s=";
    };
    date = "2024-04-05";
  };
  nvim-lspconfig = {
    pname = "nvim-lspconfig";
    version = "9eb6d866840df0f3fb1d2e8f34a7e0cfdf80f980";
    src = fetchFromGitHub {
      owner = "neovim";
      repo = "nvim-lspconfig";
      rev = "9eb6d866840df0f3fb1d2e8f34a7e0cfdf80f980";
      fetchSubmodules = false;
      sha256 = "sha256-hHp6AUNlQP/z68BS//G/n2q6claLQCrW/QtUN4GCJxc=";
    };
    date = "2024-04-18";
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
    version = "5800f585def265d52f1d8848133217c800bcb25d";
    src = fetchFromGitHub {
      owner = "nvim-neotest";
      repo = "nvim-nio";
      rev = "5800f585def265d52f1d8848133217c800bcb25d";
      fetchSubmodules = false;
      sha256 = "sha256-ZRYclqsgAvlRBwb59XHlqVat7CxUJTH1rD6QLwh1ang=";
    };
    date = "2024-04-04";
  };
  nvim-spectre = {
    pname = "nvim-spectre";
    version = "9653847cf2f225648967f6e9363643e327387579";
    src = fetchFromGitHub {
      owner = "nvim-pack";
      repo = "nvim-spectre";
      rev = "9653847cf2f225648967f6e9363643e327387579";
      fetchSubmodules = false;
      sha256 = "sha256-j5bH2djlpQyEcKXxSC13a2JuBmg4ph9BtdpM5hs3BpU=";
    };
    date = "2024-04-17";
  };
  nvim-surround = {
    pname = "nvim-surround";
    version = "a4e30d33add8a9743b4f518b3a788b3c8e5def71";
    src = fetchFromGitHub {
      owner = "kylechui";
      repo = "nvim-surround";
      rev = "a4e30d33add8a9743b4f518b3a788b3c8e5def71";
      fetchSubmodules = false;
      sha256 = "sha256-gXWSCAJhOJKzTFi6QiDqDWPNgBtG5KgyF2t4gposqSY=";
    };
    date = "2024-04-10";
  };
  nvim-tree-lua = {
    pname = "nvim-tree-lua";
    version = "81eb8d519233c105f30dc0a278607e62b20502fd";
    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-tree.lua";
      rev = "81eb8d519233c105f30dc0a278607e62b20502fd";
      fetchSubmodules = false;
      sha256 = "sha256-6pbOeklf+otsJIjt9IUyUfuTAedShnwERYq1IfhyrJs=";
    };
    date = "2024-04-06";
  };
  nvim-treesitter = {
    pname = "nvim-treesitter";
    version = "208d504421e4ac53f4230a34cd4b831e8e76cb69";
    src = fetchFromGitHub {
      owner = "nvim-treesitter";
      repo = "nvim-treesitter";
      rev = "208d504421e4ac53f4230a34cd4b831e8e76cb69";
      fetchSubmodules = false;
      sha256 = "sha256-6bTOrqoUhNMtFLHAQ4+DeL3ADQzeI4jxc0PbPQR9vYg=";
    };
    date = "2024-04-18";
  };
  nvim-treesitter-context = {
    pname = "nvim-treesitter-context";
    version = "e6e71047bb323fb36f5664993a42adaac252bb36";
    src = fetchFromGitHub {
      owner = "nvim-treesitter";
      repo = "nvim-treesitter-context";
      rev = "e6e71047bb323fb36f5664993a42adaac252bb36";
      fetchSubmodules = false;
      sha256 = "sha256-8QKuOK/O0lHqWrL7EOreYbW43eyH0JuuXzHVR5Opwrc=";
    };
    date = "2024-04-18";
  };
  nvim-treesitter-textobjects = {
    pname = "nvim-treesitter-textobjects";
    version = "23b820146956b3b681c19e10d3a8bc0cbd9a1d4c";
    src = fetchFromGitHub {
      owner = "nvim-treesitter";
      repo = "nvim-treesitter-textobjects";
      rev = "23b820146956b3b681c19e10d3a8bc0cbd9a1d4c";
      fetchSubmodules = false;
      sha256 = "sha256-mndgAlmvzKZOjd3Z6wZb0ectvcOlYkatTADq8pdNfcs=";
    };
    date = "2024-04-15";
  };
  nvim-ts-autotag = {
    pname = "nvim-ts-autotag";
    version = "531f48334c422222aebc888fd36e7d109cb354cd";
    src = fetchFromGitHub {
      owner = "windwp";
      repo = "nvim-ts-autotag";
      rev = "531f48334c422222aebc888fd36e7d109cb354cd";
      fetchSubmodules = false;
      sha256 = "sha256-cPIEIjcYxX3ZkOyou2mYlHMdhBxCoVTpJVXZtiWe9Ks=";
    };
    date = "2024-02-07";
  };
  nvim-web-devicons = {
    pname = "nvim-web-devicons";
    version = "b3468391470034353f0e5110c70babb5c62967d3";
    src = fetchFromGitHub {
      owner = "nvim-tree";
      repo = "nvim-web-devicons";
      rev = "b3468391470034353f0e5110c70babb5c62967d3";
      fetchSubmodules = false;
      sha256 = "sha256-nJBAust+dbpartfCnV405i0SbzBy0SmXhe6rqnP0Ruc=";
    };
    date = "2024-04-15";
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
    version = "d4522df5c845aa5e494eee45205ba8033285bbab";
    src = fetchFromGitHub {
      owner = "pysan3";
      repo = "pathlib.nvim";
      rev = "d4522df5c845aa5e494eee45205ba8033285bbab";
      fetchSubmodules = false;
      sha256 = "sha256-76VWQRWX1WbaDMN+OcPt8ivp740//AblZHXm1OM7C94=";
    };
    date = "2024-04-07";
  };
  plenary = {
    pname = "plenary";
    version = "8aad4396840be7fc42896e3011751b7609ca4119";
    src = fetchFromGitHub {
      owner = "nvim-lua";
      repo = "plenary.nvim";
      rev = "8aad4396840be7fc42896e3011751b7609ca4119";
      fetchSubmodules = false;
      sha256 = "sha256-wM/FuK24NPEyaWntwT+mi2SuPExC/abXDK9c2WvgUBk=";
    };
    date = "2024-03-25";
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
    version = "7ef0766b5cd2f5cdf4fcb08886f0a2ebf65981fa";
    src = fetchFromGitHub {
      owner = "hiphish";
      repo = "rainbow-delimiters.nvim";
      rev = "7ef0766b5cd2f5cdf4fcb08886f0a2ebf65981fa";
      fetchSubmodules = false;
      sha256 = "sha256-7ZAZm/BqvpkIJLQ24MbiFvgImv7t8UrdYXxRlDCa2mA=";
    };
    date = "2024-04-18";
  };
  rust-tools = {
    pname = "rust-tools";
    version = "676187908a1ce35ffcd727c654ed68d851299d3e";
    src = fetchFromGitHub {
      owner = "simrat39";
      repo = "rust-tools.nvim";
      rev = "676187908a1ce35ffcd727c654ed68d851299d3e";
      fetchSubmodules = false;
      sha256 = "sha256-kFane5ze7VDiOzF7jdmXkr50XQsNvdb+a9HQtybEVE0=";
    };
    date = "2024-01-03";
  };
  schemastore = {
    pname = "schemastore";
    version = "f7cae6f1b38cb296f48ce1a9c5ed1a419d912a42";
    src = fetchFromGitHub {
      owner = "b0o";
      repo = "schemastore.nvim";
      rev = "f7cae6f1b38cb296f48ce1a9c5ed1a419d912a42";
      fetchSubmodules = false;
      sha256 = "sha256-FGKDsiDw3VBUNj38JqwkMxI7JxZY0bikS+oMZTGOuVU=";
    };
    date = "2024-04-18";
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
    version = "d00d9df48c00d8682c14c2b5da78bda7ef06b939";
    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope.nvim";
      rev = "d00d9df48c00d8682c14c2b5da78bda7ef06b939";
      fetchSubmodules = false;
      sha256 = "sha256-/4dW4oLN/MnQ6gICNLZkUSr8V4giBINqzo3ev6voarc=";
    };
    date = "2024-04-16";
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
    version = "5ee5002373655fd684a4ad0d47a3de876ceacf9a";
    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope-file-browser.nvim";
      rev = "5ee5002373655fd684a4ad0d47a3de876ceacf9a";
      fetchSubmodules = false;
      sha256 = "sha256-zTHOEn+dR5g+2Z8lFnHkD2xrYwZt94GCGMT0Vz0KIqs=";
    };
    date = "2024-03-24";
  };
  telescope-fzf-native = {
    pname = "telescope-fzf-native";
    version = "9ef21b2e6bb6ebeaf349a0781745549bbb870d27";
    src = fetchFromGitHub {
      owner = "nvim-telescope";
      repo = "telescope-fzf-native.nvim";
      rev = "9ef21b2e6bb6ebeaf349a0781745549bbb870d27";
      fetchSubmodules = false;
      sha256 = "sha256-rycebls3g0JCHM2+aG7xlJnX7ZPowqviaLbQrFSdflM=";
    };
    date = "2024-03-05";
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
    version = "a7e39ae9e74f2c8c6dc4eea6d40c3971ae84752d";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "todo-comments.nvim";
      rev = "a7e39ae9e74f2c8c6dc4eea6d40c3971ae84752d";
      fetchSubmodules = false;
      sha256 = "sha256-BJNU01iTRDNrPv48fgiJRS+ouaHkoqw2AYXKDRgDzfw=";
    };
    date = "2024-03-27";
  };
  toggleterm = {
    pname = "toggleterm";
    version = "193786e0371e3286d3bc9aa0079da1cd41beaa62";
    src = fetchFromGitHub {
      owner = "akinsho";
      repo = "toggleterm.nvim";
      rev = "193786e0371e3286d3bc9aa0079da1cd41beaa62";
      fetchSubmodules = false;
      sha256 = "sha256-FJyDxQm2vs9R4WkqAbh6ryCvEABfrLSKRrAGo/qI5jM=";
    };
    date = "2024-02-12";
  };
  trouble = {
    pname = "trouble";
    version = "b9cf677f20bb2faa2dacfa870b084e568dca9572";
    src = fetchFromGitHub {
      owner = "folke";
      repo = "trouble.nvim";
      rev = "b9cf677f20bb2faa2dacfa870b084e568dca9572";
      fetchSubmodules = false;
      sha256 = "sha256-kIQ72fqAsiMF9jq0MzC6peaHJddYn5PRNXfYFHTQB5Q=";
    };
    date = "2024-03-29";
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
    version = "960bbb7de11b7282a68d579a64e838b487934493";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-dadbod";
      rev = "960bbb7de11b7282a68d579a64e838b487934493";
      fetchSubmodules = false;
      sha256 = "sha256-5jWP12VPPlmNLZvu8suOKjlxM4LdWwjPQgpnbdro6nQ=";
    };
    date = "2024-03-07";
  };
  vim-dadbod-completion = {
    pname = "vim-dadbod-completion";
    version = "c920cb0ba3dff4b1b0ed373e1c0b3007dec696c2";
    src = fetchFromGitHub {
      owner = "kristijanhusak";
      repo = "vim-dadbod-completion";
      rev = "c920cb0ba3dff4b1b0ed373e1c0b3007dec696c2";
      fetchSubmodules = false;
      sha256 = "sha256-4MgsBGfzAFTpQ4eRqXaHA3cCgbb1lVZDZJ+48t6HUB8=";
    };
    date = "2023-11-17";
  };
  vim-dadbod-ui = {
    pname = "vim-dadbod-ui";
    version = "066922699bdf1c6e14d517b844454b12b93ce25a";
    src = fetchFromGitHub {
      owner = "kristijanhusak";
      repo = "vim-dadbod-ui";
      rev = "066922699bdf1c6e14d517b844454b12b93ce25a";
      fetchSubmodules = false;
      sha256 = "sha256-y2xgzC2Xojl7ZWm1QX7y9nRbQnhgxpgIj8mph+mxH38=";
    };
    date = "2024-03-27";
  };
  vim-fugitive = {
    pname = "vim-fugitive";
    version = "dac8e5c2d85926df92672bf2afb4fc48656d96c7";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-fugitive";
      rev = "dac8e5c2d85926df92672bf2afb4fc48656d96c7";
      fetchSubmodules = false;
      sha256 = "sha256-pmY1EQbupKvsqok9O5omkOWi0BEZ8df7HL0F7ubdY9Q=";
    };
    date = "2024-04-08";
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
    version = "86cc6766db60b8cc5731068d0c2111dee1f2b328";
    src = fetchFromGitHub {
      owner = "towolf";
      repo = "vim-helm";
      rev = "86cc6766db60b8cc5731068d0c2111dee1f2b328";
      fetchSubmodules = false;
      sha256 = "sha256-yWsblUzTh3m8eQ6m3BA0OTMtGlpBQrdJE/2iPYjr7iw=";
    };
    date = "2024-02-05";
  };
  vim-just = {
    pname = "vim-just";
    version = "a2777b4b113dafc639f541ad4f0f7da0adc640f4";
    src = fetchFromGitHub {
      owner = "NoahTheDuke";
      repo = "vim-just";
      rev = "a2777b4b113dafc639f541ad4f0f7da0adc640f4";
      fetchSubmodules = false;
      sha256 = "sha256-J2kStwbtL0J9Pxbf+5SUMevxvSlzyYOMrZLTVo6SvB0=";
    };
    date = "2024-04-09";
  };
  vim-kdl = {
    pname = "vim-kdl";
    version = "b84d7d3a15d8d30da016cf9e98e2cfbe35cddee5";
    src = fetchFromGitHub {
      owner = "imsnif";
      repo = "kdl.vim";
      rev = "b84d7d3a15d8d30da016cf9e98e2cfbe35cddee5";
      fetchSubmodules = false;
      sha256 = "sha256-IajKK1EjrKs6b2rotOj+RlBBge9Ii2m/iuIuefnjAE4=";
    };
    date = "2023-02-20";
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
