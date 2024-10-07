-- Neotree
vim.keymap.set("n", "<leader>t", "<Cmd>Neotree toggle<CR>", { desc = "Toggle Neotree" })
vim.keymap.set("n", "<C-h>", "<Cmd>NvimTmuxNavigateLeft<CR>", { desc = "NvimTmux Navigate Left" })
vim.keymap.set("n", "<C-j>", "<Cmd>NvimTmuxNavigateDown<CR>", { desc = "NvimTmux Navigate Down" })
vim.keymap.set("n", "<C-k>", "<Cmd>NvimTmuxNavigateUp<CR>", { desc = "NvimTmux Navigate Up" })
vim.keymap.set("n", "<C-l>", "<Cmd>NvimTmuxNavigateRight<CR>", { desc = "NvimTmux Navigate Right" })

-- Bullet journal unicode signifiers
require("which-key").add({ "<localleader>j", group = "Journal" })
vim.keymap.set("n", "<localleader>jt", "i· ", { desc = "Todo" })
vim.keymap.set("n", "<localleader>jr", "i△ ", { desc = "Reflection" })
vim.keymap.set("n", "<localleader>jm", "i⊳ ", { desc = "Migrated" })
vim.keymap.set("n", "<localleader>js", "i⊲ ", { desc = "Scheduled" })
vim.keymap.set("n", "<localleader>jd", "0cl⨯<Esc>", { desc = "Mark todo as done" })

-- Zen Mode
vim.keymap.set("n", "<leader>z", ":ZenMode<cr>", { desc = "Zen Mode" })
