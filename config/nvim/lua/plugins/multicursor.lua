return {
  {
    "mg979/vim-visual-multi",
    event = "BufRead",
    config = function()
      vim.g.VM_maps = {
        ["Find Under"] = "<C-d>",
        ["Find Subword Under"] = "<C-d>",
      }
    end,
  },
}
