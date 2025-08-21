local highlights = require("glowbeam.palette").highlights

local M = {}

M.setup = function()
    vim.cmd("highlight clear")
    vim.cmd("syntax reset")
    vim.o.termguicolors = true
    vim.o.background = "dark"
    vim.g.colors_name = "glowbeam"
    for group, colors in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, colors)
    end
end

return M
