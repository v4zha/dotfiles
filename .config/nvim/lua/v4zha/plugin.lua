local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", lazypath })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  { "lewis6991/impatient.nvim" },
  { "nvim-lua/plenary.nvim" },
  { "rebelot/kanagawa.nvim" },
  { "windwp/nvim-autopairs" },
  { "numToStr/Comment.nvim" },
  { "kyazdani42/nvim-web-devicons" },

  {
    "nvim-lualine/lualine.nvim",
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  { "nvim-telescope/telescope.nvim" },
  { "MunifTanjim/nui.nvim" },
  { "rcarriga/nvim-notify" },
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", "MunifTanjim/nui.nvim" }
  },
  { "ggandor/leap.nvim" },
  -- LSP & Treesitter
  { 'neovim/nvim-lspconfig' },
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  { 'nvim-treesitter/nvim-treesitter' },
  { "nvimtools/none-ls.nvim" },
  -- Rust --,
  { 'saecki/crates.nvim' },
  -- { 'simrat39/rust-tools.nvim' },
  -- cmp & Snippet
  { 'L3MON4D3/LuaSnip' },
  { 'rafamadriz/friendly-snippets' },
  { 'hrsh7th/nvim-cmp' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/cmp-nvim-lua' },
  { 'saadparwaiz1/cmp_luasnip' },
  { 'hrsh7th/cmp-buffer' },
  { 'hrsh7th/cmp-path' },
  -- diagnostics and hover
  {
    "folke/trouble.nvim"
  },
  {
    "Fildo7525/pretty_hover",
    event = "LspAttach",
    opts = {}
  },
  -- Debugger
  { "mfussenegger/nvim-dap" },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio"
    }
  },
  -- term and whichkey,
  -- { 'voldikss/vim-floaterm' },
  { 'echasnovski/mini.nvim', version = false },
  { 'folke/which-key.nvim' }
  ,
  -- markdown
  { "ellisonleao/glow.nvim" },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },

  -- haskell
  -- { "itchyny/vim-haskell-indent" },
  --ui
  -- {"stevearc/dressing.nvim" },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  },
  {
    "lambdalisue/suda.vim",
    lazy = false,
  },
  -- nushell
  { 'LhKipp/nvim-nu' },
  -- todo
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  --orgmode
  {
    'nvim-orgmode/orgmode',
    event = 'VeryLazy',
    ft = { 'org' }
  },
  --tmux
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  }

}

require("lazy").setup({ plugins })
