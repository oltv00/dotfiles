-- Normal Mode
vim.keymap.set("n", "<space>", "<nop>", { desc = "Disable space (leader) in normal mode" })

-- Save and Quit
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { silent = false, desc = "Save current buffer" })
vim.keymap.set("n", "<leader>q", "<cmd>q<cr>", { silent = false, desc = "Quit current buffer" })

