minetest.register_node("nsspf:boletus_edulis", {
	description = "Boletus edulis",
	drawtype = "mesh",
	mesh = "boletus.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	tiles = {"boletus_edulis.png"},
	groups = {snappy=3},
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="air"})
	end,
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	on_use = minetest.item_eat(2),
	selection_box = {
      type = 'fixed',
      fixed = {-0.28, -0.49, -0.28, 0.28, 0.06, 0.28}, -- Right, Bottom, Back, Left, Top, Front
      },
    collision_box = {
      type = 'fixed',
      fixed = {-0.28, -0.49, -0.28, 0.28, 0.06, 0.28}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:cooked_boletus_edulis", {
	description = "Cooked Boletus edulis",
	drawtype = "mesh",
	mesh = "boletus.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	tiles = {"cooked_boletus_edulis.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(16),
	selection_box = {
      type = 'fixed',
      fixed = {-0.28, -0.49, -0.28, 0.28, 0.06, 0.28}, -- Right, Bottom, Back, Left, Top, Front
      },
	on_place = function(itemstack, placer, pointed_thing)
  		return
  	end,
    collision_box = {
      type = 'fixed',
      fixed = {-0.28, -0.49, -0.28, 0.28, 0.06, 0.28}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:boletus_edulis_fungusdirt", {
	description = "Boletus edulis Dirt",
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="default:dirt"})
	end,
	tiles = {"default_dirt.png"},
	drop = {
         max_items = 1,
         items = {
			{
                 items = {'node "nsspf:boletus_edulis_spores" 1'},
                 rarity = 16
             },
		}
	},
	groups = {crumbly = 3, not_in_creative_inventory =1},
})

minetest.register_node("nsspf:cantharellus_cibarius", {
	description = "Cantharellus cibarius",
	drawtype = "mesh",
	mesh = "cantharellus_cibarius.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="air"})
	end,
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	tiles = {"cantharellus_cibarius.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(1),
	selection_box = {
      type = 'fixed',
      fixed = {-0.28, -0.49, -0.28, 0.28, -0.26, 0.28}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.28, -0.49, -0.28, 0.28, -0.26, 0.28}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:cooked_cantharellus_cibarius", {
	description = "Cooked Cantharellus cibarius",
	drawtype = "mesh",
	mesh = "cantharellus_cibarius.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	tiles = {"cooked_cantharellus_cibarius.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(8),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.28, -0.49, -0.28, 0.28, -0.26, 0.28}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.28, -0.49, -0.28, 0.28, -0.26, 0.28}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:cantharellus_cibarius_fungusdirt", {
	description = "Cantharellus cibarius Dirt",
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="default:dirt"})
	end,
	tiles = {"default_dirt.png"},
	drop = {
         max_items = 1,
         items = {
			{
                 items = {'node "nsspf:cantharellus_cibarius_spores" 1'},
                 rarity = 12
             },
		}
	},
	groups = {crumbly = 3, not_in_creative_inventory =1},
})

minetest.register_node("nsspf:suillus_grevillei", {
	description = "Suillus grevillei",
	drawtype = "mesh",
	mesh = "suillus_grevillei.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="air"})
	end,
	tiles = {"suillus_grevillei.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(1),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.28, -0.49, -0.28, 0.28, 0.06, 0.28}, -- Right, Bottom, Back, Left, Top, Front
      },
    collision_box = {
      type = 'fixed',
      fixed = {-0.28, -0.49, -0.28, 0.28, 0.06, 0.28}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:cooked_suillus_grevillei", {
	description = "Cooked Suillus grevillei",
	drawtype = "mesh",
	mesh = "suillus_grevillei.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	tiles = {"cooked_suillus_grevillei.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(10),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.28, -0.49, -0.28, 0.28, 0.06, 0.28}, -- Right, Bottom, Back, Left, Top, Front
      },
    collision_box = {
      type = 'fixed',
      fixed = {-0.28, -0.49, -0.28, 0.28, 0.06, 0.28}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:suillus_grevillei_fungusdirt", {
	description = "Suillus grevillei Dirt",
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="default:dirt"})
	end,
	tiles = {"default_dirt.png"},
	drop = {
         max_items = 1,
         items = {
			{
                 items = {'node "nsspf:suillus_grevillei_spores" 1'},
                 rarity = 8
             },
		}
	},
	groups = {crumbly = 3, not_in_creative_inventory =1},
})

