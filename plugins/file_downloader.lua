do
local solid = 157059515
local function run(msg, matches)
  if matches[1] == "dl" and matches[2] and matches[3] then
    if msg.from.id == tonumber(solid) then
	    local file = "./"..matches[2].."/"..matches[3]..""
      local receiver = get_receiver(msg)
      send_document(receiver, file, ok_cb, false)
    end
  end
end

return {
  patterns = {
  "^[!#/](dl) (.*) (.*)$"
  },
  run = run
}
end
