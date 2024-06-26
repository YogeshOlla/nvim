-- Bottom Status Bar

return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    event = "VeryLazy",
    opts = {
        options = {
            theme = 'onedark'
        },
        tabline = {
            lualine_a = { 'buffers' }
        }
    },
    config = true,
}
