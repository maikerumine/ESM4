local current_modname = minetest.get_current_modname()
local path = minetest.get_modpath(current_modname)

local FLIP = dofile(path.."/data/flip.lua")

local test_flip = function()
    local errors = 0
    for pti,at in pairs(FLIP) do
        for ai,rt in pairs(at) do
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
                
                local p2 = rot(o, 2)
                if o ~= p2 then
                    errors = errors + 1
                    --[[
                    print("WARNING: corrupted flip table:",
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
                    error("FATAL ERROR: corrupted flip table, fix it ASAP")
                end
            end
        end
    end
    if errors == 0 then
        print("flip table looks ok to me")
    else
        print("DO NOT TOUCH ROTATION TABLE!!! Errors: "..errors)
    end
end

return test_flip
