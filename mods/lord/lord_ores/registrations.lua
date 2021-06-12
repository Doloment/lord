local SL = lord.require_intllib()

--Limestone
lord_ores.register_materials({
    name = "limestone",
    description = "Limestone",
    ore_tiles = {"lord_ores_limestone_block.png"},
    ore_groups = {cracky = 3, mineral = 1},
    ore = {
        scarity = 9*9*9,
        num = 5,
        size = 2,
        ymax = -10,
        ymin = -60,
    },
    ore2 = {
        scarity = 7*7*7,
        num = 5,
        size = 2,
        ymax = -61,
        ymin = -31000,
    },
    ore3 = {
        scarity = 24*24*24,
        num = 15,
        size = 6,
        ymax = -50,
        ymin = -31000,
    },
    block_groups = {cracky = 3, stone = 2},
    register_ingot = false,
    lump_as_ingot = true,
    is_metal = false,
	block_craft_4 = true,
})

--Rough Rock
lord_ores.register_materials({
    name = "rough_rock",
    description = "Rough Rock",
    custom_ore_name = "lord_ores:rough_rock",
    custom_ore_description = SL("Rough Rock"),
    ore_tiles = {"lord_ores_rough_rock.png"},
    ore = {
        scarity = 15*15*15,
        num = 3,
        size = 2,
        ymax = -70,
        ymin = -300,
    },
    ore2 = {
        scarity = 9*9*9,
        num = 3,
        size = 2,
        ymax = -301,
        ymin = -31000,
    },
    register_ingot = false,
	register_block = false,
    register_slab_and_stair = false,
    is_metal = false,
})

--Coal
lord_ores.register_materials({
    name = "coal",
    description = "Coal",
    lump_groups = {coal = 1},
    ore_groups = {cracky = 3},
    ore = {
        scarity = 15*15*15,
        num = 9,
        size = 3,
        ymax = 31000,
        ymin = 1,
    },
    ore2 = {
        scarity = 12*12*12,
        num = 8,
        size = 3,
        ymax = 0,
        ymin = -31000,
    },
    ore3 = {
        scarity = 24*24*24,
        num = 27,
        size = 6,
        ymax = -64,
        ymin = -31000,
    },
    block_groups = {cracky = 3, flammable = 10},
    register_ingot = false,
    register_slab_and_stair = false,
    is_metal = false,
    block_on_punch = function(pos, node, puncher)
		if puncher:get_wielded_item():get_name() == "default:torch" then
			local pos_above = {x = pos.x, y = pos.y + 1, z = pos.z}
			if minetest.get_node(pos_above).name == "air" then
				minetest.set_node(pos_above, {name = "fire:basic_flame"})
			end
		end
	end,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_ores:coal_lump",
	burntime = 40,
})

minetest.register_craft({
	type = "fuel",
	recipe = "lord_ores:coal_block",
	burntime = 370,
})

--Iron
lord_ores.register_materials({
    name = "iron",
    description = "Iron",
    custom_block_name = "lord_ores:steel_block",
    custom_block_desc = SL("Steel Block"),
    custom_ingot_name = "lord_ores:steel_ingot",
    custom_ingot_desc = SL("Steel Ingot"),
    custom_ingot_img = "lord_ores_steel_ingot.png",
    block_tiles = {"lord_ores_steel_block.png"},
    ore = {
        scarity = 18*18*18,
        num = 3,
        size = 2,
        ymax = 31000,
        ymin = 1,
    },
    ore2 = {
        scarity = 12*12*12,
        num = 5,
        size = 3,
        ymax = 0,
        ymin = -31000,
    },
    ore4 = {
        scarity = 24*24*24,
        num = 27,
        size = 6,
        ymax = -64,
        ymin = -31000,
    },
    block_groups = {cracky = 1, level = 2},
})

--Copper
lord_ores.register_materials({
    name = "copper",
    description = "Copper",
    ore = {
        scarity = 15*15*15,
        num = 5,
        size = 3,
        ymax = 31000,
        ymin = 1,
    },
    ore2 = {
        scarity = 18*18*18,
        num = 4,
        size = 3,
        ymax = -16,
        ymin = -63,
    },
    ore23 = {
        scarity = 27*27*27,
        num = 27,
        size = 6,
        ymax = -64,
        ymin = -31000,
    },
    block_groups = {cracky = 1, level = 2},
})

--Mese
lord_ores.register_materials({
    name = "mese",
    description = "Mese",
    custom_lump_name = "lord_ores:mese_crystal",
    custom_lump_desc = SL("Mese Crystal"),
    custom_lump_img = "lord_ores_mese_crystal.png",
    ore_groups = {cracky = 1},
    ore = {
        scarity = 27*27*27,
        num = 3,
        size = 2,
        ymax = -64,
        ymin = -255,
    },
    ore2 = {
        scarity = 24*24*24,
        num = 3,
        size = 2,
        ymax = -256,
        ymin = -31000,
    },
    lump_as_ingot = true,
    register_ingot = false,
    block_groups = {cracky = 1, level = 2},
    custom_block_sounds = default.node_sound_glass_defaults(),
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "lord_ores:mese_block",
	wherein        = "default:stone",
	clust_scarcity = 36*36*36,
	clust_num_ores = 3,
	clust_size     = 2,
	y_max     = -1024,
	y_min     = -31000,
})

