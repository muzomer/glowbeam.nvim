local M = {}

function M.setup()
  local highlights = require("glowbeam")
  local highlights_setter = require("glowbeam.highlights")
  highlights_setter.set_highlights(highlights)
end

return M