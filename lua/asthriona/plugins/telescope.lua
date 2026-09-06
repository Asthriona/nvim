return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.5",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    -- Lazy load on command execution or keymaps
    cmd = "Telescope",
    keys = {
        { "<leader>pf", function() require('telescope.builtin').find_files() end, desc = "Find files" },
        { "<C-p>", function() require('telescope.builtin').git_files() end, desc = "Git files" },
        { 
            "<leader>pws", 
            function() 
                local word = vim.fn.expand("<cword>")
                require('telescope.builtin').grep_string({ search = word }) 
            end, 
            desc = "Grep current word" 
        },
        { 
            "<leader>pWs", 
            function() 
                local word = vim.fn.expand("<cWORD>")
                require('telescope.builtin').grep_string({ search = word }) 
            end, 
            desc = "Grep current WORD" 
        },
        { 
            "<leader>ps", 
            function() 
                require('telescope.builtin').grep_string({ search = vim.fn.input("Grep > ") }) 
            end, 
            desc = "Grep prompt" 
        },
        { "<leader>vh", function() require('telescope.builtin').help_tags() end, desc = "Help tags" },
    },

    config = function()
        require('telescope').setup({})
    end
}
