-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command
    -- Lines
    ["<A-j>"] = { ":m .+1<CR>==", desc = "Move current line down" },
    ["<A-k>"] = { ":m .-2<CR>==", desc = "Move current line up" },
    ["<CR>"] = { "o<ESC>", desc = "Add a new line on the next cursor" },
    ["<S-CR>"] = { "O<ESC>", desc = "Add a new line on the previous cursor" },
    ["<S-A-j>"] = { "yykp", desc = "Copy line up" },
    ["<S-A-k>"] = { "yyp", desc = "Copy line down" },
    -- Navigation
    ["<c-d>"] = { "<c-d>zz", desc = "Move half page down and center cursor to the middle of the screen" },
    ["<c-f>"] = { "<c-f>zz", desc = "Move quater page down and center cursor to the middle of the screen" },
    ["<c-u>"] = { "<c-u>zz", desc = "Move half page up and center cursor to the middle of the screen" },
    ["<c-b>"] = { "<c-b>zz", desc = "Move quater page up and center cursor to the middle of the screen" },
  },
  i = {
    -- Move lines
    ["<A-k>"] = { "<Esc>:m .-2<CR>==gi", desc = "Move current line up" },
    ["<A-j>"] = { "<Esc>:m .+1<CR>==gi", desc = "Move current line down" },
  },
  v = {
    -- Move lines
    ["<A-j>"] = { ":m '>+1<CR>gv=gv", desc = "Move current line down" },
    ["<A-k>"] = { ":m '<-2<CR>gv=gv", desc = "Move current line up" },
  },
  -- setting a mapping to false will disable it
  t = {
    -- ["<esc>"] = false,
  },
}
