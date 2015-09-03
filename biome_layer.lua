vcnlib.new_layer{
	name = "ugsbiomes",
	seed_offset = 15,
	dimensions = 3,
	scale = 5,
	sector_lengths = {
	x=15,y=15,z=15,},
	biome_types = "random",
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
