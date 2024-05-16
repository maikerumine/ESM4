--Extreme Survival created by maikerumine
-- Minetest 0.4.13 mod: "Extreme Survival"
-- namespace: es
--https://github.com/maikerumine

--License:
--~~~~~~~~
--Code:
--(c) Copyright 2015 maikerumine; modified zlib-License
--see "LICENSE.txt" for details.

--Media(if not stated differently):
--(c) Copyright (2014-2015) maikerumine; CC-BY-SA 3.0


-- See README.txt for licensing and other information.
--maikerumine


es = {}

--START APPLESAPLING
-- Just reciepe to create starter sapling
-- bush sapling, as of minetest 4.15 version
--======================================
minetest.register_craft({
	output = "default:sapling",
	recipe = {
		{"", "", ""},
		{"", "default:apple", ""},
		{"", "default:dirt", ""},
	},
})

-- sometimes randomly give out different sapling
minetest.register_on_craft(
    function(itemstack, player, old_craft_grid, craft_inv)

        if itemstack and itemstack:get_name() == "default:sapling" then
            local lottery = math.random(1, 245)
            if lottery == 241 then
                return ItemStack('default:sapling')
            elseif lottery == 242 then
                return ItemStack('default:sapling')
            elseif lottery == 243 then
                return ItemStack('default:sapling')
            elseif lottery == 244 then
                return ItemStack('default:sapling')
            elseif lottery > 200 then
                return ItemStack('default:sapling')
            elseif lottery > 170 then
                return ItemStack('default:sapling')
            end
        end
        return nil  --do not change craft
    end
)
--END APPLESAPLING