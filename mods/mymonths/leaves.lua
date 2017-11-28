--Nodes #################

local leaves_table = {
  'pale_green', 'orange', 'red', 'blooms', 'acacia_blooms',
  'orange_aspen', 'red_aspen', 'aspen_blooms', 'yellow_aspen'}

local sticks_table = {'default', 'aspen'}

for i, name in pairs(leaves_table) do
  minetest.register_node('mymonths:leaves_' .. name, {
      description = name .. ' leaves',
      drawtype = 'allfaces_optional',
      waving = 1,
      visual_scale = 1.3,
      tiles = {'mymonths_leaves_' .. name .. '.png'},
      paramtype = 'light',
      is_ground_content = false,
      groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1, flora = 1},
      sounds = default.node_sound_leaves_defaults(),
      after_place_node = default.after_place_leaves,
    })
end

for i, name in pairs(sticks_table) do
  minetest.register_node('mymonths:sticks_' .. name, {
      description = 'Sticks',
      drawtype = 'allfaces_optional',
      waving = 1,
      visual_scale = 1.3,
      tiles = {'mymonths_sticks.png'},
      paramtype = 'light',
      is_ground_content = false,
      drop = 'default:stick 2',
      groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
    })
end

for i = 1, 4 do
  minetest.register_node('mymonths:fall_leaves_'..i, {
      description = 'Fall Leaves',
      drawtype = 'mesh',
      mesh = 'mymonths_fall_leaves.obj',
      tiles = {'mymonths_fall_leaves_'..i..'.png'},
      inventory_image = 'mymonths_fall_leaves_'..i..'.png',
      groups = {oddly_breakable_by_hand = 1, flammable = 2, attached_node = 1, fallen_leaves = 1},
      paramtype = 'light',
      walkable = false,
      buildable_to = true,
      drop = 'mymonths:fall_leaves_2',
      selection_box = {
        type = "fixed",
        fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
      }
    })
end

minetest.register_node('mymonths:leaf_pile', {
    description = 'Pile of leaves',
    drawtype = 'mesh',
    mesh = 'mymonths_leaf_pile.obj',
    tiles = {'mymonths_leaf_pile_uv.png'},
    inventory_image = 'mymonths_leaf_pile.png',
    groups = {oddly_breakable_by_hand = 1, flammable = 2, attached_node = 1},
    paramtype = 'light',
    walkable = false,
    buildable_to = true,
    selection_box = {
      type = 'fixed',
      fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
    }
  })

minetest.register_craft({
    type = 'fuel',
    recipe = 'mymonths:leaf_pile',
    burntime = 4,
  })

minetest.register_craft({
    output = 'mymonths:leaf_pile',
    recipe = {
      {'group:fallen_leaves', 'group:fallen_leaves', 'group:fallen_leaves'},
      {'group:fallen_leaves', 'group:fallen_leaves', 'group:fallen_leaves'},
      {'group:fallen_leaves', 'group:fallen_leaves', 'group:fallen_leaves'},
    }
  })

-- Functions
function leaves_fall(pos)
  local i = 1
  local finished = false
  repeat
    local n = minetest.get_node({x = pos.x, y = pos.y - i, z = pos.z})
    if n.name == 'air' then
      i = i + 1
    elseif n.name ~= 'air' then
      if n.name == 'mymonths:fall_leaves_1' then
        minetest.set_node({x = pos.x, y = pos.y - i, z = pos.z}, {name = 'mymonths:fall_leaves_2'})
        finished = true
      end
      if n.name == 'mymonths:fall_leaves_2' then
        minetest.set_node({x = pos.x, y = pos.y - i, z = pos.z}, {name = 'mymonths:fall_leaves_3'})
        finished = true
      end
      if n.name == 'mymonths:fall_leaves_3' then
        minetest.set_node({x = pos.x, y = pos.y - i, z = pos.z}, {name = 'mymonths:fall_leaves_4'})
        finished = true
      end
      if n.name == 'mymonths:fall_leaves_4' then
        finished = true
      end
      local leaf = minetest.get_node({x = pos.x, y = pos.y - (i - 1), z = pos.z}) -- This is the node above the node that isn't air.
      if leaf.name == 'air' and finished == false then
        local below = minetest.get_node({x = pos.x, y = pos.y - i, z = pos.z})
        local def = minetest.registered_items[below.name]
        if def.buildable_to then
          minetest.set_node({x = pos.x, y = pos.y - i, z = pos.z}, {name = 'mymonths:fall_leaves_1'})
          finished = true
        else
          minetest.set_node({x = pos.x, y = pos.y - (i - 1), z = pos.z}, {name = 'mymonths:fall_leaves_1'})
          finished = true
        end
      end
      i = i + 1
    end
  until finished == true or i == 10
