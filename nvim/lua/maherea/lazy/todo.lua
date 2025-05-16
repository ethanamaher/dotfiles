return {
    {
        "ethanamaher/todo-sidebar.nvim",
        -- "todo-sidebar.nvim",
        -- dir = "~/personal/todo-sidebar/todo-sidebar.nvim",

        dependencies = {
            "nvim-lua/plenary.nvim",
        },

        config = function()
            local todosidebar= require("todo-sidebar")
            todosidebar.setup({
                sidebar = {
                    -- define custom keyword list
                    keywords = { "TODO", "FIXME", "NOTE", "REVIEW", },

                    -- case sensitivity
                    case_sensitive = true,

                    -- max number of results in sidebar window
                    -- max_results = 500,

                    width = 50,
                    position = "left",
                    auto_focus = false,
                    auto_close_on_jump = false,
                },
                vim.keymap.set("n", "<leader>tst", function() todosidebar.sidebar:toggle() end)
            })
        end
    }
}
