return {
  "ThePrimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  branch = "harpoon2",
  requires = { { "nvim-lua/plenary.nvim" } },
  config = function()
    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    local harpoon = require("harpoon")
    harpoon:setup()

    vim.keymap.set("n", "<leader>a", function()
      harpoon:list():append()
    end)
    vim.keymap.set("n", "<leader>h", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    -- vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
    -- vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
    -- vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
    -- vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)

    --   keymap.set(
    --     "n",
    --     "<leader>hm",
    --     "<cmd>lua require('harpoon.mark').add_file()<cr>",
    --     { desc = "Mark file with harpoon" }
    --   )
    --   keymap.set("n", "<leader>hn", "<cmd>lua require('harpoon.ui').nav_next()<cr>", { desc = "Go to next harpoon mark" })
    --   keymap.set(
    --     "n",
    --     "<leader>hp",
    --     "<cmd>lua require('harpoon.ui').nav_prev()<cr>",
    --     { desc = "Go to previous harpoon mark" }
    --   )
  end,
}
