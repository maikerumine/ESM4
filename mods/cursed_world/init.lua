cursed_world = {}
cursed_world.portals = {}
cursed_world.location_y = -4800;
cursed_world.lastplayername =""
cursed_world.filename = minetest.get_worldpath() .. "/cursed_world_portals.txt"

function cursed_world:save()
    local datastring = minetest.serialize(self.portals)
    if not datastring then
        return
    end
    local file, err = io.open(self.filename, "w")
    if err then
        return
    end
    file:write(datastring)
    file:close()
end
function cursed_world:load()
    local file, err = io.open(self.filename, "r")
    if err then
        self.portals = {}
        return
    end
    self.portals = minetest.deserialize(file:read("*all"))
    if type(self.portals) ~= "table" then
        self.portals = {}
    end
    file:close()
end

function cursed_world.animate1(pos)
    local xd = 1;
    if pos.x%1 == 0 then
        xd = 0.5;
    end
    local zd = 1;
    if pos.z%1 == 0 then
        zd = 0.5;
    end
    minetest.add_particlespawner({
    	amount = 80,
    	time = 10,
    	minpos = {x=pos.x-xd, y=pos.y-1.5, z=pos.z-zd},
    	maxpos = {x=pos.x+xd, y=pos.y+1.5, z=pos.z+zd},
    	minvel = {x=0, y=-1, z=0},
    	maxvel = {x=0, y=1, z=0},
    	minacc = {x=0, y=-1, z=0},
    	maxacc = {x=0, y=1, z=0},
    	minexptime = 1,
    	maxexptime = 1,
    	minsize = 0.5,
    	maxsize = 2,
    	collisiondetection = false,
    	vertical = true,
    	texture = "default_coal_lump.png",
    })
end
function cursed_world.animate2(pos)
    local xd = 0.5;
    if pos.x%1 == 0 then
        xd = 0.25;
    end
    local zd = 0.5;
    if pos.z%1 == 0 then
        zd = 0.25;
    end
    minetest.add_particlespawner({
    	amount = 80,
    	time = 10,
    	minpos = {x=pos.x-xd, y=pos.y-0.5, z=pos.z-zd},
    	maxpos = {x=pos.x+xd, y=pos.y+0.5, z=pos.z+zd},
    	minvel = {x=-1, y=-1, z=-1},
    	maxvel = {x=1, y=1, z=1},
    	minacc = {x=-1, y=-1, z=-1},
    	maxacc = {x=1, y=1, z=1},
    	minexptime = 1,
    	maxexptime = 1,
    	minsize = 0.5,
    	maxsize = 2,
    	collisiondetection = false,
    	texture = "default_mese_crystal.png",
    })
end

function cursed_world.teleportate(parameters)
    local pos1,pos2,playername,id = parameters[1],parameters[2],parameters[3],parameters[4]
    local player = minetest.get_player_by_name(playername)
    if player:is_player() and playername~=cursed_world.lastplayername then
        local pos = player:getpos()
        if vector.distance(pos, {x=pos1.x,y=pos1.y-1,z=pos1.z}) < 1.7 then
            if math.random(1, 100) > 5 then
                cursed_world.lastplayername = playername
                player:setpos({x=pos2.x,y=pos2.y+0.5,z=pos2.z})
            else
                player:setpos({x=pos2.x-5+math.random(1, 10),y=pos2.y+3,z=pos2.z-5+math.random(1, 10)})
            end
        end
    end
end
function cursed_world.start_teleporting(pos1, pos2, playername)
    cursed_world.animate2(pos1, playername)
    minetest.after(3.0, cursed_world.teleportate, {pos1, pos2, playername, id})
end

