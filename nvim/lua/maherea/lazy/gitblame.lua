return {
    {
        "ethanamaher/better-git-blame.nvim",

        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim",
            "tpope/vim-fugitive",
        },

        config = function()
            require("better-git-blame").setup({
                -- future config
            })
        end
    }
}
