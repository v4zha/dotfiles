local config = {
  termguicolors = true,
  number = true,
  relativenumber = true,
  numberwidth = 4,
  mouse = "a",
  hlsearch = true,
  ignorecase = true,
  hidden = false,
  showmode = false,
  showtabline = 2,
  swapfile = false,
  signcolumn = "yes",
  sidescrolloff = 8,
  backup = false,
  clipboard = "unnamedplus",
  cmdheight = 2,
  completeopt = { "menuone", "noselect" },
  conceallevel = 0,
  fileencoding = "utf-8",
  pumheight = 10,
  smartcase = true,
  splitbelow = true,
  splitright = true,
  timeoutlen = 100,

  undofile = true,
  updatetime = 300,
  writebackup = false,

  tabstop = 2,
  softtabstop = 2,
  expandtab = true,
  shiftwidth = 2,
  cursorline = true,
  wrap = false,

  --indent
  smartindent = true,
  autoindent = true,
  scrolloff = 8,

  winbar = "%t",
}
for k, v in pairs(config) do
  vim.opt[k] = v
end

vim.cmd("filetype plugin indent on")
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
