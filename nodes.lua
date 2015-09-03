--[[
minetest.register_node("ugsbiomes:patio", {
	tiles = {"ugsbiomes_patio.png"},
	groups = {cracky=2,stone=1,},
	description = "Patio",
})

minetest.register_node("ugsbiomes:patio_brick", {
	tiles = {"ugsbiomes_patio_brick.png"},
	groups = {cracky=2,},
	description = "Patio Brick",
})

minetest.register_node("ugsbiomes:patiostone", {
	tiles = {"ugsbiomes_patiostone.png"},
	groups = {cracky=2,},
	description = "Patio Stone",
})

minetest.register_craft({
	output = 'ugsbiomes:patio',
	recipe = {
		{'ugsbiomes:patiostone', 'ugsbiomes:patiostone', ''},
		{'ugsbiomes:patiostone', 'ugsbiomes:patiostone', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	type = "fuel",
	recipe = "ugsbiomes:patio",
	burntime = 7,
})
--]]
minetest.register_node("ugsbiomes:chalk", {
	tiles = {"ugsbiomes_chalk.png"},
	groups = {cracky=3,stone=1,},
	description = "Chalk",
})

minetest.register_node("ugsbiomes:block_of_slate", {
	tiles = {"ugsbiomes_block_of_slate.png"},
	groups = {cracky=2,stone=1,},
	description = "Slate Block",
})

minetest.register_node("ugsbiomes:marble", {
	tiles = {"ugsbiomes_marble.png"},
	groups = {cracky=2,stone=1,},
	description = "Marble Block",
})
--[[
minetest.register_node("ugsbiomes:mineral_ruby", {
	tiles = {"default_stone.png^ugsbiomes_mineral_ruby.png"},
	groups = {cracky=1, stone=1},
	drop = 'ugsbiomes:ruby',
	description = "Ruby Ore",
})

minetest.register_craftitem("ugsbiomes:ruby", {
	description = "Ruby",
	inventory_image = "ugsbiomes_ruby.png",
 --[[
	on_drop = function(itemstack, dropper, pos)
		-- Prints a random number and removes one item from the stack
		minetest.chat_send_all(math.random())
		itemstack:take_item()
		return itemstack
	end,
--]
})

minetest.register_tool("ugsbiomes:rubypick", {
    description = "Ruby Pickaxe",
    inventory_image = "ugsbiomes_tool_rubypick.png",
    tool_capabilities = {
        max_drop_level=3,
        groupcaps= {
            cracky={times={[1]=5.00, [2]=1.50, [3]=1.00}, uses=1000, maxlevel=1}
        }
    }
})

minetest.register_craft({
	output = 'ugsbiomes:rubypick',
	recipe = {
		{'ugsbiomes:ruby', 'ugsbiomes:ruby', 'ugsbiomes:ruby'},
		{'', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})

minetest.register_tool("ugsbiomes:sword_ruby", {
    description = "Ruby Sword",
    inventory_image = "ugsbiomes_tool_rubysword.png",
    tool_capabilities = {
        -- Digging capabilities
        max_drop_level = 1,
        groupcaps = {
            fleshy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=10, maxlevel=2},
            snappy={times={[2]=0.70, [3]=0.30}, uses=40, maxlevel=1},
            choppy={times={[3]=0.65}, uses=40, maxlevel=0}
        },
        -- Damage capabilities
        full_punch_interval = 0.8,
        damage_groups = {fleshy=8, snappy=4, choppy=2},
    }
})

minetest.register_craft({
	output = 'ugsbiomes:sword_ruby',
	recipe = {
		{'', 'ugsbiomes:ruby', ''},
		{'', 'ugsbiomes:ruby', ''},
		{'', 'default:stick', ''},
	}
})

minetest.register_tool("ugsbiomes:rubyaxe", {
    description = "Ruby Axe",
    inventory_image = "ugsbiomes_tool_rubyaxe.png",
    tool_capabilities = {
        max_drop_level=3,
        groupcaps= {
            choppy={times={[1]=4.00, [2]=1.50, [3]=1.00}, uses=70, maxlevel=1}
        }
    }
})

minetest.register_craft({
	output = 'ugsbiomes:rubyaxe',
	recipe = {
		{'ugsbiomes:ruby', 'ugsbiomes:ruby', ''},
		{'ugsbiomes:ruby', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})

minetest.register_tool("ugsbiomes:rubyshovel", {
    description = "Ruby Shovel",
    inventory_image = "ugsbiomes_tool_rubyshovel.png",
    tool_capabilities = {
        max_drop_level=3,
        groupcaps= {
            crumbly={times={[1]=4.00, [2]=1.50, [3]=1.00}, uses=70, maxlevel=1}
        }
    }
})

minetest.register_craft({
	output = 'ugsbiomes:rubyshovel',
	recipe = {
		{'', 'ugsbiomes:ruby', ''},
		{'', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})

minetest.register_node("ugsbiomes:mineral_amethyst", {
	tiles = {"default_stone.png^ugsbiomes_mineral_amethyst.png"},
	groups = {cracky=1, stone=1},
	drop = 'ugsbiomes:amethyst',
	description = "Amethyst Ore",
})

minetest.register_craftitem("ugsbiomes:amethyst", {
	description = "Amethyst",
	inventory_image = "ugsbiomes_amethyst.png",
 --[[
	on_drop = function(itemstack, dropper, pos)
		-- Prints a random number and removes one item from the stack
		minetest.chat_send_all(math.random())
		itemstack:take_item()
		return itemstack
	end,
--]
})

minetest.register_tool("ugsbiomes:amethystaxe", {
    description = "Amethyst Axe",
    inventory_image = "ugsbiomes_tool_amethystaxe.png",
    tool_capabilities = {
        max_drop_level=3,
        groupcaps= {
            choppy={times={[1]=3.00, [2]=1.50, [3]=1.00}, uses=70, maxlevel=1}
        }
    }
})

minetest.register_craft({
	output = 'ugsbiomes:amethystaxe',
	recipe = {
		{'ugsbiomes:amethyst', 'ugsbiomes:amethyst', ''},
		{'ugsbiomes:amethyst', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})

minetest.register_tool("ugsbiomes:amethystpick", {
    description = "Amethyst Pickaxe",
    inventory_image = "ugsbiomes_tool_amethystpick.png",
    tool_capabilities = {
        max_drop_level=3,
        groupcaps= {
            cracky={times={[1]=5.00, [2]=1.50, [3]=1.00}, uses=1000, maxlevel=1}
        }
    }
})

minetest.register_craft({
	output = 'ugsbiomes:amethystpick',
	recipe = {
		{'ugsbiomes:amethyst', 'ugsbiomes:amethyst', 'ugsbiomes:amethyst'},
		{'', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})

minetest.register_tool("ugsbiomes:amethystshovel", {
    description = "Amethyst Shovel",
    inventory_image = "ugsbiomes_tool_amethystshovel.png",
    tool_capabilities = {
        max_drop_level=3,
        groupcaps= {
            crumbly={times={[1]=3.00, [2]=1.50, [3]=1.00}, uses=70, maxlevel=1}
        }
    }
})

minetest.register_craft({
	output = 'ugsbiomes:amethystshovel',
	recipe = {
		{'', 'ugsbiomes:amethyst', ''},
		{'', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})

minetest.register_tool("ugsbiomes:sword_amethyst", {
    description = "Amethyst Sword",
    inventory_image = "ugsbiomes_tool_amethystsword.png",
    tool_capabilities = {
        -- Digging capabilities
        max_drop_level = 1,
        groupcaps = {
            fleshy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=10, maxlevel=2},
            snappy={times={[2]=0.70, [3]=0.30}, uses=40, maxlevel=1},
            choppy={times={[3]=0.65}, uses=40, maxlevel=0}
        },
        -- Damage capabilities
        full_punch_interval = 0.8,
        damage_groups = {fleshy=8, snappy=4, choppy=2},
    }
})

minetest.register_craft({
	output = 'ugsbiomes:sword_amethyst',
	recipe = {
		{'', 'ugsbiomes:amethyst', ''},
		{'', 'ugsbiomes:amethyst', ''},
		{'', 'default:stick', ''},
	}
})
--]]

