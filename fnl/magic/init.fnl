(module magic.init
  {autoload {plugin magic.plugin
             nvim aniseed.nvim}})

;;; Introduction

;; Aniseed compiles this (and all other Fennel files under fnl) into the lua
;; directory. The init.lua file is configured to load this file when ready.

;; We'll use modules, macros and functions to define our configuration and
;; required plugins. We can use Aniseed to evaluate code as we edit it or just
;; restart Neovim.

;; You can learn all about Conjure and how to evaluate things by executing
;; :ConjureSchool in your Neovim. This will launch an interactive tutorial.


;;; Generic configuration

(set nvim.o.termguicolors true)
(set nvim.o.mouse "a")
(set nvim.o.updatetime 500)
(set nvim.o.timeoutlen 500)
(set nvim.o.sessionoptions "blank,curdir,folds,help,tabpages,winsize")
(set nvim.o.inccommand :split)
(nvim.ex.set :spell)
(nvim.ex.set :list)

;;; Fonts

(set vim.o.guifont "JetBrainsMono Nerd Font:h10")


;;; Mappings

(set nvim.g.mapleader " ")
(set nvim.g.maplocalleader ",")

(nvim.set_keymap :n :<C-c> "\"+y" {})
(nvim.set_keymap :v :<C-c> "\"+y" {})
(nvim.set_keymap :n :<C-v> "\"+p<CR>" {:noremap true})
(nvim.set_keymap :i :<C-v> "<C-R>+" {:noremap true})
(nvim.set_keymap :t :<C-v> "<C-R>+" {:noremap true})
(nvim.set_keymap :v :<C-v> "<C-R>+" {:noremap true})

;;; Plugins

;; Run script/sync.sh to update, install and clean your plugins.
;; Packer configuration format: https://github.com/wbthomason/packer.nvim
(plugin.use
  :Olical/aniseed {}
  :Olical/conjure {}
  :Olical/nvim-local-fennel {}
  :PaterJason/cmp-conjure {}
  :PeterRincker/vim-argumentative {}
  :airblade/vim-gitgutter {}
  :clojure-vim/clojure.vim {}
  :clojure-vim/vim-jack-in {}
  :folke/which-key.nvim {:mod :which-key}
  :ggandor/lightspeed.nvim {}

  ;; Autocompletion plugins
  :hrsh7th/cmp-buffer {}
  :hrsh7th/cmp-cmdline {}
  :hrsh7th/cmp-nvim-lsp {}
  :hrsh7th/cmp-path {}
  :hrsh7th/nvim-cmp {:mod :cmp}

  :jiangmiao/auto-pairs {:mod :auto-pairs}
  :lewis6991/impatient.nvim {}
  :liuchengxu/vim-better-default {:mod :better-default}
  :marko-cerovac/material.nvim {:mod :material}
  :mbbill/undotree {:mod :undotree}

  ;; LSP Plugins
  :neovim/nvim-lspconfig {:mod :lspconfig}
  :williamboman/mason.nvim {:mod :mason 
                            :requires [[:williamboman/mason-lspconfig.nvim]]}
  :lukas-reineke/lsp-format.nvim {}

  :nvim-lualine/lualine.nvim {:mod :lualine}
  :radenling/vim-dispatch-neovim {}
  :tpope/vim-abolish {}
  :tpope/vim-commentary {}
  :tpope/vim-dispatch {}
  :tpope/vim-eunuch {}
  :tpope/vim-fugitive {}
  :tpope/vim-sleuth {}
  :tpope/vim-unimpaired {}
  :tpope/vim-vinegar {}
  :w0rp/ale {:mod :ale}
  :wbthomason/packer.nvim {}

  ;; Telescope & plugins
  :nvim-telescope/telescope.nvim {:mod :telescope 
                                  :requires [[:nvim-lua/popup.nvim] [:nvim-lua/plenary.nvim]]}
  :nvim-telescope/telescope-ui-select.nvim {}
  
  ;; NvimTree for browsing files
  :nvim-tree/nvim-tree.lua {:mod :nvim-tree
                            :requires [[ :nvim-tree/nvim-web-devicons]]}

  ;; Project
  :ahmedkhalf/project.nvim  {:mod :project-nvim}

  ;; Cursor line
  :yamatsum/nvim-cursorline {:mod :nvim-cursorline}
  :nvim-treesitter/nvim-treesitter {:mod :treesitter}
  :voldikss/vim-floaterm {:mod :floaterm}
  :folke/trouble.nvim {:mod :trouble
                       :requires [[:kyazdani42/nvim-web-devicons]]}
  :mhinz/vim-startify {}

  ;; Structural editing
  :tpope/vim-sexp-mappings-for-regular-people {}
  :guns/vim-sexp {:mod :sexp}
  :tpope/vim-surround {}
  :tpope/vim-repeat {}
  :norcalli/nvim-colorizer.lua {}
  :mhanberf/elixir.nvim {}
  :sam4llis/nvim-tundra {})

;; Set the clipboard after evaluation of plugins so that the value is not overridden by plugins
(set vim.o.clipboard "unnamedplus")