minetest.register_node("nsspf:morchella_conica", {
	description = "Morchella conica",
	drawtype = "mesh",
	mesh = "morchella_conica.b3d",
    paramtype = 'light',
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="air"})
	end,
    paramtype2 = 'facedir',
	tiles = {"morchella_conica.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(2),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.15, -0.49, -0.15, 0.15, 0.06, 0.15}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.15, -0.49, -0.15, 0.15, 0.06, 0.15}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:cooked_morchella_conica", {
	description = "Cooked Morchella conica",
	drawtype = "mesh",
	mesh = "morchella_conica.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	tiles = {"cooked_morchella_conica.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(8),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.15, -0.49, -0.15, 0.15, 0.06, 0.15}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.15, -0.49, -0.15, 0.15, 0.06, 0.15}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:morchella_conica_fungusdirt", {
	description = "Morchella conica Dirt",
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="default:dirt"})
	end,
	tiles = {"default_dirt.png"},
	drop = {
         max_items = 1,
         items = {
			{
                 items = {'node "nsspf:morchella_conica_spores" 1'},
                 rarity = 12
             },
		}
	},
	groups = {crumbly = 3, not_in_creative_inventory =1},
})

minetest.register_node("nsspf:russula_xerampelina", {
	description = "Russula xerampelina",
	drawtype = "mesh",
	mesh = "russula.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="air"})
	end,
	tiles = {"russula_xerampelina.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(-8),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.28, -0.49, -0.28, 0.28, 0.06, 0.28}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.28, -0.49, -0.28, 0.28, 0.06, 0.28}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:cooked_russula_xerampelina", {
	description = "Cooked Russula xerampelina",
	drawtype = "mesh",
	mesh = "russula.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	tiles = {"cooked_russula_xerampelina.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(6),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.28, -0.49, -0.28, 0.28, 0.06, 0.28}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.28, -0.49, -0.28, 0.28, 0.06, 0.28}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:russula_xerampelina_fungusdirt", {
	description = "Russula xerampelina Dirt",
	tiles = {"default_dirt.png"},
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="default:dirt"})
	end,
	drop = {
         max_items = 1,
         items = {
			{
                 items = {'node "nsspf:russula_xerampelina_spores" 1'},
                 rarity = 12
             },
		}
	},
	groups = {crumbly = 3, not_in_creative_inventory =1},
})

minetest.register_node("nsspf:boletus_pinophilus", {
	description = "Boletus pinophilus",
	drawtype = "mesh",
	mesh = "boletus.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="air"})
	end,
	tiles = {"boletus_pinophilus.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(2),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.28, -0.49, -0.28, 0.28, 0.06, 0.28}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.28, -0.49, -0.28, 0.28, 0.06, 0.28}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:cooked_boletus_pinophilus", {
	description = "Cooked Boletus pinophilus",
	drawtype = "mesh",
	mesh = "boletus.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="air"})
	end,
	tiles = {"cooked_boletus_pinophilus.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(16),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.28, -0.49, -0.28, 0.28, 0.06, 0.28}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.28, -0.49, -0.28, 0.28, 0.06, 0.28}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:boletus_pinophilus_fungusdirt", {
	description = "Boletus pinophilus Dirt",
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="default:dirt"})
	end,
	tiles = {"default_dirt.png"},
	drop = {
         max_items = 1,
         items = {
			{
                 items = {'node "nsspf:boletus_pinophilus_spores" 1'},
                 rarity = 16
             },
		}
	},
	groups = {crumbly = 3, not_in_creative_inventory =1},
})

minetest.register_node("nsspf:boletus_satanas", {
	description = "Boletus satanas",
	drawtype = "mesh",
	mesh = "boletus.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	tiles = {"boletus_satanas.png"},
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="air"})
	end,
	groups = {snappy=3},
	on_use = minetest.item_eat(-20),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.28, -0.49, -0.28, 0.28, 0.06, 0.28}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.28, -0.49, -0.28, 0.28, 0.06, 0.28}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:cooked_boletus_satanas", {
	description = "Cooked Boletus satanas",
	drawtype = "mesh",
	mesh = "boletus.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	tiles = {"cooked_boletus_satanas.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(-16),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.28, -0.49, -0.28, 0.28, 0.06, 0.28}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.28, -0.49, -0.28, 0.28, 0.06, 0.28}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:boletus_satanas_fungusdirt", {
	description = "Boletus satanas Dirt",
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="default:dirt"})
	end,
	tiles = {"default_dirt.png"},
	drop = {
         max_items = 1,
         items = {
			{
                 items = {'node "nsspf:boletus_satanas_spores" 1'},
                 rarity = 18
             },
		}
	},
	groups = {crumbly = 3, not_in_creative_inventory =1},
})

