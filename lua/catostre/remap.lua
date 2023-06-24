vim.g.mapleader = " "

vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)

vim.keymap.set("n", "<", "gT")
vim.keymap.set("n", ">", "gt")
vim.keymap.set("n", "<leader>tn", ":tabnew ")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>p", [["*p]])
vim.keymap.set("n", "<leader>P", [["*P]])
vim.keymap.set({"n", "v"}, "<leader>y", [["*y]])

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader><leader>", function() vim.cmd("so") end)
vim.keymap.set("n", "<leader>bc", function() vim.cmd("bd") end)
