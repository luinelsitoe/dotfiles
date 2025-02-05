return {
    "nvim-telescope/telescope.nvim",
    keys = {
        { "<leader>f", function() require("telescope.builtin").find_files() end, { silent = true, desc = "Find files" } },
        { "<leader>g", function() require("telescope.builtin").live_grep() end,  { silent = true, desc = "Search in files" } },
        { "<leader>b", function() require("telescope.builtin").buffers() end,    { silent = true, desc = "Find buffers" } },
        { "<leader>c", function() require("telescope.builtin").commands() end,   { silent = true, desc = "Find commands" } },
    }
}
