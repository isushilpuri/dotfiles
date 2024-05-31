require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "kj", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map("n", "J", "mzJ`z")
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- greatest remap ever
map("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
map({"n", "v"}, "<leader>y", [["+y]])
map("n", "<leader>Y", [["+Y]])

map({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
map("i", "<C-c>", "<Esc>")
map("i", "kj", "<Esc>")

map("n", "Q", "<nop>")

map("n", "<leader>k", "<cmd>lnext<CR>zz")
map("n", "<leader>j", "<cmd>lprev<CR>zz")

-- tmux navigation
map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>" )
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>" )
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>")
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>")

map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

map("n", "<leader>ne", "<cmd> NvimTreeToggle <CR>")

-- windown switch
map("n", "<leader>hh", "<C-w>h")
map("n", "<leader>ll", "<C-w>l")
map("n", "<leader>jj", "<C-w>j")
map("n", "<leader>kk", "<C-w>k")

-- quick write and quit
map("n", "<leader>w", "<cmd> w <CR>")
map("n", "<leader>q", "<cmd> q! <CR>")
-- switch between buffers
map("n", "<S-h>", "<cmd> bprevious <CR>")
map("n", "<S-l>", "<cmd> bnext <CR>")
-- greatest remap ever
map("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err <Esc>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
