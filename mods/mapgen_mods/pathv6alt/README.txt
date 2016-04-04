pathv6alt 0.3.0 by paramat
For Minetest 0.4.12 and later
Depends default stairs
Licenses: Code LGPLv2.1, textures CC BY-SA 3.0

Use with mapgen v6. Creates a worldwide network of paths, bridges and occasional tunnels.
Compatible with custom mapgen v6 noise parameters, you will need to enter your custom noise parameters 'terrain base' 'terrain higher' 'height select' 'mud' into the mod code.
By default will generate paths up to y = 127, raise parameter YMAXMINP for a higher limit, you will need to tune HSAMP to avoid paths becoming too steep.

Mgv6 noise parameters are used to calculate a path surface that smoothly conforms to the land without getting too steep to climb. Where the path leaves the ground it becomes a wooden bridge with random columns that reach to stone below.
There is an (enabled by default) option of using stair nodes to create walkable (no jumping) and drivable paths.
There are 4 path networks with 'spreads' of 1024, 2048, 4096 and 8192, the two larger spread paths are 5 nodes wide.

Mgv6 has 'base terrain' and 'higher terrain', and a third noise 'height select' controls the blend/mix between those two terrains. A fourth noise 'steepness' controls how fast the height select switches between base and higher, creating slopes and cliffs.
In this mod mgv6 mapgen is recreated in lua, the surface of the paths is essentially mgv6 as it would be if all slopes were gentle slopes instead of cliffs, i have set a fixed and low 'steepness'.
