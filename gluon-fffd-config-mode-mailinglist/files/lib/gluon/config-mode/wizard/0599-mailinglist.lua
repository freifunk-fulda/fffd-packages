local cbi = require "luci.cbi"
local i18n = require "luci.i18n"

local M = {}

function M.section(form)
  local s = form:section(cbi.SimpleSection, nil, i18n.translate("gluon-config-mode:mailinglist:advertise"))
end

function M.handle(data)
end

return M