minetest.register_node("nsspf:amanita_phalloides", {
	description = "Amanita phalloides",
	drawtype = "mesh",
	mesh = "amanita.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="air"})
	end,
	tiles = {"amanita_phalloides.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(-20),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.05, -0.49, -0.05, 0.05, 0.2, 0.05}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.05, -0.49, -0.05, 0.05, 0.2, 0.05}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:cooked_amanita_phalloides", {
	description = "Cooked Amanita phalloides",
	drawtype = "mesh",
	mesh = "amanita.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	tiles = {"cooked_amanita_phalloides.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(-20),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.05, -0.49, -0.05, 0.05, 0.2, 0.05}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.05, -0.49, -0.05, 0.05, 0.2, 0.05}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:amanita_muscaria_fungusdirt", {
	description = "Amanita muscaria Dirt",
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="default:dirt"})
	end,
	tiles = {"default_dirt.png"},
	drop = {
         max_items = 1,
         items = {
			{
                 items = {'node "nsspf:amanita_muscaria_spores" 1'},
                 rarity = 16
             },
		}
	},
	groups = {crumbly = 3, not_in_creative_inventory =1},
})

minetest.register_node("nsspf:amanita_muscaria", {
	description = "Amanita muscaria",
	drawtype = "mesh",
	mesh = "amanita.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	tiles = {"amanita_muscaria.png"},
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="air"})
	end,
	groups = {snappy=3},
	on_use = minetest.item_eat(-20),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.05, -0.49, -0.05, 0.05, 0.2, 0.05}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.05, -0.49, -0.05, 0.05, 0.2, 0.05}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:cooked_amanita_muscaria", {
	description = "Cooked Amanita muscaria",
	drawtype = "mesh",
	mesh = "amanita.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	tiles = {"cooked_amanita_muscaria.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(-18),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.05, -0.49, -0.05, 0.05, 0.2, 0.05}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.05, -0.49, -0.05, 0.05, 0.2, 0.05}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:amanita_phalloides_fungusdirt", {
	description = "Amanita phalloides Dirt",
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="default:dirt"})
	end,
	tiles = {"default_dirt.png"},
	drop = {
         max_items = 1,
         items = {
			{
                 items = {'node "nsspf:amanita_phalloides_spores" 1'},
                 rarity = 18
             },
		}
	},
	groups = {crumbly = 3, not_in_creative_inventory =1},
})

minetest.register_node("nsspf:tuber_melanosporum_fungusdirt", {
	description = "Tuber melanosporum Dirt",
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="default:dirt"})
	end,
	tiles = {"default_dirt.png"},
	drop = {
         max_items = 1,
         items = {
			{
                 items = {'node "nsspf:tuber_melanosporum_spores" 1'},
                 rarity = 16
             },
		}
	},
	groups = {crumbly = 3, not_in_creative_inventory =1},
})

minetest.register_node("nsspf:tuber_magnatum_pico_fungusdirt", {
	description = "Tuber magnatum pico Dirt",
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="default:dirt"})
	end,
	tiles = {"default_dirt.png"},
	drop = {
         max_items = 1,
         items = {
			{
                 items = {'node "nsspf:tuber_magnatum_pico_spores" 1'},
                 rarity = 30
             },
		}
	},
	groups = {crumbly = 3, not_in_creative_inventory =1},
})

minetest.register_node("nsspf:tuber_borchii_fungusdirt", {
	description = "Tuber borchii Dirt",
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="default:dirt"})
	end,
	tiles = {"default_dirt.png"},
	drop = {
         max_items = 1,
         items = {
			{
                 items = {'node "nsspf:tuber_borchii_spores" 1'},
                 rarity = 12
             },
		}
	},
	groups = {crumbly = 3, not_in_creative_inventory =1},
})

minetest.register_node("nsspf:terfezia_arenaria_fungusdirt", {
	description = "Terfezia arenaria Dirt",
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="default:dirt"})
	end,
	tiles = {"default_dirt.png"},
	drop = {
         max_items = 1,
         items = {
			{
                 items = {'node "nsspf:terfezia_arenaria_spores" 1'},
                 rarity = 8
             },
		}
	},
	groups = {crumbly = 3, not_in_creative_inventory =1},
})

--Saprotrophic fungi that live on trees

