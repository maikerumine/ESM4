--esmobs v0.0.9
--maikerumine
--made for Extreme Survival game

--esmobs = {}
--esmobs.esmobs = {}

--dofile(minetest.get_modpath("esmobs").."/esconfig.lua")

dofile(minetest.get_modpath("esmobs").."/api.lua")
--dofile(minetest.get_modpath("esmobs").."/chickoboo.lua")
dofile(minetest.get_modpath("esmobs").."/esnpc.lua")
dofile(minetest.get_modpath("esmobs").."/esmonster.lua")
dofile(minetest.get_modpath("esmobs").."/esbadplayer.lua")
dofile(minetest.get_modpath("esmobs").."/esanimal.lua")
dofile(minetest.get_modpath("esmobs").."/crafts.lua")

--dofile(minetest.get_modpath("esmobs").."/dirt.lua")
--dofile(minetest.get_modpath("esmobs").."/icemob.lua")
--dofile(minetest.get_modpath("esmobs").."/nicemob.lua")
--dofile(minetest.get_modpath("esmobs").."/crossfire.lua")
--dofile(minetest.get_modpath("esmobs").."/bloco.lua")
dofile(minetest.get_modpath("esmobs").."/mcmobs.lua")

dofile(minetest.get_modpath("esmobs").."/spawner.lua")

--MOB SEPCS



--IF ES IS LOADED YOU WILL SEE OTHER MOBS HOLDING THE SPECIAL TOOLS
	if es then
		dofile(minetest.get_modpath("esmobs").."/esnpc2.lua")
	end

--IN CASE BONES IS NOT INSTALLED, THIS OVERRIDES NODES SO YOU HAVE THEM FOR MOBS.
	if not bones then
		dofile(minetest.get_modpath("esmobs").."/bones.lua")
		minetest.register_alias("bones:bones", "esmobs:bones")
	end
		if bones then
		minetest.register_alias("esmobs:bones", "bones:bones")
	end

--IN CASE THROWING IS NOT INSTALLED, THIS DOSEN'T LOAD MCMOBS
	if not throwing then
		dofile(minetest.get_modpath("esmobs").."/throwing.lua")
		minetest.register_alias("throwing:arrow_entity", "esmobs:throwing_entity")
		minetest.register_alias("throwing:bow", "esmobs:bow")
		minetest.register_alias("throwing:arrow", "esmobs:arrow")
	end
	if throwing then
		minetest.register_alias("esmobs:arrow_entity", "throwing:arrow_entity")
		minetest.register_alias("esmobs:bow", "throwing:bow")
		minetest.register_alias("esmobs:arrow", "throwing:arrow")
	end

--TNT HACK
	--dofile(minetest.get_modpath("esmobs").."/tnt.lua")


--MOB SPECS
esmobs = {}
esmobs.type = { SPRITE=0, MODEL=1 }

esmobs.esmobs = {}
esmobs.default = function()
	return "character_1"
end

esmobs.get_type = function(texture)
	if not texture then return end
	if string.sub(texture,0,string.len("character")) == "character" then
		return esmobs.type.MODEL
	end
	if string.sub(texture,0,string.len("badplayer")) == "badplayer" then
		return esmobs.type.SPRITE
	end
	if string.sub(texture,0,string.len("mobs")) == "mobs" then
		return esmobs.type.SPRITE
	end
	if string.sub(texture,0,string.len("player")) == "player" then
		return esmobs.type.SPRITE
	end
	if string.sub(texture,0,string.len("mcmobs")) == "mcmobs" then
		return esmobs.type.SPRITE
	end
end

esmobs.modpath = minetest.get_modpath("esmobs")
dofile(esmobs.modpath.."/skinlist.lua")
dofile(esmobs.modpath.."/meta.lua")


esmobs.formspec = {}
esmobs.formspec.main = function(name)
	local page = esmobs.pages[name]
	if page == nil then page = 0 end
	local formspec = "size[8,7.5]"
		.. "button[0,0;2,.5;main;Back]"
	if esmobs.get_type(esmobs.esmobs[name]) == esmobs.type.MODEL then
		formspec = formspec
			.. "image[0,.75;1,2;"..esmobs.esmobs[name].."_preview.png]"
			.. "image[1,.75;1,2;"..esmobs.esmobs[name].."_preview_back.png]"
			.. "label[6,.5;Raw texture:]"
			.. "image[6,1;2,1;"..esmobs.esmobs[name]..".png]"

	else
		formspec = formspec
