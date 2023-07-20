local function keymap(mode, new_bind, bind, opts)
    opts = opts or {
        noremap = true,
        silent = true
    }
    vim.api.nvim_set_keymap(mode, new_bind, bind, opts)
end

-- ==============================

-- Leader : )

vim.g.mapleader = ',';
vim.g.maplocalleader = ',';

-- ==============================

-- Window : )

keymap("n", "<C-j>", "<C-w>j")
keymap("n", "<C-k>", "<C-w>k")
keymap("n", "<C-h>", "<C-w>h")
keymap("n", "<C-l>", "<C-w>l")

-- ==============================

-- buffer : )

keymap("n", "<S-l>", ":bn<CR>")
keymap("n", "<S-h>", ":bp<CR>")

keymap("n", "<C-z>", ":redo<CR>")

-- ==============================

-- indent : )
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")


return {
    keymap = keymap
}
