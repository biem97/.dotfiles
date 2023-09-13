-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- vim.keymap.set("n", "<leader>bn", "<cmd>tabnew<cr>", { expr = true, desc = "New tab" })

-- Copy lines
vim.keymap.set("n", "<S-A-j>", "yykp", { silent = true, desc = "Copy line up" })
vim.keymap.set("n", "<S-A-k>", "yyp", { silent = true, desc = "Copy line down" })
vim.keymap.set("i", "<S-A-j>", "<esc>yykp==gi", { silent = true, desc = "Copy line up" })
vim.keymap.set("i", "<S-A-k>", "<esc>yyp==gi", { silent = true, desc = "Copy line down" })
vim.keymap.set("v", "<S-A-j>", "ykp==gv", { silent = true, desc = "Copy line up" })
vim.keymap.set("v", "<S-A-k>", "yjp==gv", { silent = true, desc = "Copy line down" })

-- New lines
vim.keymap.set("n", "<CR>", "o<ESC>", { silent = true, desc = "Add a new line on the next cursor" })
vim.keymap.set("n", "<S-CR>", "O<ESC>", { silent = true, desc = "Add a new line on the previous cursor" })

--   Naviation
vim.keymap.set(
  "n",
  "<C-d>",
  "<C-d>zz",
  { silent = true, desc = "Move half page down and center cursor to the middle of the screen" }
)
vim.keymap.set(
  "n",
  "<C-f>",
  "<C-f>zz",
  { silent = true, desc = "Move quater page down and center cursor to the middle of the screen" }
)
vim.keymap.set(
  "n",
  "<C-u>",
  "<C-u>zz",
  { silent = true, desc = "Move half page up and center cursor to the middle of the screen" }
)
vim.keymap.set(
  "n",
  "<C-b>",
  "<C-b>zz",
  { silent = true, desc = "Move quater page up and center cursor to the middle of the screen" }
)

-- Buffers
--   ["<leader>bD"] = {
--     function()
--       require("astronvim.utils.status").heirline.buffer_picker(
--         function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
--       )
--     end,
--     desc = "Pick to close",
--   },
-- },
