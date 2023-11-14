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
    "ahmedkhalf/project.nvim" {:mod "project"}
    "nvim-telescope/telescope-fzf-native.nvim" {:run "make"}

    ;; LSP
    "neovim/nvim-lspconfig"
    {:mod "lsp"
     :requires [[ "lukas-reineke/lsp-format.nvim"
                  "williamboman/mason.nvim"
                  "williamboman/mason-lspconfig.nvim"
                  "j-hui/fidget.nvim" ]]}

    ;; Completion
    "hrsh7th/nvim-cmp"
    {:mod "completion"
     :requires
     [[ "hrsh7th/cmp-nvim-lsp" ]
      [ "hrsh7th/cmp-buffer" ]
      [ "hrsh7th/cmp-path" ]]}
    "L3MON4D3/LuaSnip" {:run "make install_jsregexp"}

    ;; Which Key
    "folke/which-key.nvim" {:mod "which-key"}

    ;; Themes
    "nyoom-engineering/oxocarbon.nvim" {}
    "glepnir/zephyr-nvim" {:mod "theme"}
    "folke/tokyonight.nvim" {}
    "catppuccin/nvim" {}
    "rebelot/kanagawa.nvim" {}
    "ellisonleao/gruvbox.nvim" {}
    "rktjmp/lush.nvim" {}
    "jacoborus/tender.vim" {}
    "nyoom-engineering/nyoom.nvim" {}
    "kepano/flexoki" {}
    "bluz71/vim-nightfly-colors" {}
    "bluz71/vim-moonfly-colors" {}

    ;; UI niceties
    ; "rcarriga/nvim-notify" {:mod "notify"}
    ; "folke/noice.nvim"
    ; {:mod "noice"
    ;  :requires [["MunifTanjim/nui.nvim"]]}
    "nvim-lualine/lualine.nvim" {:mod "lualine"}
    "nvim-tree/nvim-web-devicons" {}
    "nvim-tree/nvim-tree.lua" {:mod "nvim-tree"}
    "folke/trouble.nvim"
    {:mod "trouble"
     :requires [["nvim-tree/nvim-web-devicons"]]}
    "lukas-reineke/indent-blankline.nvim" {:mod "highlight"}

    ;; Development niceties
    "numToStr/Comment.nvim" {:mod "comment"}
    "folke/todo-comments.nvim"
    {:requires [["nvim-lua/plenary.nvim"]]}
    ; "TimUntersberger/neogit" 
    ; {:mod "neogit"
    ;  :requires [["nvim-lua/plenary.nvim"]]}
    "cbochs/grapple.nvim" {:mod "grapple"}
    "AckslD/nvim-neoclip.lua"
    {:mod "neoclip" :requires [[ "nvim-telescope/telescope.nvim" ]]}

    ;; Git setup the old fashioned way
    "lewis6991/gitsigns.nvim"
    {:mod "git" :requires [[ "tpope/vim-fugitive" ]]}

    ;; Language specific plugins
    "elixir-tools/elixir-tools.nvim" {:mod "elixir"}
))