minetest.register_craftitem("lord_ores:mese_shard", {
	description = SL("Mese Shard"),
	inventory_image = "lord_ores_mese_shard.png",
})

minetest.register_craft({
	output = "lord_ores:mese_shard 9",
	recipe = {
		{"lord_ores:mese_crystal"},
	}
})

--Diamond
lord_ores.register_materials({
    name = "diamond",
    description = "Diamond",
    custom_lump_name = "lord_ores:diamond",
    custom_lump_desc = SL("Diamond"),
    custom_lump_img = "lord_ores_diamond.png",
    ore_groups = {cracky = 1},
    ore = {
        scarity = 40*40*40,
        num = 4,
        size = 2,
        ymax = -256,
        ymin = -31000,
    },
    lump_as_ingot = true,
    register_ingot = false,
    block_groups = {cracky = 1, level = 3},
    custom_block_sounds = default.node_sound_glass_defaults(),
})

--Gold
lord_ores.register_materials({
    name = "gold",
    description = "Gold",
    ore = {
        scarity = 21*21*21,
        num = 3,
        size = 2,
        ymax = -64,
        ymin = -255,
    },
    ore2 = {
        scarity = 19*19*19,
        num = 5,
        size = 3,
        ymax = -256,
        ymin = -31000,
    },
    block_groups = {cracky = 1},
})

--Bronze
lord_ores.register_materials({
    name = "bronze",
    description = "Bronze",
    custom_lump_name = "lord_ores:raw_bronze",
    custom_lump_desc = SL("Raw Bronze"),
    custom_lump_img = "lord_ores_raw_bronze.png",
    register_ore = false,
    block_groups = {cracky = 1, level = 2},
})

minetest.register_craft({
	output = "lord_ores:raw_bronze 2",
    type = "shapeless",
	recipe = {"lord_ores:copper_lump", "lord_ores:tin_lump"},
})

--Brass
lord_ores.register_materials({
    name = "brass",
    description = "Brass",
    custom_lump_name = "lord_ores:raw_brass",
    custom_lump_desc = SL("Raw Brass"),
    custom_lump_img = "lord_ores_raw_brass.png",
    register_ore = false,
    block_groups = {cracky = 1, level = 2},
})

minetest.register_craft({
	output = "lord_ores:raw_brass 2",
    type = "shapeless",
	recipe = {"lord_ores:copper_lump", "lord_ores:zinc_lump"},
})

--Silver
lord_ores.register_materials({
    name = "silver",
    description = "Silver",
    ore = {
        scarity = 21*21*21,
        num = 3,
        size = 2,
        ymax = -50,
        ymin = -200,
    },
    ore2 = {
        scarity = 19*19*19,
        num = 6,
        size = 3,
        ymax = -201,
        ymin = -31000,
    },
    block_groups = {cracky = 1, level = 2},
})

--Tin
lord_ores.register_materials({
    name = "tin",
    description = "Tin",
    ore = {
        scarity = 18*18*18,
        num = 5,
        size = 2,
        ymax = -20,
        ymin = -60,
    },
    ore2 = {
        scarity = 12*12*12,
        num = 10,
        size = 5,
        ymax = -61,
        ymin = -31000,
    },
})

--Lead
lord_ores.register_materials({
    name = "lead",
    description = "Lead",
    ore = {
        scarity = 18*18*18,
        num = 4,
        size = 3,
        ymax = -30,
        ymin = -60,
    },
    ore2 = {
        scarity = 12*12*12,
        num = 5,
        size = 3,
        ymax = -61,
        ymin = -31000,
    },
})

--Mithril
lord_ores.register_materials({
    name = "mithril",
    description = "Mithril",
    ore = {
        scarity = 36*36*36,
        num = 3,
        size = 3,
        ymax = -128,
        ymin = -255,
    },
    ore2 = {
        scarity = 27*27*27,
        num = 5,
        size = 3,
        ymax = -256,
        ymin = -31000,
    },
    block_groups = {cracky = 1, level = 2},
})

--Zinc
lord_ores.register_materials({
    name = "zinc",
    description = "Zinc",
    ore = {
        type = "blob",
        scarity = 21*21*21,
        num = 5,
        size = 2,
        ymax = -64,
        ymin = -255,
    },
    ore2 = {
        type = "blob",
        scarity = 15*15*15,
        num = 7,
        size = 4,
        ymax = -256,
        ymin = -31000,
    },
})

