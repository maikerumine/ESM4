local PARAMTYPE_GROUP = {
	facedir = 0,
	wallmounted = 1,
	special = 42
}

local PARAMTYPE = {
	facedir = {index=PARAMTYPE_GROUP.facedir, mask=32},
	colorfacedir = {index=PARAMTYPE_GROUP.facedir, mask=32},
	wallmounted = {index=PARAMTYPE_GROUP.wallmounted, mask=8},
	colorwallmounted = {index=PARAMTYPE_GROUP.wallmounted, mask=8},
	special_slab = {index=PARAMTYPE_GROUP.special, mask=32}
}

return PARAMTYPE, PARAMTYPE_GROUP
