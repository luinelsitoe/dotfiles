return {
  "folke/noice.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
    -- "rcarriga/nvim-notify",
  },
  event = "VeryLazy",
  opts = {
    cmdline = {
      view = "cmdline",
    },
    lsp = {
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true,
      },
    },
    routes = {
      {
        filter = {
          event = "msg_show",
          any = {
            { find = "%d+L, %d+B" },
            { find = "; after #%d+" },
            { find = "; before #%d+" },
          },
        },
        view = "mini",
      },
      {
        filter = {
          event = "lsp",
          any = {
            { find = "jdtls" },
          },
        },
      },
    },
    presets = {
      bottom_search = true,
      long_message_to_split = true,
    },
    views = {
      mini = {
        position = {
          row = -1,
          col = 0,
        },
      },
    },
  },
  keys = {
    { "<leader>nh", function() require("noice").cmd("history") end, desc = "Noice History" },
  }
}
