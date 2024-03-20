return {
  -- Harpoon plugin configuration
    -- This config is from sharyar on github. (https://github.com/ThePrimeagen/harpoon/issues/302#issuecomment-1899191637)
    -- I just edited it so I get back the short cut I'm used to. 
    -- Thank you for the config tho <3
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    lazy = false,
    requires = { "nvim-lua/plenary.nvim" }, -- if harpoon requires this
    config = function()
      require("harpoon").setup({})

      local function toggle_telescope_with_harpoon(harpoon_files)
        local file_paths = {}
        for _, item in ipairs(harpoon_files.items) do
          table.insert(file_paths, item.value)
        end

        require("telescope.pickers")
          .new({}, {
            prompt_title = "Harpoon",
            finder = require("telescope.finders").new_table({
              results = file_paths,
            }),
            previewer = require("telescope.config").values.file_previewer({}),
            sorter = require("telescope.config").values.generic_sorter({}),
          })
          :find()
      end
      vim.keymap.set("n", "<leader>A", function()
        local harpoon = require("harpoon")
        toggle_telescope_with_harpoon(harpoon:list())
      end, { desc = "Open harpoon window" })
    end,
    keys = {
      {
        "<leader>a",
        function()
          require("harpoon"):list():append()
        end,
        desc = "harpoon file",
      },
      {
        "<C-e>",
        function()
          local harpoon = require("harpoon")
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = "harpoon quick menu",
      },
      {
        "<C-t>",
        function()
          require("harpoon"):list():select(1)
        end,
        desc = "harpoon to file 1",
      },
      {
        "<C-h>",
        function()
          require("harpoon"):list():select(2)
        end,
        desc = "harpoon to file 2",
      },
      {
        "<C-n>",
        function()
          require("harpoon"):list():select(3)
        end,
        desc = "harpoon to file 3",
      },
    },
  },
}

