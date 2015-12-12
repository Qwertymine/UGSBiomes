vcnlib.new_layer{
	name = "ugsbiomes",
	blocksize = {x=5,y=5,z=5},
	seed_offset = 15,
	dimensions = 3,
	point_distribution = {
		default = 1,
		20,1,
	},
	sector_lengths = {x=150,y=150,z=150,},
	biome_types = {
		"random",
	},
	geometry = "manhattan",
}

local ugs = vcnlib.get_layer("ugsbiomes")

ugs:add_biome{
	name = "stone",
}
ugs:add_biome{
	name = "chalk",
}
ugs:add_biome{
	name = "slate",
}
ugs:add_biome{
	name = "marble",
}