end

-- ABMs and LBMs ##################

-- Leaves changing in September and October.
minetest.register_abm({
    label = 'leaves changing in fall',
    nodenames = {'group:leaves'},
    interval = 60,
    chance = 40,
    action = function (pos, node, active_object_count, active_object_count_wider)

      if mymonths.month_counter == 9
      or mymonths.month_counter == 10 then

        if node.name == 'default:leaves' then

          minetest.set_node(pos, {name = 'mymonths:leaves_pale_green'})

        elseif node.name == 'mymonths:leaves_pale_green' then

          minetest.set_node(pos, {name = 'mymonths:leaves_orange'})

        elseif node.name == 'mymonths:leaves_orange' then

          minetest.set_node(pos, {name = 'mymonths:leaves_red'})

        elseif node.name == 'default:aspen_leaves' then

          minetest.set_node(pos, {name = 'mymonths:leaves_yellow_aspen'})

        elseif node.name == 'mymonths:leaves_yellow_aspen' then

          minetest.set_node(pos, {name = 'mymonths:leaves_orange_aspen'})

        elseif node.name == 'mymonths:leaves_orange_aspen' then

          minetest.set_node(pos, {name = 'mymonths:leaves_red_aspen'})
        end
      end
    end
  })

--leaves 'falling/dying' in October
minetest.register_abm({
    label = 'leaves dying',
    nodenames = {'mymonths:leaves_red', 'mymonths:leaves_red_aspen'},
    interval = 60,
    chance = 40,
    action = function (pos, node, active_object_count, active_object_count_wider)
      if mymonths.month_counter == 10 then
        if node.name == 'mymonths:leaves_red' then
          minetest.set_node(pos, {name = 'mymonths:sticks_default'})
          leaves_fall(pos)
        elseif node.name == 'mymonths:leaves_red_aspen' then
          minetest.set_node(pos, {name = 'mymonths:sticks_aspen'})
          leaves_fall(pos)
        end
      end
    end
  })

-- Removal of dead leaves from the ground
minetest.register_abm({
    label = 'falled leaf cleanup',
    nodenames = {'group:fallen_leaves'},
    interval = 60,
    chance = 40,
    action = function (pos, node, active_object_count, active_object_count_wider)
      local month = mymonths.month_counter
      if month ~= 10 or month ~= 11 then
        if node.name == 'mymonths:fall_leaves_4' then
          minetest.set_node(pos, {name = 'mymonths:fall_leaves_3'})
        elseif node.name == 'mymonths:fall_leaves_3' then
          minetest.set_node(pos, {name = 'mymonths:fall_leaves_2'})
        elseif node.name == 'mymonths:fall_leaves_2' then
          minetest.set_node(pos, {name = 'mymonths:fall_leaves_1'})
        elseif node.name == 'mymonths:fall_leaves_1' then
          minetest.set_node(pos, {name = 'air'})
        end
      end
    end
  })

--New growth in spring
minetest.register_abm({
    label = 'growing leaves in spring',
    nodenames = {'mymonths:sticks_default', 'mymonths:leaves_blooms', 'mymonths:sticks_aspen', 'mymonths:leaves_aspen_blooms'},
    interval = 60,
    chance = 40,

    action = function (pos, node, active_object_count, active_object_count_wider)

      if mymonths.month_counter == 3
      or mymonths.month_counter == 4 then

        if node.name == 'mymonths:sticks_default' then

          minetest.set_node(pos, {name = 'mymonths:leaves_blooms'})

        elseif node.name == 'mymonths:leaves_blooms' then

          minetest.set_node(pos, {name = 'default:leaves'})

        elseif node.name == 'mymonths:sticks_aspen' then

          minetest.set_node(pos, {name = 'mymonths:leaves_aspen_blooms'})

        elseif node.name == 'mymonths:leaves_aspen_blooms' then

          minetest.set_node(pos, {name = 'default:aspen_leaves'})
        end
      end
    end
  })

