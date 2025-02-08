return {
  -- disabling auto change but maybe reactivate again if required
  -- {
  --   "f-person/auto-dark-mode.nvim",
  --   opts = {
  --     {
  --       set_dark_mode = function()
  --         vim.api.nvim_set_option_value("background", "dark", {})
  --       end,
  --       set_light_mode = function()
  --         vim.api.nvim_set_option_value("background", "light", {})
  --       end,
  --       update_interval = 3000,
  --       fallback = "dark",
  --     },
  --   },
  -- },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      require("cyberdream").setup({
        variant = "light",
        transparent = false,
        borderless_pickers = false,
        saturation = 1,
      })

      -- vim.cmd("colorscheme cyberdream")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "cyberdream",
    },
  },
  {
    {
      "tadaa/vimade",
      config = function()
        require("vimade").setup({
          recipe = { "minimalist", { animate = false } },
          fadelevel = 0.7,
          tint = {
            bg = { rgb = { 0, 0, 0 }, intensity = 0.1 }, -- adds 30% black to background
            -- fg = {rgb={0,0,255}, intensity=0.3}, -- adds 30% blue to foreground
            -- fg = {rgb={120,120,120}, intensity=1}, -- all text will be gray
            -- sp = {rgb={255,0,0}, intensity=0.5}, -- adds 50% red to special characters
            -- you can also use functions for tint or any value part in the tint object
            -- to create window-specific configurations
            -- see the `Tinting` section of the README for more details.
          },
        })

        -- vim.cmd("colorscheme cyberdream")
      end,
    },
  },
  -- disable tabs
  { "akinsho/bufferline.nvim", enabled = false },
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      -- options = {
      --   section_separators = { left = "", right = "" },
      -- },
      sections = {
        lualine_z = {
          "encoding",
          "fileformat",
          "filetype",
        },
      },
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      matcher = {
        frecency = true, -- frecency bonus
      },
      picker = {
        layout = {
          layout = {
            box = "horizontal",
            width = 0,
            min_width = 120,
            height = 0,
            {
              box = "vertical",
              border = "rounded",
              title = "{title} {live} {flags}",
              { win = "input", height = 1, border = "bottom" },
              { win = "list", border = "none" },
            },
            { win = "preview", title = "{preview}", border = "rounded", width = 0.5 },
          },
        },
      },
    },
  },
  {
    "saghen/blink.cmp",
    opts = {
      appearance = {
        nerd_font_variant = "normal",
      },
      completion = {
        menu = {
          border = "rounded",
        },
        documentation = {
          window = { border = "rounded" },
        },
      },
    },
  },
}
