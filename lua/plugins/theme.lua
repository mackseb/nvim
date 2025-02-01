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
    config = function()
      require("cyberdream").setup({
        transparent = true,
        saturation = 0.5,
        theme = {
          variant = "auto",
        },
      })

      vim.cmd("colorscheme cyberdream")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "cyberdream",
    },
  },
  {
    "snacks.nvim",
    opts = {
      scroll = { enabled = false },
    },
  },
}