-- apples die in November
minetest.register_abm({
    label = 'apples die',
    nodenames = {'default:apple'},
    interval = 15,
    chance = 10,
    action = function (pos)

      if mymonths.month_counter == 11 then
        minetest.set_node(pos,{name = 'mymonths:sticks_default'})

        local i = 1
        repeat
          local n = minetest.get_node({x = pos.x, y = pos.y - i, z = pos.z})
          if n.name == "air" then
            minetest.spawn_item({
                x = pos.x,
                y = pos.y - i,
                z = pos.z},
            'default:apple')
          end
          i = i + 1
        until n.name == "air" or i == 4
      end
    end
  })

minetest.register_abm({
    label = 'growing apples',
    nodenames = {'default:leaves','default:acacia_leaves'},
    interval = 60,
    chance = 15,

    action = function (pos, node, active_object_count, active_object_count_wider)

      local n = node.name

      if n == 'default:leaves' then

        if mymonths.month_counter == 6
        or mymonths.month_counter == 7
        or mymonths.month_counter == 8
        or mymonths.month_counter == 9 then

          local a = minetest.find_node_near(pos, 3, 'default:apple')

          if a == nil then
            minetest.set_node(pos,{name = 'default:apple'})
          end
        end

      end

      if n == 'default:acacia_leaves' then

        if mymonths.month_counter == 1 then
          minetest.set_node(pos,{name = 'mymonths:leaves_acacia_blooms'})
        end

      end

    end
  })

-- Fallen Leaves Cleanup LBM
minetest.register_lbm({
    name = 'mymonths:rake',
    nodenames = {'group:fallen_leaves'},
    run_at_every_load = true,
    action = function (pos)
      local month = tonumber(mymonths.month_counter)
      if month ~= 10 or month ~= 11 or month ~= 12 or month ~= 1 or month ~= 2 then
        minetest.set_node(pos, {name = 'air'})
      end
    end
  })

