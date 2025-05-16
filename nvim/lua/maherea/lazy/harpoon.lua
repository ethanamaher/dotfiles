return {
    "ThePrimeagen/harpoon",

    config = function()
        require("harpoon").setup({

            vim.keymap.set("n", "<leader>ha", "<cmd>lua require('harpoon.mark').add_file()<CR>"),
            vim.keymap.set("n", "<leader>hq", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>"),

            vim.keymap.set("n", "<leader>hj", "<cmd>lua require('harpoon.ui').nav_next()<CR>"),
            vim.keymap.set("n", "<leader>hk", "<cmd>lua require('harpoon.ui').nav_prev()<CR>"),
        })
    end
}
