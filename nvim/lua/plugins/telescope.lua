return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>ff", function() require("telescope.builtin").find_files() end, desc = "Find files" },
    { "<leader>fw", function() require("telescope.builtin").live_grep() end,  desc = "Search in files" },
    { "<leader>fb", function() require("telescope.builtin").buffers() end,    desc = "Find buffers" },
  },
  opts = {
    defaults = {
      file_ignore_patterns = {
        "node_modules/",
        "project/",
        "target/",
        "_build/",
        "gradle/",
        "dist-newstyle",
        "obj/",
        "wwwroot/"
      }
    }
  },
}
