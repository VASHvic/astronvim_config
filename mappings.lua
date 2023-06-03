-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
-- centrar cuando navegas con C u C d
-- vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- mover lineas cuando estas en higlight
-- vim.keymap.set("v", "J", )
-- vim.keymap.set("v", "K", )
--toggleterm eixir de terminal en escape
vim.keymap.set("t", "<esc>", [[<C-\><C-n>]])
return {
  n = {
    ["<leader>tv"] = { "<cmd>ToggleTerm size=50 direction=vertical<cr>", desc = "ToggleTerm vertical split" },
    ["<C-d>"] = { "<C-d>zz" },
    ["<C-u>"] = { "<C-u>zz" },
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
    -- ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  v = {
    ["K"] = { ":m '<-2<CR>gv=gv" },
    ["J"] = { ":m '>+1<CR>gv=gv" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false, (estant descomentat anava be la terminal, ho comente per a probarho)
  },
}