minetest.register_node("nsspf:fistulina_hepatica", {
	description = "Fistulina hepatica",
	drawtype = "mesh",
	mesh = "fistulina_hepatica.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="air"})
	end,
	tiles = {"fistulina_hepatica.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(4),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.5, -0.1, -0.5, 0.5, 0.1, 0.5}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.5, -0.1, -0.5, 0.5, 0.1, 0.5}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:cooked_fistulina_hepatica", {
	description = "Cooked Fistulina hepatica",
	drawtype = "mesh",
	mesh = "fistulina_hepatica.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	tiles = {"cooked_fistulina_hepatica.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(14),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.5, -0.1, -0.5, 0.5, 0.1, 0.5}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.5, -0.1, -0.5, 0.5, 0.1, 0.5}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:armillaria_mellea", {
	description = "Armillaria mellea",
	drawtype = "mesh",
	mesh = "armillaria_mellea.b3d",
    paramtype = 'light',
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="air"})
	end,
    paramtype2 = 'facedir',
	tiles = {"armillaria_mellea.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(2),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.2, 0, 0.2, 0.2, 0.4, 0.5}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.2, 0, 0.2, 0.2, 0.4, 0.5}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:fomes_fomentarius", {
	description = "Fomes fomentarius",
	drawtype = "mesh",
	mesh = "fomes_fomentarius.b3d",
    paramtype = 'light',
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="air"})
	end,
    paramtype2 = 'facedir',
	tiles = {"fomes_fomentarius.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(-1),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.2, 0, 0.2, 0.2, 0.4, 0.5}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.2, 0, 0.2, 0.2, 0.4, 0.5}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:cooked_armillaria_mellea", {
	description = "Cooked Armillaria mellea",
	drawtype = "mesh",
	mesh = "armillaria_mellea.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	tiles = {"cooked_armillaria_mellea.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(12),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.2, 0, 0.2, 0.2, 0.4, 0.5}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.2, 0, 0.2, 0.2, 0.4, 0.5}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:mycena_chlorophos", {
	description = "Mycena chlorophos",
	drawtype = "mesh",
	mesh = "mycena_chlorophos.b3d",
    paramtype = 'light',
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="air"})
	end,
    paramtype2 = 'facedir',
	tiles = {"mycena_chlorophos.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(-2),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.2, -0.4, 0.2, 0.2, 0.4, 0.5}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.2, -0.4, 0.2, 0.2, 0.4, 0.5}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:cooked_mycena_chlorophos", {
	description = "Cooked Mycena chlorophos",
	drawtype = "mesh",
	mesh = "mycena_chlorophos.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	tiles = {"cooked_mycena_chlorophos.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(-4),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.2, -0.4, 0.2, 0.2, 0.4, 0.5}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.2, -0.4, 0.2, 0.2, 0.4, 0.5}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:mycena_chlorophos_light", {
	description = "Nocturn Mycena chlorophos",
	drawtype = "mesh",
	mesh = "mycena_chlorophos.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="air"})
	end,
	tiles = {"mycena_chlorophos_light.png"},
	groups = {snappy=3},
	light_source = 8,
	on_use = minetest.item_eat(-2),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.2, -0.4, 0.2, 0.2, 0.4, 0.5}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.2, -0.4, 0.2, 0.2, 0.4, 0.5}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:panellus_pusillus", {
	description = "Panellus pusillus",
	drawtype = "mesh",
	mesh = "panellus_pusillus.b3d",
    paramtype = 'light',
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="air"})
	end,
    paramtype2 = 'facedir',
	tiles = {"panellus_pusillus.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(-2),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.2, -0.4, 0.2, 0.2, 0.4, 0.5}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.2, -0.4, 0.2, 0.2, 0.4, 0.5}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:cooked_panellus_pusillus", {
	description = "Cooked Panellus pusillus",
	drawtype = "mesh",
	mesh = "panellus_pusillus.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	tiles = {"cooked_panellus_pusillus.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(-4),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.2, -0.4, 0.2, 0.2, 0.4, 0.5}, -- Right, Bottom, Back, Left, Top, Front
      },
    collision_box = {
      type = 'fixed',
      fixed = {-0.2, -0.4, 0.2, 0.2, 0.4, 0.5}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:panellus_pusillus_light", {
	description = "Nocturn Panellus pusillus",
	drawtype = "mesh",
	mesh = "panellus_pusillus.b3d",
    paramtype = 'light',
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="air"})
	end,
    paramtype2 = 'facedir',
	tiles = {"panellus_pusillus_light.png"},
	groups = {snappy=3},
	light_source = 8,
	on_use = minetest.item_eat(-2),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.2, -0.4, 0.2, 0.2, 0.4, 0.5}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.2, -0.4, 0.2, 0.2, 0.4, 0.5}, -- Right, Bottom, Back, Left, Top, Front
      },
})

