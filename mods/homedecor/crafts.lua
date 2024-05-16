-- Crafting for homedecor mod (includes folding) by Vanessa Ezekowitz
--Simplified by maikerumine
-- Mostly my own code; overall template borrowed from game default

local S = homedecor.gettext

local bookcolors = {
	"red",
	"green",
	"blue",
	"violet",
	"grey",
	"brown"
}

for _, color in ipairs(bookcolors) do
	minetest.register_craft({
		type = "shapeless",
		output = "homedecor:book_"..color,
		recipe = {
			"dye:"..color,
			"default:book"
		},
	})
end
