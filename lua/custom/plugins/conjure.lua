local conjure_filetypes = {
  "clojure",
  "elixir",
  "fennel",
  "hy",
  "janet",
  "javascript",
  "julia",
  "lisp",
  "lua",
  "php",
  "picolisp",
  "python",
  "r",
  "racket",
  "ruby",
  "rust",
  "scheme",
  "sql",
  "typescript",
}

return {
  {
    "m00qek/baleia.nvim",
    lazy = true,
    opts = {
      line_starts_at = 3,
    },
    config = function(_, opts)
      vim.g.conjure_baleia = require("baleia").setup(opts)

      vim.api.nvim_create_user_command("BaleiaColorize", function()
        vim.g.conjure_baleia.once(vim.api.nvim_get_current_buf())
      end, { bang = true })

      vim.api.nvim_create_user_command("BaleiaLogs", vim.g.conjure_baleia.logger.show, { bang = true })
    end,
  },
  {
    "Olical/conjure",
    ft = conjure_filetypes,
    dependencies = {
      "HiPhish/rainbow-delimiters.nvim",
      "m00qek/baleia.nvim",
      -- "gpanders/nvim-parinfer",
    },
    config = function(_, _)
      require("conjure.main").main()
      require("conjure.mapping")["on-filetype"]()
    end,
    init = function()
      -- print color codes if baleia.nvim is available
      vim.g["conjure#log#strip_ansi_escape_sequences_line_limit"] = 1

      -- disable diagnostics in log buffer and colorize it
      vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
        pattern = "conjure-log-*",
        callback = function()
          local buffer = vim.api.nvim_get_current_buf()
          vim.diagnostic.enable(false, { bufnr = buffer })

          if vim.g.conjure_baleia then
            vim.g.conjure_baleia.automatically(buffer)
          end

          vim.keymap.set({ "n", "v" }, "[c", "<CMD>call search('^; -\\+$', 'bw')<CR>", {
            silent = true,
            buffer = true,
            desc = "Conjure: Jumps to the begining of previous evaluation output.",
          })
          vim.keymap.set({ "n", "v" }, "]c", "<CMD>call search('^; -\\+$', 'w')<CR>", {
            silent = true,
            buffer = true,
            desc = "Conjure: Jumps to the begining of next evaluation output.",
          })
        end,
      })
    end,
  },
  {
    "julienvincent/nvim-paredit",
    ft = { "clojure", "fennel", "scheme", "lisp", "janet" },
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      local paredit = require("nvim-paredit")
      paredit.setup({
        cursor_behaviour = "auto",
        dragging = {
          auto_drag_pairs = true,
        },
        indent = {
          enabled = true,
          indentor = require("nvim-paredit.indentation.native").indentor,
        },
      })
    end,
  },
}