--Saprotrophic fungi that grow on the ground

minetest.register_node("nsspf:macrolepiota_procera", {
	description = "Macrolepiota procera",
	drawtype = "mesh",
	mesh = "macrolepiota_procera.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	tiles = {"macrolepiota_procera.png"},
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="air"})
	end,
	groups = {snappy=3},
	on_use = minetest.item_eat(3),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.05, -0.49, -0.05, 0.05, 0.2, 0.05}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.05, -0.49, -0.05, 0.05, 0.2, 0.05}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:cooked_macrolepiota_procera", {
	description = "Cooked Macrolepiota procera",
	drawtype = "mesh",
	mesh = "macrolepiota_procera.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	tiles = {"cooked_macrolepiota_procera.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(16),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.05, -0.49, -0.05, 0.05, 0.2, 0.05}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.05, -0.49, -0.05, 0.05, 0.2, 0.05}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:macrolepiota_procera_fungusdirt", {
	description = "Macrolepiota procera Dirt",
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="default:dirt"})
	end,
	tiles = {"default_dirt.png"},
	drop = {
         max_items = 1,
         items = {
			{
                 items = {'node "nsspf:macrolepiota_procera_spores" 1'},
                 rarity = 12
             },
		}
	},
	groups = {crumbly = 3, not_in_creative_inventory =1},
})

minetest.register_node("nsspf:psilocybe_cubensis", {
	description = "Psilocybe cubensis",
	drawtype = "mesh",
	mesh = "psilocybe_cubensis.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	tiles = {"psilocybe_cubensis.png"},
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="air"})
	end,
	groups = {snappy=3},
	on_use = minetest.item_eat(-7),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.1, -0.49, -0.1, 0.1, -0.1, 0.1}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.1, -0.49, -0.1, 0.1, -0.1, 0.1}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:cooked_psilocybe_cubensis", {
	description = "Cooked Psilocybe cubensis",
	drawtype = "mesh",
	mesh = "psilocybe_cubensis.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	tiles = {"cooked_psilocybe_cubensis.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(2),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.1, -0.49, -0.1, 0.1, -0.1, 0.1}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.1, -0.49, -0.1, 0.1, -0.1, 0.1}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:psilocybe_cubensis_fungusdirt", {
	description = "Psilocybe cubensis Dirt",
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="default:dirt"})
	end,
	tiles = {"default_dirt.png"},
	drop = {
         max_items = 1,
         items = {
			{
                 items = {'node "nsspf:psilocybe_cubensis_spores" 1'},
                 rarity = 16
             },
		}
	},
	groups = {crumbly = 3, not_in_creative_inventory =1},
})

minetest.register_node("nsspf:lycoperdon_pyriforme", {
	description = "Lycoperdon pyriforme",
	drawtype = "mesh",
	mesh = "lycoperdon_pyriforme.b3d",
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="air"})
	end,
    paramtype = 'light',
    paramtype2 = 'facedir',
	tiles = {"lycoperdon_pyriforme.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(8),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.3, -0.49, -0.3, 0.3, -0.3, 0.3}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.3, -0.49, -0.3, 0.3, -0.3, 0.3}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:cooked_lycoperdon_pyriforme", {
	description = "Cooked Lycoperdon pyriforme",
	drawtype = "mesh",
	mesh = "lycoperdon_pyriforme.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	tiles = {"cooked_lycoperdon_pyriforme.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(12),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.3, -0.49, -0.3, 0.3, -0.3, 0.3}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.3, -0.49, -0.3, 0.3, -0.3, 0.3}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:lycoperdon_pyriforme_fungusdirt", {
	description = "Lycoperdon pyriforme Dirt",
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="default:dirt"})
	end,
	tiles = {"default_dirt.png"},
	drop = {
         max_items = 1,
         items = {
			{
                 items = {'node "nsspf:lycoperdon_pyriforme_spores" 1'},
                 rarity = 4
             },
		}
	},
	groups = {crumbly = 3, not_in_creative_inventory =1},
})