--Leaf changing LBM
minetest.register_lbm({
    name = "mymonths:change_leaves",

    nodenames = {'default:leaves', 'mymonths:leaves_pale_green','mymonths:leaves_orange',
      'mymonths:leaves_red', 'mymonths:sticks_default', 'mymonths:leaves_blooms',
      'default:aspen_leaves', 'mymonths:leaves_aspen_blooms', 'mymonths:leaves_orange_aspen',
      'mymonths:leaves_red_aspen', 'mymonths:sticks_aspen',
      'default:acacia_leaves', 'mymonths:leaves_acacia_blooms'},

    run_at_every_load = true,

    action = function (pos, node)

      local n = node.name
      local month = tonumber(mymonths.month_counter)
      local day = tonumber(mymonths.day_counter)

      -- January
      if month == 1 then

        -- Default Leaves
        if n == 'default:leaves'
        or n == 'mymonths:leaves_blooms'
        or n == 'mymonths:leaves_pale_green'
        or n == 'mymonths:leaves_orange'
        or n == 'mymonths:leaves_red' then

          minetest.set_node(pos, {name = 'mymonths:sticks_default'})

        end

        -- Aspen Leaves
        if n == 'default:aspen_leaves'
        or n == 'mymonths:leaves_aspen_blooms'
        or n == 'mymonths:leaves_yellow_aspen'
        or n == 'mymonths:leaves_orange_aspen'
        or n == 'mymonths:leaves_red_aspen' then

          minetest.set_node(pos, {name = 'mymonths:sticks_aspen'})

        end

        -- Acacia Leaves
        if n == 'default:acacia_leaves' then

          minetest.set_node(pos,{name = 'mymonths:leaves_acacia_blooms'})

        end

        -- Apples
        if n == 'default:apple' then

          minetest.set_node(pos,{name = 'mymonths:sticks_default'})

        end

      end

      -- Feburary
      if month == 2 then

        -- Default Leaves
        if n == 'default:leaves'
        or n == 'mymonths:leaves_blooms'
        or n == 'mymonths:leaves_pale_green'
        or n == 'mymonths:leaves_orange'
        or n == 'mymonths:leaves_red' then

          minetest.set_node(pos, {name = 'mymonths:sticks_default'})

        end

        -- Aspen Leaves
        if n == 'default:aspen_leaves'
        or n == 'mymonths:leaves_aspen_blooms'
        or n == 'mymonths:leaves_yellow_aspen'
        or n == 'mymonths:leaves_orange_aspen'
        or n == 'mymonths:leaves_red_aspen' then

          minetest.set_node(pos, {name = 'mymonths:sticks_aspen'})

        end

        -- Acacia Leaves
        if n == 'default:acacia_leaves' then

          minetest.set_node(pos,{name = 'mymonths:leaves_acacia_blooms'})

        end

        -- Apples
        if n == 'default:apple' then

          minetest.set_node(pos,{name = 'mymonths:sticks_default'})

        end

      end

      -- March
      if month == 3 then

        -- Default Leaves
        if n == 'default:leaves'
        or n == 'mymonths:leaves_pale_green'
        or n == 'mymonths:leaves_orange'
        or n == 'mymonths:leaves_red' then

          minetest.set_node(pos, {name = 'mymonths:sticks_default'})

        end

        -- Aspen Leaves
        if n == 'default:aspen_leaves'
        or n == 'mymonths:leaves_aspen_blooms'
        or n == 'mymonths:leaves_yellow_aspen'
        or n == 'mymonths:leaves_orange_aspen'
        or n == 'mymonths:leaves_red_aspen' then

          minetest.set_node(pos, {name = 'mymonths:sticks_aspen'})

        end

        -- Acacia Leaves
        if n == 'mymonths:leaves_acacia_blooms' then

          minetest.set_node(pos,{name = 'default:acacia_leaves'})

        end

        -- Apples
        if n == 'default:apple' then

          minetest.set_node(pos,{name = 'mymonths:leaves_blooms'})

        end

      end

      -- April
      if month == 4 then

        -- Default Leaves
        if n == 'mymonths:sticks_default'
        or n == 'mymonths:leaves_pale_green'
        or n == 'mymonths:leaves_orange'
        or n == 'mymonths:leaves_red' then

          minetest.set_node(pos, {name = 'default:leaves'})

        end

        -- Aspen Leaves
        if n == 'default:aspen_leaves'
        or n == 'mymonths:sticks_aspen'
        or n == 'mymonths:leaves_yellow_aspen'
        or n == 'mymonths:leaves_orange_aspen'
        or n == 'mymonths:leaves_red_aspen' then

          minetest.set_node(pos, {name = 'mymonths:leaves_aspen_blooms'})

        end

        -- Acacia Leaves
        if n == 'mymonths:leaves_acacia_blooms' then

          minetest.set_node(pos,{name = 'default:acacia_leaves'})

        end

        -- Apples
        if n == 'default:apple' then

          minetest.set_node(pos,{name = 'mymonths:leaves_blooms'})

        end

      end

      -- May
      if month == 5 then

        -- Default Leaves
        if n == 'mymonths:sticks_default'
        or n == 'mymonths:leaves_pale_green'
        or n == 'mymonths:leaves_orange'
        or n == 'mymonths:leaves_red' then

          minetest.set_node(pos, {name = 'default:leaves'})

        end

        -- Aspen Leaves
        if n == 'mymonths:leaves_aspen_blooms'
        or n == 'mymonths:sticks_aspen'
        or n == 'mymonths:leaves_yellow_aspen'
        or n == 'mymonths:leaves_orange_aspen'
        or n == 'mymonths:leaves_red_aspen' then

          minetest.set_node(pos, {name = 'default:aspen_leaves'})

        end

        -- Acacia Leaves
        if n == 'mymonths:leaves_acacia_blooms' then

          minetest.set_node(pos,{name = 'default:acacia_leaves'})

        end

        -- Apples
        if n == 'default:apple' then

          minetest.set_node(pos,{name = 'default:leaves'})

        end

      end

      -- June
      if month == 6 then

        -- Default Leaves
        if n == 'mymonths:sticks_default'
        or n == 'mymonths:leaves_pale_green'
        or n == 'mymonths:leaves_orange'
        or n == 'mymonths:leaves_red' then

          minetest.set_node(pos, {name = 'default:leaves'})

        end

        -- Aspen Leaves
        if n == 'mymonths:leaves_aspen_blooms'
        or n == 'mymonths:sticks_aspen'
        or n == 'mymonths:leaves_yellow_aspen'
        or n == 'mymonths:leaves_orange_aspen'
        or n == 'mymonths:leaves_red_aspen' then

          minetest.set_node(pos, {name = 'default:aspen_leaves'})

        end

        -- Acacia Leaves
        if n == 'mymonths:leaves_acacia_blooms' then

          minetest.set_node(pos,{name = 'default:acacia_leaves'})

        end

        -- Apples
        -- Nothing Happens

      end

      -- July
      if month == 7 then

        -- Default Leaves
        if n == 'mymonths:sticks_default'
        or n == 'mymonths:leaves_pale_green'
        or n == 'mymonths:leaves_orange'
        or n == 'mymonths:leaves_red' then

          minetest.set_node(pos, {name = 'default:leaves'})

        end

        -- Aspen Leaves
        if n == 'mymonths:leaves_aspen_blooms'
        or n == 'mymonths:sticks_aspen'
        or n == 'mymonths:leaves_yellow_aspen'
        or n == 'mymonths:leaves_orange_aspen'
        or n == 'mymonths:leaves_red_aspen' then

          minetest.set_node(pos, {name = 'default:aspen_leaves'})

        end

        -- Acacia Leaves
        if n == 'mymonths:leaves_acacia_blooms' then

          minetest.set_node(pos,{name = 'default:acacia_leaves'})

        end

        -- Apples
        -- Nothing Happens

      end

      -- Augest
      if month == 8 then

        -- Default Leaves
        if n == 'mymonths:sticks_default'
        or n == 'mymonths:leaves_pale_green'
        or n == 'mymonths:leaves_orange'
        or n == 'mymonths:leaves_red' then

          minetest.set_node(pos, {name = 'default:leaves'})

        end

        -- Aspen Leaves
        if n == 'mymonths:leaves_aspen_blooms'
        or n == 'mymonths:sticks_aspen'
        or n == 'mymonths:leaves_yellow_aspen'
        or n == 'mymonths:leaves_orange_aspen'
        or n == 'mymonths:leaves_red_aspen' then

          minetest.set_node(pos, {name = 'default:aspen_leaves'})

        end

        -- Acacia Leaves
        if n == 'mymonths:leaves_acacia_blooms' then

          minetest.set_node(pos,{name = 'default:acacia_leaves'})

        end

        -- Apples
        -- Nothing Happens

      end

      -- September
      if month == 9 then

        -- Default Leaves
        if day >= 1
        and day <= 7 then

          if n == 'mymonths:sticks_default' then

            minetest.set_node(pos, {name = 'default:leaves'})

          end

        end

        if day >=8
        and day <=14 then

          if n == 'mymonths:sticks_default'
          or n == 'default:leaves' then

            minetest.set_node(pos, {name = 'mymonths:leaves_pale_green'})

          end

        end

        -- Aspen Leaves
        if day >= 1
        and day <=7 then

          if n == 'mymonths:sticks_aspen'
          or n == 'mymonths:leaves_aspen_blooms' then

            minetest.set_node(pos, {name = 'default:aspen_leaves'})

          end

        end

        if day >=8
        and day <=14 then

          if n == 'mymonths:sticks_aspen'
          or n == 'mymonths:leaves_aspen_blooms'
          or n == 'default:aspen_leaves' then

            minetest.set_node(pos, {name = 'mymonths:leaves_yellow_aspen'})

          end

        end

        -- Acacia Leaves
        if n == 'mymonths:leaves_acacia_blooms' then

          minetest.set_node(pos,{name = 'default:acacia_leaves'})

        end

        -- Acacia Leaves
        if n == 'mymonths:leaves_acacia_blooms' then

          minetest.set_node(pos,{name = 'default:acacia_leaves'})

        end

        -- Apples
        -- Nothing Happens

      end

      -- October
      if month == 10 then

        -- Default Leaves
        if day >= 1
        and day <=7 then

          if n == 'mymonths:sticks_default'
          or n == 'default:leaves'
          or n == 'mymonths:leaves_pale_green' then

            minetest.set_node(pos, {name = 'mymonths:leaves_orange'})

          end

        end

        if day >=8
        and day <=14 then

          if n == 'default:leaves'
          or n == 'mymonths:leaves_pale_green'
          or n == 'mymonths:leaves_orange' then

            minetest.set_node(pos, {name = 'mymonths:leaves_red'})

          end

        end

        -- Aspen Leaves
        if day >= 1
        and day <=7 then

          if n == 'mymonths:sticks_aspen'
          or n == 'mymonths:leaves_yellow_aspen'
          or n == 'mymonths:leaves_aspen_blooms'
          or n == 'default:aspen_leaves' then

            minetest.set_node(pos, {name = 'mymonths:leaves_orange_aspen'})

          end

        end

        if day >=8
        and day <=14 then

          if n == 'mymonths:sticks_aspen'
          or n == 'mymonths:leaves_yellow_aspen'
          or n == 'mymonths:leaves_orange_aspen'
          or n == 'mymonths:leaves_aspen_blooms'
          or n == 'default:aspen_leaves' then

            minetest.set_node(pos, {name = 'mymonths:leaves_red_aspen'})

          end

        end

        -- Acacia Leaves
        if n == 'mymonths:leaves_acacia_blooms' then

          minetest.set_node(pos,{name = 'default:acacia_leaves'})

        end

        -- Apples
        -- Nothing Happens

      end

      -- November
      if month == 11 then

        -- Default Leaves
        if n == 'default:leaves'
        or n == 'mymonths:leaves_blooms'
        or n == 'mymonths:leaves_pale_green'
        or n == 'mymonths:leaves_orange'
        or n == 'mymonths:leaves_red' then

          minetest.set_node(pos, {name = 'mymonths:sticks_default'})

        end

        -- Aspen Leaves
        if n == 'default:aspen_leaves'
        or n == 'mymonths:leaves_aspen_blooms'
        or n == 'mymonths:leaves_yellow_aspen'
        or n == 'mymonths:leaves_orange_aspen'
        or n == 'mymonths:leaves_red_aspen' then

          minetest.set_node(pos, {name = 'mymonths:sticks_aspen'})

        end

        -- Acacia Leaves
        if n == 'mymonths:leaves_acacia_blooms' then

          minetest.set_node(pos,{name = 'default:acacia_leaves'})

        end

        -- Apples
        -- Nothing Happens

      end

      -- December
      if month == 12 then

        -- Default Leaves
        if n == 'default:leaves'
        or n == 'mymonths:leaves_blooms'
        or n == 'mymonths:leaves_pale_green'
        or n == 'mymonths:leaves_orange'
        or n == 'mymonths:leaves_red' then

          minetest.set_node(pos, {name = 'mymonths:sticks_default'})

        end

        -- Aspen Leaves
        if n == 'default:aspen_leaves'
        or n == 'mymonths:leaves_aspen_blooms'
        or n == 'mymonths:leaves_yellow_aspen'
        or n == 'mymonths:leaves_orange_aspen'
        or n == 'mymonths:leaves_red_aspen' then

          minetest.set_node(pos, {name = 'mymonths:sticks_aspen'})

        end

        -- Acacia Leaves
        if n == 'mymonths:leaves_acacia_blooms' then

          minetest.set_node(pos,{name = 'default:acacia_leaves'})

        end

        -- Apples
        if n == 'default:apple' then

          minetest.set_node(pos,{name = 'mymonths:sticks_default'})

        end

      end

    end -- ends function
  })
