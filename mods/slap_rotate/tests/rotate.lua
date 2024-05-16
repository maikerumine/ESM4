local current_modname = minetest.get_current_modname()
local path = minetest.get_modpath(current_modname)

local ROTATE = dofile(path.."/data/rotate.lua")

local test_rotate = function()
    local errors = 0
    for pti,at in pairs(ROTATE) do
        for ai,rt in pairs(at) do
            for c=4,1,-1 do
                local found_rot = {}
                for ri=0,#rt do
                    local o = rt[ri]
                    
                    function rot(p, c)
                        if c < 1 then
                            return p
                        end
                        c = c-1
                        return rot(rt[p], c)
                    end
                    
                    local p2 = rot(o, c)
                    if found_rot[p2] or c==4 and o ~= p2 then
                        errors = errors + 1
                        --[[
						print("WARNING: corrupted rotation table:",
                            "paramtype_index:"..pti,
                            "axis_index: "..ai,
                            "origin: "..o,
                            "param2:"..p2)
						]]
                    else
                        found_rot[p2] = true
                    end
                end
                for fri=0,#rt do
                    if not found_rot[fri] then
                        error("FATAL ERROR: corrupted rotation table, fix it ASAP")
                    end
                end
            end
        end
    end
    if errors == 0 then
        print("rotation table looks ok to me")
    else
        print("DO NOT TOUCH ROTATION TABLE!!! Errors: "..errors)
    end
end

return test_rotate
