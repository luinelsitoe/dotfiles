return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>f", function() require("telescope.builtin").find_files() end,      desc = "Find files" },
    { "<leader>g", function() require("telescope.builtin").live_grep() end,       desc = "Search in files" },
    { "<leader>b", function() require("telescope.builtin").buffers() end,         desc = "Find buffers" },
    { "<leader>n", function() require('telescope').extensions.notify.notify() end, desc = "Find buffers" },
  }
}