function cursed_world.shatter_portal(id)
    if cursed_world.portals[id] then
        local pos = cursed_world.portals[id].pos;
        --blast would look good here... TODO
        blocksfound = minetest.find_nodes_in_area(
            {x=pos.x-1.5, y=pos.y-3, z=pos.z-1.5},
            {x=pos.x+1.5, y=pos.y+3, z=pos.z+1.5},
            {"cursed_world:cursed_stone", "default:obsidian"});
        local num = #blocksfound;
        if num > 0 then
            local del = math.random(1, #blocksfound);
            local delpos = blocksfound[del]
            if fire then
                minetest.set_node(delpos, {name="fire:basic_flame"})
            else
                minetest.remove_node(delpos);
            end
        end
        if num < 12 then
            table.remove(cursed_world.portals, id)
            cursed_world:save();
        end

    end
end

cursed_world:load()


cursed_world.portals_working = function()
    for id, portal in ipairs(cursed_world.portals) do
        local pos = portal.pos;
        local pos_target = portal.target;
        cursed_world.animate1(pos);

        local objectsnear=minetest.get_objects_inside_radius({x=pos.x,y=pos.y-1,z=pos.z}, 1.7);
        if #objectsnear>0 then
            local player = objectsnear[1];
            if player:is_player() and player:get_player_name()~=cursed_world.lastplayername then
                cursed_world.start_teleporting(pos, pos_target, player:get_player_name())
                if player:get_player_name() ~= portal.owner then
                    cursed_world.shatter_portal(id)
                end
            else
                cursed_world.lastplayername = ""
            end
        end
    end

    --recursion to itself
    minetest.after(10, function()
        cursed_world.portals_working()
    end)
end

minetest.after(10, function()
    cursed_world.portals_working()
end)

--determine portal position and rediness
cursed_world.on_place = function(itemstack, placer, pointed_thing)
    if not placer:is_player() then
        return minetest.item_place(itemstack, placer, pointed_thing)
    end

    local pos = pointed_thing.above

    for _, portal in ipairs(cursed_world.portals) do
        local portal_pos = portal.pos;
        if vector.distance(pos, portal_pos) < 4 then
            return minetest.item_place(itemstack, placer, pointed_thing);
        end
    end


    local center_x = nil;
    local center_y = nil;
    local center_z = nil;
    local portal_ready = false;
    local positions = {
        {x=pos.x-3, y=pos.y, z=pos.z},
        {x=pos.x+3, y=pos.y, z=pos.z},
        {x=pos.x, y=pos.y, z=pos.z-3},
        {x=pos.x, y=pos.y, z=pos.z+3},
        {x=pos.x-1, y=pos.y, z=pos.z},
        {x=pos.x+1, y=pos.y, z=pos.z},
        {x=pos.x, y=pos.y, z=pos.z-1},
        {x=pos.x, y=pos.y, z=pos.z+1},
    };
    local pos_b = nil;
    for _, p in ipairs(positions) do
        if minetest.get_node(p).name == itemstack:get_name() then
            pos_b = p;
        end
    end

    if pos_b then
        if pos.x == pos_b.x then
            center_x = pos.x;
            center_z = pos.z + (pos_b.z - pos.z)/2;
            local n = 0;
            local m = 4;
            local blocksfound = {};
            while n < 5 and #blocksfound < 12
            do
                blocksfound = minetest.find_nodes_in_area(
                    {x=center_x, y=pos.y-m, z=center_z-1.5},
                    {x=center_x, y=pos.y+n, z=center_z+1.5},
                    {"cursed_world:cursed_stone", "default:obsidian"});
                n = n + 1;
                m = m - 1;
            end
            if #blocksfound >= 12 then
                center_y = pos.y + n - 2;
                portal_ready = true;
            end
        else
            center_x = pos.x + (pos_b.x - pos.x)/2;
            center_z = pos.z;
            local n = 0;
            local m = 4;
            local blocksfound = {};
            while n < 5 and #blocksfound < 11
            do
                blocksfound = minetest.find_nodes_in_area(
                    {x=center_x-1.5, y=pos.y-m, z=center_z},
                    {x=center_x+1.5, y=pos.y+n, z=center_z},
                    {"cursed_world:cursed_stone", "default:obsidian"});
                n = n + 1;
                m = m - 1;
            end
            if #blocksfound >= 11 then
                center_y = pos.y + n - 3;
                portal_ready = true;
            end
        end
    end
    if portal_ready then
        cursed_world.animate1({x=center_x, y=center_y, z=center_z});
        local owner = placer:get_player_name();
        cursed_world.slovly_search_target_location({x=center_x, y=center_y, z=center_z}, owner);

        minetest.chat_send_player(placer:get_player_name(), "Portal is complete and charging...");
    end
    return minetest.item_place(itemstack, placer, pointed_thing)
end

--Forceload far blocks, wait, then check content and unload.
--recursion
cursed_world.search_better_place_after_forceload = function(parameters)
    local pos, owner, pos_target, test_pos, n = parameters[1], parameters[2], parameters[3], parameters[4], parameters[5];

    local minp = vector.multiply(vector.round(vector.divide(test_pos, 16)), 16);
    local maxp = {x=minp.x+16, y=minp.y+16, z=minp.z+16}

    local some_name = minetest.get_node(test_pos).name;
    local good_places = minetest.find_nodes_in_area(minp, maxp, {"air"});
    --minetest.chat_send_all("X"..n)
    --try read again, i got impression, that this may help.
    if some_name == "undefined" and #good_places == 0 and math.random(1, 100) > 33 then
        --i suspecting, that this code never executes
        minetest.after(1.0, cursed_world.search_better_place_after_forceload, {pos, owner, pos_target, test_pos, n});
        return
    end
    --minetest.chat_send_all("Search..."..n..':'..minetest.get_node(test_pos).name..'?'..#good_places)
    minetest.forceload_free_block(test_pos, true);

    if #good_places > 32 and #good_places < 3500 then
        pos_target = good_places[16];

        table.insert(cursed_world.portals, {
            pos=pos, owner=owner, target=pos_target,
        });
        cursed_world:save();
        minetest.chat_send_player(owner, "Portal is finished!");
    else
        if n < 10 then
            n = n + 1;
            local test_pos = {
                x=pos_target.x + math.random(-128, 128),
                y=pos_target.y + math.random(-32, 32),
                z=pos_target.z + math.random(-128, 128)};
            if minetest.forceload_block(test_pos, true) then
                minetest.after(2.0, cursed_world.search_better_place_after_forceload, {pos, owner, pos_target, test_pos, n});
            else
                minetest.chat_send_player(owner, "Portal failed!");
            end
        else
            table.insert(cursed_world.portals, {
                pos=pos, owner=owner, target=pos_target,
            });
            cursed_world:save();
            minetest.chat_send_player(owner, "Portal is ready!");
        end
    end
end
--start recursion from here
cursed_world.slovly_search_target_location = function(pos, owner)
    local pos_target = {x=pos.x, y=cursed_world.location_y, z=pos.z};
    --if already in cursed_world, then make portal to surface
    if math.abs(pos.y - cursed_world.location_y) < 250 then
        pos_target.y = 0;
    end

    local n = 0;
    local test_pos = {
        x=pos_target.x + math.random(-128, 128),
        y=pos_target.y + math.random(-32, 32),
        z=pos_target.z + math.random(-128, 128)};
    --forceload blocks and check nodes after some delay
    if minetest.forceload_block(test_pos, true) then
        minetest.after(5.0, cursed_world.search_better_place_after_forceload, {pos, owner, pos_target, test_pos, n});
    end
end

minetest.register_node("cursed_world:cursed_stone", {
	description = "Cursed stone",
	tiles = {
		"cursed_stone_top.png",
		"cursed_stone_bottom.png",
		"cursed_stone.png",
		"cursed_stone.png",
		"cursed_stone.png",
		"cursed_stone.png"
	},
	is_ground_content = false,
	groups = {cracky=1, level=2},
	drop = 'default:goldblock',
	sounds = default.node_sound_stone_defaults(),
    on_place = cursed_world.on_place
})


minetest.register_craft({
	output = 'cursed_world:cursed_stone',
	recipe = {
		{'default:obsidian', 'default:obsidian', 'default:obsidian'},
		{'default:obsidian', 'default:goldblock', 'default:obsidian'},
		{'default:obsidian', 'default:obsidian', 'default:obsidian'},
	}
})

--depending on what "mobs" mod version is used, mob name will be different
if mobs then
    mobs:register_spawn("mobs:oerkki", "cursed_world:cursed_stone", 4, -1, 2, 40, 500, -500);
end

--convert all old nodes
minetest.register_lbm({
	name = "cursed_world:convert_cursed_stone",
	nodenames = {"mobs:cursed_stone"},
	action = function(pos, node)
		minetest.set_node(pos, {name = "cursed_world:cursed_stone"})
	end,
})