--			.. "image[0,.75;1,2;"..esmobs.esmobs[name]..".png]"
--			.. "image[1,.75;1,2;"..esmobs.esmobs[name].."_back.png]"
			.. "image[0,.75;1,2;"..esmobs.esmobs[name].."_preview.png]"
			.. "image[1,.75;1,2;"..esmobs.esmobs[name].."_preview_back.png]"
	end
	local meta = esmobs.meta[esmobs.esmobs[name]]
	if meta then
		if meta.name then
			formspec = formspec .. "label[2,.5;name: "..meta.name.."]"
		end
		if meta.type then
			formspec = formspec .. "label[2,1;type: "..meta.type.."]"
		end
		if meta.hp then
			formspec = formspec .. "label[2,1.5;hp:"..meta.hp.."]"
		end
		if meta.drops then
			formspec = formspec .. "label[2,2;drops:"..meta.drops.."]"
		end
		if meta.info then
			formspec = formspec .. "label[2,2.5;info:"..meta.info.."]"
		end
	end
	local index = 0
	local skip = 0 -- Skip esmobs, used for pages
	for i, skin in ipairs(esmobs.list) do
		if skip < page*16 then skip = skip + 1 else
			if index < 16 then
				formspec = formspec .. "image_button["..(index%8)..","..((math.floor(index/8))*2+3)..";1,2;"..skin
				if esmobs.get_type(skin) == esmobs.type.MODEL then
					formspec = formspec .. "_preview"
				end
				formspec = formspec .. ".png;esmobs_set_"..i..";]"
			end
			index = index +1
		end
	end
	if page > 0 then
		formspec = formspec .. "button[0,7;1,.5;esmobs_page_"..(page-1)..";<<]"
	else
		formspec = formspec .. "button[0,7;1,.5;esmobs_page_"..page..";<<]"
	end
	formspec = formspec .. "button[.75,7;6.5,.5;esmobs_page_"..page..";Page "..(page+1).."/"..math.floor(#esmobs.list/16+1).."]" -- a button is used so text is centered
	if index > 16 then
		formspec = formspec .. "button[7,7;1,.5;esmobs_page_"..(page+1)..";>>]"
	else
		formspec = formspec .. "button[7,7;1,.5;esmobs_page_"..page..";>>]"
	end
	return formspec
end

esmobs.pages = {}


minetest.register_on_joinplayer(function(player)
	if not esmobs.esmobs[player:get_player_name()] then
		esmobs.esmobs[player:get_player_name()] = esmobs.default()
	end
	--esmobs.update_player_skin(player)
	inventory_plus.register_button(player,"esmobs","E.S. Mobs")
end)

minetest.register_on_player_receive_fields(function(player,formname,fields)
	if fields.esmobs then
		inventory_plus.set_inventory_formspec(player,esmobs.formspec.main(player:get_player_name()))
	end
	for field, _ in pairs(fields) do
		if string.sub(field,0,string.len("esmobs_set_")) == "esmobs_set_" then
			esmobs.esmobs[player:get_player_name()] = esmobs.list[tonumber(string.sub(field,string.len("esmobs_set_")+1))]
			--esmobs.update_player_skin(player)
			inventory_plus.set_inventory_formspec(player,esmobs.formspec.main(player:get_player_name()))
		end
		if string.sub(field,0,string.len("esmobs_page_")) == "esmobs_page_" then
			esmobs.pages[player:get_player_name()] = tonumber(string.sub(field,string.len("esmobs_page_")+1))
			inventory_plus.set_inventory_formspec(player,esmobs.formspec.main(player:get_player_name()))
		end
	end
end)

print("[ES-Mobs] Extreme Survival Mobs Loaded!")
if minetest.setting_get("log_mods") then
	minetest.log("action", "esmobs mobs loaded")
end
