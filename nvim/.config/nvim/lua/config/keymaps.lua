-- Keymaps and which-key mappings by plugin
local wk = require("which-key")

-- Neotree
vim.keymap.set("n", "<leader>t", "<Cmd>Neotree toggle<CR>", { desc = "Toggle Neotree" })
vim.keymap.set("n", "<C-h>", "<Cmd>NvimTmuxNavigateLeft<CR>", { desc = "NvimTmux Navigate Left" })
vim.keymap.set("n", "<C-j>", "<Cmd>NvimTmuxNavigateDown<CR>", { desc = "NvimTmux Navigate Down" })
vim.keymap.set("n", "<C-k>", "<Cmd>NvimTmuxNavigateUp<CR>", { desc = "NvimTmux Navigate Up" })
vim.keymap.set("n", "<C-l>", "<Cmd>NvimTmuxNavigateRight<CR>", { desc = "NvimTmux Navigate Right" })

-- Zen Mode
vim.keymap.set("n", "<leader>zz", ":ZenMode<cr>", { desc = "Zen Mode" })
wk.add({ "<leader>zz", icon = { icon = " ", color = "purple" } })

-- zk
wk.add({ "<leader>z", group = "zk notes", icon = { icon = "󱞁 ", color = "orange" } })
vim.keymap.set("n", "<leader>zn", "<Cmd>ZkNew { title = vim.fn.input('Title: ') }<CR>", { desc = "Create new zk note" })
vim.keymap.set("n", "<leader>zo", "<Cmd>ZkNotes { sort = { 'modified' } }<CR>", { desc = "Open notes" })
vim.keymap.set("n", "<leader>zt", "<Cmd>ZkTags<CR>", { desc = "Open notes associated with selected tags" })
vim.keymap.set(
  "n",
  "<leader>zf",
  "<Cmd>ZkNotes { sort = { 'modified' }, match = { vim.fn.input('Search: ') } }<CR>",
  { desc = "Search for notes matching a given query" }
)
vim.keymap.set("v", "<leader>zf", ":'<,'>ZkMatch<CR>", { desc = "Search for notes matching current visual selection" })

-- zk: if in a notebook
if require("zk.util").notebook_root(vim.fn.expand("%:p")) ~= nil then
  vim.keymap.set(
    "n",
    "<leader>zn",
    "<Cmd>ZkNew { dir = vim.fn.expand('%:p:h'), title = vim.fn.input('Title: ') }<CR>",
    { buffer = true, desc = "Create zk note in same directory as current buffer" }
  )
  vim.keymap.set(
    "v",
    "<leader>zct",
    ":'<,'>ZkNewFromTitleSelection { dir = vim.fn.expand('%:p:h') }<CR>",
    { buffer = true, desc = "Create note using selection as title" }
  )
  vim.keymap.set(
    "v",
    "<leader>zcc",
    ":'<,'>ZkNewFromContentSelection { dir = vim.fn.expand('%:p:h'), title = vim.fn.input('Title: ') }<CR>",
    { buffer = true, desc = "Create note using selection as note content" }
  )
  vim.keymap.set(
    "n",
    "<leader>zb",
    "<Cmd>ZkBacklinks<CR>",
    { buffer = true, desc = "Open notes linking to current buffer" }
  )
  vim.keymap.set(
    "n",
    "<leader>zl",
    "<Cmd>ZkLinks<CR>",
    { buffer = true, desc = "Open notes linked by the current buffer" }
  )
  vim.keymap.set("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", { buffer = true, desc = "Preview a linked note" })
  vim.keymap.set(
    "v",
    "<leader>za",
    ":'<,'>lua vim.lsp.buf.range_code_action()<CR>",
    { buffer = true, desc = "Open code actions for visual selection" }
  )
end
