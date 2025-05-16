return {
    {
        "ethanamaher/todo-sidebar.nvim",

        dependencies = {
            "nvim-lua/plenary.nvim",
        },

        config = function()
            require("todo-sidebar").setup({
                -- uncomment lines to use custom options
                --
                -- define custom keyword list
                -- keywords = { "TODO", "FIXME", "NOTE", "REVIEW", }
                --
                -- case sensitivity
                -- case_sensitive = false,
                --
                -- max number of results in sidebar window
                -- max_results = 500,

                -- sidebar = {
                --    width = 40,
                --     position = "right",
                --    auto_focus = false,
                --     auto_close_on_jump = false,
                --     keymaps = {
                --         jmp_to = "<CR>",
                --         -- TODO add keybinds for various things
                --   },
                --},
            })

            vim.keymap.set("n", "<leader>tst", "<cmd>TodoSidebarToggle<CR>",
                        { desc = "Toggle Todo Sidebar" })
        end
    }
}
