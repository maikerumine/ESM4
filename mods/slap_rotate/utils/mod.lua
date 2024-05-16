local util = {}

local conf = {
	prefix_from = 'from_',
	prefix_as = ''
}

local get_mod_name = function(prefix, name)
	return (prefix or '')..name
end

util.export = function(t)
	if not t or type(t) ~= 'table' then
		error('Failed to export')
	end

	local fn = function(G, mod_name, prefix)
		local export_name = get_mod_name(prefix, mod_name)
		G = G or _G
		G[export_name] = t
		return t, export_name
	end

	return {
		from = function(mod_name, G)
			return fn(G, mod_name, conf.prefix_from)
		end,
		as = function(mod_name, G)
			return fn(G, mod_name, conf.prefix_as)
		end
	}
end

util.import = {
	from = function(mod_name, G)
		G = G or _G
		return G[get_mod_name(conf.prefix_from, mod_name)]
	end,
	as = function(mod_name, G)
		G = G or _G
		return G[get_mod_name(conf.prefix_as, mod_name)]
	end
}

return util
