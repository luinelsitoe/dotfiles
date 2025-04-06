return {
  "mhartington/formatter.nvim",
  keys = {
    {
      "<leader>ft", "<cmd>Format<cr>", desc = "Format file with formatter",
    },
  },
  config = function()
    require("formatter").setup({
      filetype = {
        python = {
          function()
            return {
              exe = "black",
              args = { "--quiet", "-" },
              stdin = true,
            }
          end,
        },
      },
    })
  end,
}
