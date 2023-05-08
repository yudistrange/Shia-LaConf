(module spellwork.plugin
  {autoload {p spellwork.plugin.utils}})

(defn load []
  (p.use
    ;; Manage Packer and Aniseed
    "wbthomason/packer.nvim" {}
    "Olical/aniseed" {}

    ;; Lispy things setup
    "Olical/conjure" {}
    "tpope/vim-sexp-mappings-for-regular-people" {}
    "guns/vim-sexp" {:mod "lisp"}
    "tpope/vim-repeat" {}
    "tpope/vim-surround" {}

    ;; TreeSitter for syntax highlights
    "nvim-treesitter/nvim-treesitter"
    {:mod "treesitter"
     :run ":TSUpdate"}

    ;; Telescope setup
    "nvim-telescope/telescope.nvim"
    {:mod       "telescope"
     :requires  [["nvim-lua/plenary.nvim"]]}

    ;; Fancy Input / Select UI
    "hood/popui.nvim" {:mod "popui"}

    ;; LSP
    "neovim/nvim-lspconfig" {:mod "lsp"}
    "williamboman/mason.nvim" {}
    "williamboman/mason-lspconfig.nvim" {}
    "j-hui/fidget.nvim" {}

    ;; Completion
    "hrsh7th/nvim-cmp"
    {:mod "completion"
     :requires
     [[ "hrsh7th/cmp-nvim-lsp" ]
      [ "hrsh7th/cmp-buffer" ]
      [ "hrsh7th/cmp-path" ]]}
    "L3MON4D3/LuaSnip" {:run "make install_jsregexp"}

    ;; UI niceties
    "rcarriga/nvim-notify" {:mod "notify"}
    "nyoom-engineering/oxocarbon.nvim" {:mod "theme"}
    ))
