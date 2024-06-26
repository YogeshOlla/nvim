local M = {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    keys = {
        { "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>",          desc = "Find Files" },
        { "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>",           desc = "Live Grep" },
        { "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>",             desc = "Buffers" },
        { "<leader>fc", "<cmd>lua require('telescope.builtin').colorscheme()<cr>",         desc = "ColorSchemes" },
        { "<leader>fl", "<cmd>lua require('telescope.builtin').lsp_references()<cr>",      desc = "LSP References" },
        { "<leader>fi", "<cmd>lua require('telescope.builtin').lsp_implementations()<cr>", desc = "LSP Implementation" },
        { "<leader>fd", "<cmd>lua require('telescope.builtin').diagnostics()<cr>",         desc = "Diagnostics" },
    },
    opts = function()
        local actions = require("telescope.actions")
        -- local theme = require("telescope.themes")
        return {
            pickers = {
                find_files = { hidden = false },
            },
            defaults = {
                mappings = { i = { ["<esc>"] = actions.close } },
            },

            extensions = {
                fzf = {
                    fuzzy = true,                   -- false will only do exact matching
                    override_generic_sorter = true, -- override the generic sorter
                    override_file_sorter = true,    -- override the file sorter
                    case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
                    -- the default case_mode is "smart_case"
                },
            },
        }
    end,
    config = function(_, opts)
        local telescope = require("telescope")
        telescope.setup(opts)
        telescope.load_extension("fzf")
    end,
}

return M
