return {
  {
    "catgoose/nvim-colorizer.lua",
    event = "BufReadPre",
    opts = {},
  },
  {
    "chentoast/marks.nvim",
    event = "VeryLazy",
    opts = {},
  },
  {
    -- Calls `require('slimline').setup({})`
    "sschleemilch/slimline.nvim",
    opts = {
      opts = {
        style = "bg",
        configs = {
          path = {
            hl = {
              primary = "Define",
            },
          },
          git = {
            hl = {
              primary = "Function",
            },
          },
          diagnostics = {
            hl = {
              primary = "Statement",
            },
          },
          filetype_lsp = {
            hl = {
              primary = "String",
            },
          },
        },
      },
    },
  },
  {
    "nvim-zh/colorful-winsep.nvim",
    config = true,
    event = { "WinLeave" },
  },
  {
    "levouh/tint.nvim",
    config = function()
      require("tint").setup({
        -- 1. Dimming Intensity
        -- Darken colors by 45 points (default is -45).
        -- Use a positive value (e.g., 45) to brighten colors.
        tint = -45,

        -- 2. Saturation
        -- Saturation to preserve. 1.0 is full saturation. 0.0 is grayscale.
        saturation = 0.3,

        -- 3. Transforms (Default is SATURATE_TINT)
        -- This defines the function used to dim the colors.
        -- The default is a combination of saturation and tinting.
        transforms = require("tint").transforms.SATURATE_TINT,

        -- 4. Background and Ignores
        -- Whether to tint background colors of highlight groups (recommended: true)
        tint_background_colors = true,

        -- Highlight groups to ignore (e.g., status line, separator)
        highlight_ignore_patterns = { "WinSeparator", "StatusLine", "LspInfo" },

        -- Function to ignore certain windows (e.g., don't tint floating or terminal windows)
        window_ignore_function = function(winid)
          local buftype = vim.api.nvim_buf_get_option(vim.api.nvim_win_get_buf(winid), "buftype")
          local floating = vim.api.nvim_win_get_config(winid).relative ~= ""
          -- Don't tint terminal or floating windows
          return buftype == "terminal" or floating
        end,
      })
    end,
    -- Make sure it loads before/with your colorscheme
    lazy = false,
  },
  {
    "m4xshen/smartcolumn.nvim",
    opts = {},
  },
}
