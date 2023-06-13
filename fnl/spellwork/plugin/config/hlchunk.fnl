(module spellwork.plugin.config.hlchunk
  {autoload {a aniseed.core}})

(let [(ok? hlchunk) (pcall #(require "hlchunk"))]
  (when ok?
    (hlchunk.setup {:chunk {:chars {:horizontal_line  "─"
                                    :vertical_line  "│"
                                    :left_top  "╭"
                                    :left_bottom  "╰"
                                    :right_arrow  ">"}
                            :enable true
                            :use_treesitter true
                            :notify true
                            :style  "#806d9c"}
                    :indent {:enable false}
                    :blank {:enable false}
                    :line_num {:enable true}})))
