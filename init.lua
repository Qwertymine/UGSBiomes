dofile(minetest.get_modpath("ugsbiomes").."/biome_layer.lua")
dofile(minetest.get_modpath("ugsbiomes").."/nodes.lua")

local c_air     = minetest.get_content_id("air")
local c_ignore  = minetest.get_content_id("ignore")
local c_stone   = minetest.get_content_id("default:stone")
local c_obsidian   = minetest.get_content_id("default:obsidian")
local chalk = minetest.get_content_id("ugsbiomes:chalk")
local slate = minetest.get_content_id("ugsbiomes:block_of_slate")
local marble = minetest.get_content_id("ugsbiomes:marble")

local map_seed
local ugs

minetest.register_on_generated(function(minp, maxp, seed)
	local pr = PseudoRandom(seed)
	--[[
	if minp.y > 100 or maxp.y < -100 then
		return
	end
	--]]
	-- read chunk data
	local vm, emin, emax = minetest.get_mapgen_object("voxelmanip")
	local area = VoxelArea:new{MinEdge=emin, MaxEdge=emax}
	local data = vm:get_data()

	local side_length = math.abs(maxp.x - minp.x) + 1
	local biglen = side_length+32

	local chulens = {x=side_length, y=side_length, z=side_length}

	-- generate noise data
	if not map_seed then
		map_seed = minetest.get_mapgen_params().seed
	end
	if not test then
		ugs = vcnlib.get_layer("ugsbiomes")
	end

	-- initialize perlin map and data index
	local biomemap = vcnlib.get_biome_map_flat(minp,maxp,ugs,map_seed)
	--minetest.debug(map_seed)
	local nixyz = 1
	local nixz = 1
	for z = minp.z,maxp.z do
		for y = minp.y,maxp.y do
			local vi = area:index(minp.x,y,z)
			for x = minp.x,maxp.x do
				if data[vi] ~= c_stone then
				--if y ~= 50 then
				elseif biomemap[nixz] == "chalk" then
					data[vi] = chalk
				elseif biomemap[nixz] == "slate" then
					data[vi] = slate
				elseif biomemap[nixz] == "marble" then
					data[vi] = marble
				elseif biomemap[nixz] == "stone" then
				else
					data[vi] = c_obsidian
				end
				nixyz = nixyz + 1
				nixz = nixz + 1
				vi = vi + 1
			end
			nixz = nixz - side_length
		end
		nixz = nixz + side_length
	end
	vm:set_data(data)
	vm:set_lighting({day=0, night=0})
	vm:calc_lighting()
	vm:write_to_map(data)
end)