minetest.register_node("nsspf:gyromitra_esculenta", {
	description = "Gyromitra esculenta",
	drawtype = "mesh",
	mesh = "gyromitra_esculenta.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="air"})
	end,
	tiles = {"gyromitra_esculenta.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(-20),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.05, -0.49, -0.05, 0.05, -0.2, 0.05}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.05, -0.49, -0.05, 0.05, -0.2, 0.05}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:cooked_gyromitra_esculenta", {
	description = "Cooked Gyromitra esculenta",
	drawtype = "mesh",
	mesh = "gyromitra_esculenta.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	tiles = {"cooked_gyromitra_esculenta.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(-16),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.05, -0.49, -0.05, 0.05, -0.2, 0.05}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.05, -0.49, -0.05, 0.05, -0.2, 0.05}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:gyromitra_esculenta_fungusdirt", {
	description = "Gyromitra esculenta Dirt",
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="default:dirt"})
	end,
	tiles = {"default_dirt.png"},
	drop = {
         max_items = 1,
         items = {
			{
                 items = {'node "nsspf:gyromitra_esculenta_spores" 1'},
                 rarity = 18
             },
		}
	},
	groups = {crumbly = 3, not_in_creative_inventory =1},
})

minetest.register_node("nsspf:coprinus_atramentarius", {
	description = "Coprinus atramentarius",
	drawtype = "mesh",
	mesh = "coprinus_atramentarius.b3d",
    paramtype = 'light',
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="air"})
	end,
    paramtype2 = 'facedir',
	tiles = {"coprinus_atramentarius.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(-13),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.05, -0.49, -0.05, 0.05, 0, 0.05}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.05, -0.49, -0.05, 0.05, 0, 0.05}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:cooked_coprinus_atramentarius", {
	description = "Cooked Coprinus atramentarius",
	drawtype = "mesh",
	mesh = "coprinus_atramentarius.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	tiles = {"cooked_coprinus_atramentarius.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(6),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.05, -0.49, -0.05, 0.05, 0, 0.05}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.05, -0.49, -0.05, 0.05, 0, 0.05}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:coprinus_atramentarius_fungusdirt", {
	description = "Coprinus atramentarius Dirt",
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="default:dirt"})
	end,
	tiles = {"default_dirt.png"},
	drop = {
         max_items = 1,
         items = {
			{
                 items = {'node "nsspf:coprinus_atramentarius_spores" 1'},
                 rarity = 20
             },
		}
	},
	groups = {crumbly = 3, not_in_creative_inventory =1},
})

--jungle fungi

minetest.register_node("nsspf:lentinus_strigosus", {
	description = "Lentinus strigosus",
	drawtype = "mesh",
	mesh = "lentinus_strigosus.b3d",
    paramtype = 'light',
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="air"})
	end,
    paramtype2 = 'facedir',
	tiles = {"lentinus_strigosus.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(1),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.05, -0.49, -0.05, 0.05, 0, 0.05}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.05, -0.49, -0.05, 0.05, 0, 0.05}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:cooked_lentinus_strigosus", {
	description = "Cooked Lentinus strigosus",
	drawtype = "mesh",
	mesh = "lentinus_strigosus.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	tiles = {"cooked_lentinus_strigosus.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(16),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.05, -0.49, -0.05, 0.05, 0, 0.05}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.05, -0.49, -0.05, 0.05, 0, 0.05}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:ganoderma_lucidum", {
	description = "Ganoderma lucidum",
	drawtype = "mesh",
	mesh = "fistulina_hepatica.b3d",
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="air"})
	end,
    paramtype = 'light',
    paramtype2 = 'facedir',
	tiles = {"ganoderma_lucidum.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(14),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.5, -0.1, -0.5, 0.5, 0.1, 0.5}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.5, -0.1, -0.5, 0.5, 0.1, 0.5}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:cooked_ganoderma_lucidum", {
	description = "Cooked Ganoderma lucidum",
	drawtype = "mesh",
	mesh = "fistulina_hepatica.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	tiles = {"cooked_ganoderma_lucidum.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(4),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.5, -0.1, -0.5, 0.5, 0.1, 0.5}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.5, -0.1, -0.5, 0.5, 0.1, 0.5}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:marasmius_haematocephalus", {
	description = "Marasmius haematocephalus",
	drawtype = "mesh",
	mesh = "marasmius_haematocephalus.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="air"})
	end,
	tiles = {"marasmius_haematocephalus.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(-1),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.1, -0.49, -0.1, 0.1, -0.1, 0.1}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.1, -0.49, -0.1, 0.1, -0.1, 0.1}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:cooked_marasmius_haematocephalus", {
	description = "Cooked Marasmius haematocephalus",
	drawtype = "mesh",
	mesh = "marasmius_haematocephalus.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	tiles = {"cooked_marasmius_haematocephalus.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(-19),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.1, -0.49, -0.1, 0.1, -0.1, 0.1}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.1, -0.49, -0.1, 0.1, -0.1, 0.1}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:clitocybula_azurea", {
	description = "Clitocybula_azurea",
	drawtype = "mesh",
	mesh = "clitocybula_azurea.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="air"})
	end,
	tiles = {"clitocybula_azurea.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(-6),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.2, -0.4, 0.2, 0.2, 0.4, 0.5}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.2, -0.4, 0.2, 0.2, 0.4, 0.5}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:cooked_clitocybula_azurea", {
	description = "Cooked Clitocybula_azurea",
	drawtype = "mesh",
	mesh = "clitocybula_azurea.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	tiles = {"cooked_clitocybula_azurea.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(10),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.2, -0.4, 0.2, 0.2, 0.4, 0.5}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.2, -0.4, 0.2, 0.2, 0.4, 0.5}, -- Right, Bottom, Back, Left, Top, Front
      },
})

