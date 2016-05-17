minetest.register_privilege("autostore", {
	description = "Place, Dig, and configure autostores.",
	give_to_singleplayer = false
})

formspec_owner =
	'size[8,6;]'..
	'label[0,0;Selling What:]'..
	'list[context;selling;2,0;1,1;]'..
	'field[3.3,0.4;1,1;sellinga;;1]'..
	'label[0,1;For How Much:]'..
	'list[context;cost;2,1;1,1;]'..
	'field[3.3,1.4;1,1;costa;;1]'..
	'field[5.3,0.4;3,1;sname;store name;Unconfigured Store]'..
	'button_exit[6,1;2,1;save;Save Store]'..
	'list[current_player;main;0,2;8,4;]'

minetest.register_node('autostore:store_1', {
	description = 'store',
	tiles = {'autostore_top.png', 'autostore_side.png', 'autostore_side.png', 'autostore_side.png', 'autostore_side.png', 'autostore_off.png'},
	groups = {oddly_breakable_by_hand=3, choppy=2},
	paramtype = 'light',
	paramtype2 = 'facedir',

	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		meta:set_string('infotext', 'Unconfigured Store')
		meta:set_string('formspec', formspec_owner)
		inv:set_size("selling", 1)
		inv:set_size("cost", 1)
		inv:set_size("input", 1)
		inv:set_size("output", 1)
	end,

	after_place_node = function(pos, placer)
		if minetest.check_player_privs(placer:get_player_name(), {autostore = true}) then
		else
			minetest.remove_node(pos)
			return true
		end
	end,

	can_dig = function(pos, player)
		if minetest.check_player_privs(player:get_player_name(), {autostore = true}) then
			return true
		else
			return false
		end
	end,

	on_receive_fields = function(pos, formname, fields, sender)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		local out = inv:get_stack("output", 1)
		local node = minetest.get_node(pos)
		if fields ['save'] then
			minetest.swap_node(pos,{name = 'autostore:store', param2=node.param2})
			local selling_1 = inv:get_stack("selling", 1)
			local cost_1 = inv:get_stack('cost', 1)
			local selling_thing = selling_1:get_name()
			local cost_thing = cost_1:get_name()
			local selling_amount = tonumber(fields.sellinga)
			local cost_amount = tonumber(fields.costa)
			meta:set_string('infotext', fields.sname)
			meta:set_string('sellinga', selling_amount)
			meta:set_string('costa', cost_amount)
			meta:set_string('selling', selling_thing)
			meta:set_string('cost', cost_thing)
			meta:set_string('formspec',
			'size[8,6;]'..
			'label[0,0;Selling:]'..
			'item_image_button[1.5,0;1,1;'..selling_thing..' '..selling_amount..';blah;]'..
			'label[0,1;For:]'..
			'item_image_button[1.5,1;1,1;'..cost_thing..' '..cost_amount..';blah;]'..
			'label[3,0;Pay:]'..
			'list[context;input;4.5,0;1,1;]'..
			'label[3,1;Take:]'..
			'list[context;output;4.5,1;1,1;]'..
			'button[6,0;2,1;buy;Buy Now]'..
			'list[current_player;main;0,2;8,4;]')
		end
	end,
})

minetest.register_node('autostore:store', {
	description = 'store',
	tiles = {'autostore_top.png', 'autostore_side.png', 'autostore_side.png', 'autostore_side.png', 'autostore_side.png', 'autostore_front.png'},
	groups = {oddly_breakable_by_hand=3, choppy=2},
	paramtype = 'light',
	paramtype2 = 'facedir',
	drop = 'autostore:store_1',

	after_place_node = function(pos, placer)
		if minetest.check_player_privs(placer:get_player_name(), {autostore = true}) then
		else
			minetest.remove_node(pos)
			return true
		end
	end,

	can_dig = function(pos, player)
		if minetest.check_player_privs(player:get_player_name(), {autostore = true}) then
			return true
		else
			return false
		end
	end,

	on_receive_fields = function(pos, formname, fields, sender)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		local out = inv:get_stack("output", 1)
		local cost_thing = meta:get_string('cost')
		local cost_amount = tonumber(meta:get_string('costa'))
		local selling_thing = meta:get_string('selling')
		local selling_amount = tonumber(meta:get_string('sellinga'))
		local sell_output = selling_thing..' '..selling_amount
		if fields['buy'] then
			local instack = inv:get_stack("input", 1)
			if instack:get_name() == cost_thing and instack:get_count() >= cost_amount and out:item_fits(sell_output) then
				instack:take_item(cost_amount)
				inv:set_stack("input",1,instack)
				inv:add_item("output",sell_output)
			end
		end
	end,
})
