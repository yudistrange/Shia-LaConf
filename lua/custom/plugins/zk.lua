return {
  "zk-org/zk-nvim",
  cmd = {
    "ZkBacklinks",
    "ZkBuffers",
    "ZkCd",
    "ZkIndex",
    "ZkInsertLink",
    "ZkInsertLinkAtSelection",
    "ZkLinks",
    "ZkMatch",
    "ZkNew",
    "ZkNewFromContentSelection",
    "ZkNewFromTitleSelection",
    "ZkNotes",
    "ZkTags",
  },
  config = function()
    require("zk").setup({
      -- See Setup section below
      picker = "telescope",
    })
  end,
}