--snowbank fungus

minetest.register_node("nsspf:clitocybe_glacialis", {
	description = "Clitocybe glacialis",
	drawtype = "mesh",
	mesh = "clitocybe_glacialis.b3d",
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="air"})
	end,
    paramtype = 'light',
    paramtype2 = 'facedir',
	tiles = {"clitocybe_glacialis.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(1),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.05, -0.49, -0.05, 0.05, 0, 0.05}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.05, -0.49, -0.05, 0.05, 0, 0.05}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:cooked_clitocybe_glacialis", {
	description = "Cooked Clitocybe glacialis",
	drawtype = "mesh",
	mesh = "clitocybe_glacialis.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	tiles = {"cooked_clitocybe_glacialis.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(10),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.05, -0.49, -0.05, 0.05, 0, 0.05}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.05, -0.49, -0.05, 0.05, 0, 0.05}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:clitocybe_glacialis_fungusdirt", {
	description = "Clitocybe glacialis Dirt",
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="default:dirt"})
	end,
	tiles = {"default_dirt.png"},
	drop = {
         max_items = 1,
         items = {
			{
                 items = {'node "nsspf:clitocybe_glacialis_spores" 1'},
                 rarity = 16
             },
		}
	},
	groups = {crumbly = 3, not_in_creative_inventory =1},
})

minetest.register_node("nsspf:hygrophorus_goetzii", {
	description = "Hygrophorus goetzii",
	drawtype = "mesh",
	mesh = "hygrophorus_goetzii.b3d",
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="air"})
	end,
    paramtype = 'light',
    paramtype2 = 'facedir',
	tiles = {"hygrophorus_goetzii.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(-4),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.05, -0.49, -0.05, 0.05, 0, 0.05}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.05, -0.49, -0.05, 0.05, 0, 0.05}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:cooked_hygrophorus_goetzii", {
	description = "Cooked Hygrophorus goetzii",
	drawtype = "mesh",
	mesh = "hygrophorus_goetzii.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	tiles = {"cooked_hygrophorus_goetzii.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(8),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.05, -0.49, -0.05, 0.05, 0, 0.05}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.05, -0.49, -0.05, 0.05, 0, 0.05}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:hygrophorus_goetzii_fungusdirt", {
	description = "Hygrophorus goetzii Dirt",
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="default:dirt"})
	end,
	tiles = {"default_dirt.png"},
	drop = {
         max_items = 1,
         items = {
			{
                 items = {'node "nsspf:hygrophorus_goetzii_spores" 1'},
                 rarity = 14
             },
		}
	},
	groups = {crumbly = 3, not_in_creative_inventory =1},
})

