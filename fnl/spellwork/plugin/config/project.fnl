(module spellwork.plugin.config.project)

(let [(ok? project) (pcall #(require "project_nvim"))]
  (when ok?
    (project.setup {})))