--White Diamond
lord_ores.register_materials({
    name = "white_diamond",
    description = "White Diamond",
    custom_lump_name = "lord_ores:unheated_white_diamond",
    custom_lump_desc = SL("Unheated White Diamond"),
    custom_lump_img = "lord_ores_unheated_white_diamond.png",
    custom_ingot_name = "lord_ores:heated_white_diamond",
    custom_ingot_desc = SL("Heated White Diamond"),
    custom_ingot_img = "lord_ores_heated_white_diamond.png",
    ore_groups = {mineral = 1, magical = 1},
    ore_drop = {
		items = {
			{
				items = {"lord_ores:unheated_white_diamond"},
				rarity = 5,
			},
			{
				items = {""},
			}
		}
	},
    ore = {
        type = "blob",
        scarity = 30*30*30,
        num = 4,
        size = 3,
        ymax = -2048,
        ymin = -31000,
    },

})

--Red Ruby
lord_ores.register_materials({
    name = "red_ruby",
    description = "Red Ruby",
    custom_lump_name = "lord_ores:unheated_red_ruby",
    custom_lump_desc = SL("Unheated Red Ruby"),
    custom_lump_img = "lord_ores_unheated_red_ruby.png",
    custom_ingot_name = "lord_ores:heated_red_ruby",
    custom_ingot_desc = SL("Heated Red Ruby"),
    custom_ingot_img = "lord_ores_heated_red_ruby.png",
    ore_groups = {mineral = 1, magical = 1},
    ore_drop = {
		items = {
			{
				items = {"lord_ores:unheated_red_ruby"},
				rarity = 5,
			},
			{
				items = {""},
			}
		}
	},
    ore = {
        type = "puff",
        scarity = 30*30*30,
        num = 9,
        size = 2,
        ymax = -2048,
        ymin = -31000,
    },
})

--Blue Sapphire
lord_ores.register_materials({
    name = "blue_sapphire",
    description = "Blue Sapphire",
    custom_lump_name = "lord_ores:unheated_blue_sapphire",
    custom_lump_desc = SL("Unheated Blue Sapphire"),
    custom_lump_img = "lord_ores_unheated_blue_sapphire.png",
    custom_ingot_name = "lord_ores:heated_blue_sapphire",
    custom_ingot_desc = SL("Heated Blue Sapphire"),
    custom_ingot_img = "lord_ores_heated_blue_sapphire.png",
    ore_groups = {mineral = 1, magical = 1},
    ore_drop = {
		items = {
			{
				items = {"lord_ores:unheated_blue_sapphire"},
				rarity = 5,
			},
			{
				items = {""},
			}
		}
	},
    ore = {
        scarity = 30*30*30,
        num = 4,
        size = 4,
        ymax = -2048,
        ymin = -31000,
    },
})

--Violet Alexandrite
lord_ores.register_materials({
    name = "violet_alexandrite",
    description = "Violet Alexandrite",
    custom_lump_name = "lord_ores:unheated_violet_alexandrite",
    custom_lump_desc = SL("Unheated Violet Alexandrite"),
    custom_lump_img = "lord_ores_unheated_violet_alexandrite.png",
    custom_ingot_name = "lord_ores:heated_violet_alexandrite",
    custom_ingot_desc = SL("Heated Violet Alexandrite"),
    custom_ingot_img = "lord_ores_heated_violet_alexandrite.png",
    ore_groups = {mineral = 1, magical = 1},
    ore_drop = {
		items = {
			{
				items = {"lord_ores:unheated_violet_alexandrite"},
				rarity = 5,
			},
			{
				items = {""},
			}
		}
	},
    ore = {
        type = "sheet",
        scarity = 30*30*30,
        num = 3,
        size = 2,
        ymax = -2048,
        ymin = -31000,
    },
})

--Green Emerald
--[[lord_ores.register_materials({
    name = "green_emerald",
    description = "Green Emerald",
    custom_lump_name = "lord_ores:unheated_green_emerald",
    custom_lump_desc = SL("Unheated Green Emerald"),
    custom_lump_img = "lord_ores_unheated_green_emerald.png",
    custom_ingot_name = "lord_ores:heated_green_emerald",
    custom_ingot_desc = SL("Heated Green Emerald"),
    custom_ingot_img = "lord_ores_heated_green_emerald.png",
    ore_groups = {mineral = 1, magical = 1},
    ore_drop = {
		items = {
			{
				items = {"lord_ores:unheated_green_emerald"},
				rarity = 5,
			},
			{
				items = {""},
			}
		}
	},
    ore = {
        type = "sheet"
        scarity = 25*25*25,
        num = 5,
        size = 3,
        ymax = -2048,
        ymin = -31000,
    },
})]]

--Marble
minetest.register_node("lord_ores:marble", {
	description = SL("Marble"),
	tiles = {"lottores_marble.png"},
	is_ground_content = true,
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	type = "cooking",
	output = "lord_ores:marble",
	recipe = "lord_ores:limestone_block",
})

minetest.register_craft({
	type = "cooking",
	output = "lottores:geodes_crystal_1",
	recipe = "lord_ores:rough_rock_lump",
})

stairs.register_stair_and_slab("marble", "lord_ores:marble",
        {cracky=3},
		{"lottores_marble.png"},
		SL("Marble Stair"),
		SL("Marble Slab"),
		default.node_sound_stone_defaults())