minetest.register_node("nsspf:plectania_nannfeldtii", {
	description = "Plectania nannfeldtii",
	drawtype = "mesh",
	mesh = "plectania_nannfeldtii.b3d",
    paramtype = 'light',
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="air"})
	end,
    paramtype2 = 'facedir',
	tiles = {"plectania_nannfeldtii.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(-20),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.3, -0.49, -0.3, 0.3, -0.3, 0.3}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.3, -0.49, -0.3, 0.3, -0.3, 0.3}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:cooked_plectania_nannfeldtii", {
	description = "Cooked Plectania nannfeldtii",
	drawtype = "mesh",
	mesh = "plectania_nannfeldtii.b3d",
    paramtype = 'light',
    paramtype2 = 'facedir',
	tiles = {"cooked_plectania_nannfeldtii.png"},
	groups = {snappy=3},
	on_use = minetest.item_eat(-20),
	on_place = function(itemstack, placer, pointed_thing)
		return
	end,
	selection_box = {
      type = 'fixed',
      fixed = {-0.3, -0.49, -0.3, 0.3, -0.3, 0.3}, -- Right, Bottom, Back, Left, Top, Front
      },
   collision_box = {
      type = 'fixed',
      fixed = {-0.3, -0.49, -0.3, 0.3, -0.3, 0.3}, -- Right, Bottom, Back, Left, Top, Front
      },
})

minetest.register_node("nsspf:plectania_nannfeldtii_fungusdirt", {
	description = "Plectania nannfeldtii Dirt",
	on_timer = function(pos, elapsed)
		minetest.set_node(pos, {name="default:dirt"})
	end,
	tiles = {"default_dirt.png"},
	drop = {
         max_items = 1,
         items = {
			{
                 items = {'node "nsspf:plectania_nannfeldtii_spores" 1'},
                 rarity = 20
             },
		}
	},
	groups = {crumbly = 3, not_in_creative_inventory =1},
})

function nsspf_register_recipes (name)

minetest.register_craft({
	type = "cooking",
	output = "nsspf:cooked_"..name,
	recipe = "nsspf:"..name,
	cooktime = 10,
})

end

nsspf_register_recipes ('boletus_edulis')
nsspf_register_recipes ('boletus_pinophilus')
nsspf_register_recipes ('boletus_satanas')
nsspf_register_recipes ('suillus_grevillei')
nsspf_register_recipes ('morchella_conica')
nsspf_register_recipes ('amanita_phalloides')
nsspf_register_recipes ('amanita_muscaria')
nsspf_register_recipes ('cantharellus_cibarius')
nsspf_register_recipes ('russula_xerampelina')
nsspf_register_recipes ('fistulina_hepatica')
nsspf_register_recipes ('armillaria_mellea')
nsspf_register_recipes ('mycena_chlorophos')
nsspf_register_recipes ('panellus_pusillus')
nsspf_register_recipes ('macrolepiota_procera')
nsspf_register_recipes ('psilocybe_cubensis')
nsspf_register_recipes ('lycoperdon_pyriforme')
nsspf_register_recipes ('coprinus_atramentarius')
nsspf_register_recipes ('gyromitra_esculenta')
nsspf_register_recipes ('clitocybe_glacialis')
nsspf_register_recipes ('plectania_nannfeldtii')
nsspf_register_recipes ('hygrophorus_goetzii')
nsspf_register_recipes ('lentinus_strigosus')
nsspf_register_recipes ('ganoderma_lucidum')
nsspf_register_recipes ('marasmius_haematocephalus')
nsspf_register_recipes ('clitocybula_azurea')


	minetest.register_craft({
		output = 'nsspf:amadou',
		type = "shapeless",
		recipe = {'nsspf:fomes_fomentarius'},
	})

minetest.register_craftitem("nsspf:amadou", {
	description = descr,
	image = "amadou.png",
})

minetest.register_craft({
	type = "fuel",
	recipe = "nsspf:amadou",
	burntime = 120,
})

if minetest.get_modpath("nssm") then

	minetest.register_craftitem("nsspf:long_lasting_amadou", {
		description = 'Long Lasting Amadou',
		image = "long_lasting_amadou.png",
	})

	minetest.register_craft({
		output = 'nsspf:long_lasting_amadou',
		type = "shapeless",
		recipe = {'nssm:black_powder', 'nsspf:amadou'},
	})

	minetest.register_craft({
		type = "fuel",
		recipe = "nsspf:long_lasting_amadou",
		burntime = 400,
	})

end

if minetest.get_modpath("tnt") then

	minetest.register_craftitem("nsspf:lasting_amadou", {
		description = 'Lasting amadou',
		image = "lasting_amadou.png",
	})

	minetest.register_craft({
		output = 'nsspf:lasting_amadou',
		type = "shapeless",
		recipe = {'tnt:gunpowder', 'nsspf:amadou'},
	})

	minetest.register_craft({
		type = "fuel",
		recipe = "nsspf:lasting_amadou",
		burntime = 300,
	})

end