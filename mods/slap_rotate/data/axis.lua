local AXIS = {
    x = 0,
    y = 1,
    z = 2
}

local LOOK_DIR = {
	[0] = {axis_index=AXIS.z, polarity=1, perpendicular_axis_index=AXIS.x},
	[1] = {axis_index=AXIS.x, polarity=-1, perpendicular_axis_index=AXIS.z},
	[2] = {axis_index=AXIS.z, polarity=-1, perpendicular_axis_index=AXIS.x},
	[3] = {axis_index=AXIS.x, polarity=1, perpendicular_axis_index=AXIS.z},
	y = {axis_index=AXIS.y, polarity=-1, perpendicular_axis_index=AXIS.y}, --[[special case]]--
}

return AXIS, LOOK_DIR
