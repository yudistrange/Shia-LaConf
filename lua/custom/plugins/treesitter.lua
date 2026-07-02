return { -- Highlight, edit, and navigate code
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  build = ":TSUpdate",
  lazy = false,
  -- [[ Configure Treesitter ]] See `:help nvim-treesitter`
  -- nvim-treesitter main branch: setup() no longer takes ensure_installed /
  -- highlight / indent. Parsers are installed via install(), and highlighting
  -- (plus the live parse tree that nvim-paredit depends on) is started
  -- per-buffer with vim.treesitter.start().
  config = function()
    require("nvim-treesitter").install({
      "bash",
      "c",
      "clojure",
      "diff",
      "html",
      "lua",
      "luadoc",
      "markdown",
      "markdown_inline",
      "query",
      "vim",
      "vimdoc",
    })

    vim.api.nvim_create_autocmd("FileType", {
      group = vim.api.nvim_create_augroup("treesitter-start", { clear = true }),
      callback = function(ev)
        -- pcall: not every filetype has a parser installed
        pcall(vim.treesitter.start, ev.buf)
      end,
    })
  end,
}
