local M = {}

function M.setup()
    local highlights = require("glowbeam.highlights")
    for group, colors in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, colors)
    end
end

return M
