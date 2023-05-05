(module magic.plugin.telescope
  {autoload {nvim aniseed.nvim
             util magic.util}})

(let [(ok? telescope) (pcall #(require :telescope))]
  (when ok?
    (telescope.setup
      {:defaults
       {:vimgrep_arguments ["rg" "--color=never" "--no-heading"
                            "--with-filename" "--line-number" "--column"
                            "--smart-case" "--hidden" "--follow"
                            "-g" "!.git/"]}
       :extensions
       {:ui-select (let [(ok? telescope-themes) (pcall #(require :telescope-themes))]
                     (when ok?
                       (telescope-themes.get_dropdown)))}})

    (util.lnnoremap :ff "Telescope find_files hidden=true")
    (util.lnnoremap :fg "Telescope live_grep")
    (util.lnnoremap :fb "Telescope buffers")
    (util.lnnoremap :fm "Telescope keymaps")
    (util.lnnoremap :fh "Telescope oldfiles")
    (util.lnnoremap :ft "Telescope filetypes")
    (util.lnnoremap :fl "Telescope loclist")))
