return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("fzf-lua").setup({
      winopts = {
        preview = {
          layout = "vertical", -- or 'horizontal'
        },
      },
    })

    vim.keymap.set("n", "<c-t>", "<cmd>FzfLua files<CR>", { desc = "FZF Files" })
  end,
}
