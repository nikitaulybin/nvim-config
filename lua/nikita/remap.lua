local nnoremap = require("nikita.keymap").nnoremap
local vnoremap = require("nikita.keymap").vnoremap

-- Normal mode
nnoremap("<leader>pv", "<cmd>Ex<CR>")
nnoremap("<leader>e", ":NvimTreeToggle<cr>")
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-l>", "<C-w>l")
nnoremap("<C-j>", "<C-w>j")
nnoremap("<C-k>", "<C-w>k")

-- Telescope
nnoremap("<leader>t", "<cmd>Telescope find_files<cr>")
nnoremap("<c-t>", "<cmd>Telescope live_grep<cr>")


-- Buffers
nnoremap("H", "<cmd>BufferLineCyclePrev<cr>")
nnoremap("L", "<cmd>BufferLineCycleNext<cr>")

-- Resize
nnoremap("<C-Up>", "<cmd>resize -2<CR>")
nnoremap("<C-Down>", "<cmd>resize +2<CR>")
nnoremap("<C-Left>", "<cmd>vertical resize -2<CR>")
nnoremap("<C-Right>", "<cmd>vertical resize +2<CR>")

-- Visual  mode
vnoremap("<", "<gv")
vnoremap(">", ">gv")
