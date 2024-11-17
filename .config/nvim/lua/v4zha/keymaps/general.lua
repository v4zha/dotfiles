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
