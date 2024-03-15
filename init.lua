require("core.options")
require("plugins-setup")

vim.api.nvim_create_autocmd("User", {
    pattern = "VeryLazy",
    callback = function()
        require("core.autocmds")
        require("core.keymaps")
    end,
})
