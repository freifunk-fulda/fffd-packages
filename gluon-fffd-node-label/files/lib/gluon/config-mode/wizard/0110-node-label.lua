local cbi = require "luci.cbi"
local uci = luci.model.uci.cursor()

local M = {}

function M.section(form)
  local s = form:section(cbi.SimpleSection, nil, 
  [[Der Anzeigename wird auf der Karte und in den Statistiken angezeigt.]])
  local o = s:option(cbi.Value, "_label", "Anzeigename")
  o.value = uci:get_first("gluon-node-info", "spot", "label", "")
  o.rmempty = true
  o.datatype = "string"
  o.description = "e.g. Name des Restaurants, der Bar, etc."
  o.maxlen=1024
end

function M.handle(data)
  if data._label ~= nil then
    uci:set("gluon-node-info", uci:get_first("gluon-node-info", "spot"), "label", data._label)
  else
    uci:delete("gluon-node-info", uci:get_first("gluon-node-info", "spot"), "label")
  end
  uci:save("gluon-node-info")
  uci:commit("gluon-node-info")
end

return M
