esmobs.meta = {}
for _, i in ipairs(esmobs.list) do
	esmobs.meta[i] = {}
	local f = io.open(esmobs.modpath.."/meta/"..i..".txt")
	local data = nil
	if f then
		data = minetest.deserialize("return {"..f:read('*all').."}")
		f:close()
	end
	data = data or {}
	esmobs.meta[i].name = data.name or ""
	esmobs.meta[i].type = data.type or ""
	esmobs.meta[i].hp = data.hp or ""
	esmobs.meta[i].drops = data.drops or ""
	esmobs.meta[i].info = data.info or ""
end
