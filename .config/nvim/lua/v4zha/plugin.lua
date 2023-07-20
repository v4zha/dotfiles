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

  { "nvim-lualine/lualine.nvim" },
  { "nvim-telescope/telescope.nvim" },
  { "MunifTanjim/nui.nvim" },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", "MunifTanjim/nui.nvim" }
  },
  { "ahmedkhalf/project.nvim" },
  { "ggandor/leap.nvim" },
  -- LSP & Treesitter
  { 'neovim/nvim-lspconfig' },
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  { 'nvim-treesitter/nvim-treesitter' },
  { "jose-elias-alvarez/null-ls.nvim" },
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
  -- Debugger
  { "mfussenegger/nvim-dap" },
  {
    "rcarriga/nvim-dap-ui",
    requires = { "mfussenegger/nvim-dap" }
  },
  -- term and whichkey,
  { 'voldikss/vim-floaterm' },
  { 'folke/which-key.nvim' },
  -- markdown
  -- { "ellisonleao/glow.nvim" },
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    setup = function()
      vim.g.mkdp_filetypes = {
        "markdown" }
    end,
    ft = {
      "markdown" },
  },
  -- haskell
  { "itchyny/vim-haskell-indent" },
  -- {"stevearc/dressing.nvim" },
}

require("lazy").setup({ plugins })
