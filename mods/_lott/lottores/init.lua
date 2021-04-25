local SL = lord.require_intllib()

-- Craft Items

minetest.register_craftitem("lottores:galvorn_ingot", {
	description = SL("Galvorn Ingot"),
	inventory_image = "lottores_galvorn_ingot.png",
     groups = {forbidden=1},
})

minetest.register_craftitem("lottores:tilkal_ingot", {
	description = SL("Tilkal Ingot"),
	inventory_image = "lottores_tilkal_ingot.png",
     groups = {forbidden=1},
})

-- Nodes

minetest.register_node("lottores:tilkal", {
	description = SL("Tilkal"),
	tiles = {"lottores_tilkal.png"},
	sounds = default.node_sound_metal_defaults(),
	groups = {forbidden=1},
})

minetest.register_node("lottores:geodes_crystal_1", {
	description = SL("Geodes Crystal"),
	drawtype = "nodebox",
	tiles = {"lottores_geodes_crystal.png"},
     paramtype = "light",
	sunlight_propagates = true,
     light_source = 8,
     alpha = 200,
	is_ground_content = false,
	groups = {cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_glass_defaults(),
     node_box = {
        type = "fixed",
        fixed = {
            {-0.1875,-0.5,-0.125,0.1875,0.3125,0.1875},
            {0.0625,-0.5,-0.25,0.3125,0,0},
            {0.0625,-0.5,0.1875,0.25,0.1875,0.375},
            {-0.3125,-0.5,-0.3125,-0.0625,0.0625,0},
            {-0.375,-0.5,0.0625,-0.125,-0.0625,0.3125},
        }
    },
     on_place = function(itemstack, placer, pointed_thing)
		local stack = ItemStack("lottores:geodes_crystal_"..math.random(1,5))
		local ret = minetest.item_place(stack, placer, pointed_thing)
		return ItemStack("lottores:geodes_crystal_1 "..itemstack:get_count()-(1-ret:get_count()))
	end,
})

minetest.register_node("lottores:geodes_crystal_2", {
	drawtype = "nodebox",
	tiles = {"lottores_geodes_crystal.png"},
     paramtype = "light",
	sunlight_propagates = true,
     light_source = 8,
     alpha = 200,
	is_ground_content = false,
	groups = {cracky=3,oddly_breakable_by_hand=3,not_in_creative_inventory=1},
	sounds = default.node_sound_glass_defaults(),
     drop = "lottores:geodes_crystal_1",
     node_box = {
        type = "fixed",
        fixed = {
            {-0.1875,-0.5,-0.125,0.1875,0.5,0.1875},
            {0.1875,-0.5,-0.25,0.5,0.1875,0},
            {0.0625,-0.5,0.1875,0.375,0.375,0.375},
            {-0.375,-0.5,-0.3125,-0.0625,0.25,0},
            {-0.5,-0.5,-0.0625,-0.125,0,0.3125},
            {0,-0.5,-0.5,0.3125,-0.0625,-0.1875},
        }
    }
})

minetest.register_node("lottores:geodes_crystal_3", {
	drawtype = "nodebox",
	tiles = {"lottores_geodes_crystal.png"},
     paramtype = "light",
	sunlight_propagates = true,
     light_source = 8,
     alpha = 200,
	is_ground_content = false,
	groups = {cracky=3,oddly_breakable_by_hand=3,not_in_creative_inventory=1},
	sounds = default.node_sound_glass_defaults(),
     drop = "lottores:geodes_crystal_1",
     node_box = {
        type = "fixed",
        fixed = {
            {-0.125,-0.5,-0.25,0.25,0.5,0.1875},
            {-0.125,-0.5,-0.4375,0.125,0.25,-0.1875},
            {0,-0.5,-0.125,0.461539,0,0.3125},
            {-0.5,-0.5,0,-0.0625,0.25,0.413465},
            {-0.375,-0.5,-0.25,-0.0625,-0.0625,0.0625},
            {0.1875,-0.5,-0.5,0.5,-0.25,-0.1875},
            {-0.4375,-0.5,-0.5,-0.0625,-0.25,-0.125},
        }
    }
})

minetest.register_node("lottores:geodes_crystal_4", {
	drawtype = "nodebox",
	tiles = {"lottores_geodes_crystal.png"},
     paramtype = "light",
	sunlight_propagates = true,
     light_source = 8,
     alpha = 200,
	is_ground_content = false,
	groups = {cracky=3,oddly_breakable_by_hand=3,not_in_creative_inventory=1},
	sounds = default.node_sound_glass_defaults(),
     drop = "lottores:geodes_crystal_1",
     node_box = {
        type = "fixed",
        fixed = {
            {0.125,-0.5,-0.25,0.5,-0.125,0.125},
            {-0.125,-0.5,-0.0625,0.1875,0.375,0.3125},
            {0.0625,-0.5,-0.5,0.375,-0.0625,-0.125},
            {-0.3125,-0.5,-0.3125,0,-0.1875,0.0625},
            {-0.0625,-0.5,-0.1875,0.375,0.25,0.125},
            {-0.375,-0.5,0.125,0,0.25,0.5},
        }
    }
})

minetest.register_node("lottores:geodes_crystal_5", {
	drawtype = "nodebox",
	tiles = {"lottores_geodes_crystal.png"},
     paramtype = "light",
	sunlight_propagates = true,
     light_source = 8,
     alpha = 200,
	is_ground_content = false,
	groups = {cracky=3,oddly_breakable_by_hand=3,not_in_creative_inventory=1},
	sounds = default.node_sound_glass_defaults(),
     drop = "lottores:geodes_crystal_1",
     node_box = {
        type = "fixed",
        fixed = {
            {-0.3125,-0.5,-0.1875,0,0.5,0.125},
            {-0.1875,-0.5,-0.3125,0.1875,0.125,0},
            {-0.25,-0.5,-0.5,0.0625,0.3125,-0.1875},
            {0.0625,-0.5,-0.125,0.375,-0.125,0.1875},
            {0.0625,-0.5,-0.375,0.3125,-0.25,-0.1875},
            {-0.1875,-0.5,0,0.125,0.0625,0.5},
        }
    }
})

minetest.register_node("lottores:galvorn_block", {
	description = SL("Galvorn Block"),
	tiles = {"lottores_galvorn_block.png"},
	is_ground_content = true,
	groups = {cracky=1,level=2,forbidden=1},
	sounds = default.node_sound_metal_defaults(),
})

-- Ithildin

minetest.register_node("lottores:ithildin_0", {
	description = SL("Ithildin"),
	tiles = {"ithildin_0.png"},
	drawtype = "glasslike",
	paramtype = "light",
	walkable = false,
	pointable = false,
	sunlight_propagates = true,
	drop = "lottores:ithildin_1",
	groups = {snappy=2,cracky=3, not_in_creative_inventory=1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("lottores:ithildin_1", {
	description = SL("Ithildin"),
	tiles = {"ithildin_1.png"},
	inventory_image = {"ithildin_1.png"},
	wield_image = {"ithildin_1.png"},
	paramtype = "light",
	drawtype = 'glasslike',
	walkable = false,
	pointable = true,
	sunlight_propagates = true,
	light_source = 8,
	drop = "lottores:ithildin_1",
	groups = {snappy=2,cracky=3,forbidden=1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("lottores:ithildin_stone_0", {
	description = SL("Ithildin Stone"),
	tiles = {"default_stone.png"},
	drawtype = 'normal',
	walkable = true,
	pointable = true,
	sunlight_propagates = false,
	drop = "lottores:ithildin_stone_1",
	groups = {snappy=2,cracky=3, not_in_creative_inventory=1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("lottores:ithildin_stone_1", {
	description = SL("Ithildin Stone"),
	tiles = {"ithildin_1.png"},
	drawtype = 'glasslike',
	walkable = false,
	pointable = true,
	sunlight_propagates = false,
	light_source = 8,
	drop = "lottores:ithildin_stone_1",
	groups = {snappy=2,cracky=3,forbidden=1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("lottores:ithildin_stonelamp_0", {
	description = SL("Ithildin Stonelamp"),
	tiles = {"default_stone.png"},
	drawtype = 'normal',
	walkable = true,
	pointable = true,
	sunlight_propagates = false,
	drop = "lottores:ithildin_stonelamp_1",
	groups = {snappy=2,cracky=3, not_in_creative_inventory=1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("lottores:ithildin_stonelamp_1", {
	description = SL("Ithildin Stonelamp"),
	tiles = {"default_stone.png^ithildin_lamp_1.png"},
	drawtype = 'normal',
	walkable = true,
	pointable = true,
	sunlight_propagates = false,
	light_source = 8,
	drop = "lottores:ithildin_stonelamp_1",
	groups = {snappy=2,cracky=3,forbidden=1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("lottores:ithildin_lamp_0", {
	description = SL("Ithildin Lamp"),
	tiles = {"ithildin_lamp_0.png"},
	paramtype = "light",
	drawtype = 'glasslike',
	walkable = false,
	pointable = false,
	sunlight_propagates = true,
	drop = "lottores:ithildin_lamp_1",
	groups = {snappy=2,cracky=3, not_in_creative_inventory=1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("lottores:ithildin_lamp_1", {
	description = SL("Ithildin Lamp"),
	tiles = {"default_stone.png^ithildin_lamp_1.png"},
	paramtype = "light",
	drawtype = 'glasslike',
	walkable = true,
	pointable = true,
	sunlight_propagates = true,
	light_source = 8,
	drop = "lottores:ithildin_lamp_1",
	groups = {snappy=2,cracky=3,forbidden=1},
	sounds = default.node_sound_glass_defaults(),
})

-- Functions

minetest.register_abm(
	{nodenames = {"lottores:ithildin_1"},
	interval = 1,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		if minetest.get_timeofday() > 0.2 and minetest.get_timeofday() < 0.8
		then
			minetest.set_node(pos, {name="lottores:ithildin_0"})
		end
	end,
})

minetest.register_abm(
	{nodenames = {"lottores:ithildin_0"},
	interval = 1,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		if minetest.get_timeofday() < 0.2 or minetest.get_timeofday() > 0.8
		then
			minetest.set_node(pos, {name="lottores:ithildin_1"})
		end
	end,
})

minetest.register_abm(
	{nodenames = {"lottores:ithildin_stone_1"},
	interval = 1,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		if minetest.get_timeofday() > 0.2 and minetest.get_timeofday() < 0.8
		then
			minetest.set_node(pos, {name="lottores:ithildin_stone_0"})
		end
	end,
})

minetest.register_abm(
	{nodenames = {"lottores:ithildin_stone_0"},
	interval = 1,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		if minetest.get_timeofday() < 0.2 or minetest.get_timeofday() > 0.8
		then
			minetest.set_node(pos, {name="lottores:ithildin_stone_1"})
		end
	end,
})

minetest.register_abm(
	{nodenames = {"lottores:ithildin_stonelamp_1"},
	interval = 1,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		if minetest.get_timeofday() > 0.2 and minetest.get_timeofday() < 0.8
		then
			minetest.set_node(pos, {name="lottores:ithildin_stonelamp_0"})
		end
	end,
})

minetest.register_abm(
	{nodenames = {"lottores:ithildin_stonelamp_0"},
	interval = 1,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		if minetest.get_timeofday() < 0.2 or minetest.get_timeofday() > 0.8
		then
			minetest.set_node(pos, {name="lottores:ithildin_stonelamp_1"})
		end
	end,
})

minetest.register_abm(
	{nodenames = {"lottores:ithildin_lamp_1"},
	interval = 1,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		if minetest.get_timeofday() > 0.2 and minetest.get_timeofday() < 0.8
		then
			minetest.set_node(pos, {name="lottores:ithildin_lamp_0"})
		end
	end,
})

minetest.register_abm(
	{nodenames = {"lottores:ithildin_lamp_0"},
	interval = 1,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		if minetest.get_timeofday() < 0.2 or minetest.get_timeofday() > 0.8
		then
			minetest.set_node(pos, {name="lottores:ithildin_lamp_1"})
		end
	end,
})

-- Stairs & Slabs

stairs.register_stair_and_slab("tilkal", "lottores:tilkal",
        {forbidden=1},
		{"lottores_tilkal.png"},
		SL("Tilkal Stair"),
		SL("Tilkal Slab"),
		default.node_sound_metal_defaults())

stairs.register_stair_and_slab("galvorn_block", "lottores:galvorn_block",
        {cracky=1,level=2,forbidden=1},
		{"lottores_galvorn_block.png"},
		SL("Galvorn Stair"),
		SL("Galvorn Slab"),
		default.node_sound_metal_defaults())

-- Crafting

minetest.register_craft({
	type = "shapeless",
	output = "lottores:galvorn_ingot",
	recipe = {"lord_ores:lead_ingot", "lord_ores:mese_crystal"}
})

minetest.register_craft({
	output = 'lottores:tilkal',
	recipe = {
		{'lottores:tilkal_ingot', 'lottores:tilkal_ingot', 'lottores:tilkal_ingot'},
		{'lottores:tilkal_ingot', 'lottores:tilkal_ingot', 'lottores:tilkal_ingot'},
		{'lottores:tilkal_ingot', 'lottores:tilkal_ingot', 'lottores:tilkal_ingot'},
	}
})

minetest.register_craft({
	output = 'lottores:tilkal_ingot 9',
	recipe = {
		{'lottores:tilkal'},
	}
})

minetest.register_craft({
	type = "shapeless",
	output = "lottores:tilkal_ingot",
	recipe = {
		"lord_ores:copper_ingot",
		"lord_ores:silver_ingot",
		"lord_ores:tin_ingot",
		"lord_ores:lead_ingot",
		"lord_ores:steel_ingot",
		"lord_ores:gold_ingot",
	}
})

--TODO: move it to lord_ores
--[[minetest.register_craft({
	type = "cooking",
	output = "lord_ores:marble",
	recipe = "lottores:limestone",
})

minetest.register_craft({
	type = "cooking",
	output = "lottores:geodes_crystal_1",
	recipe = "lottores:rough_rock_lump",
})]]

minetest.register_craft({
	output = 'lottores:galvorn_block',
	recipe = {
		{'lottores:galvorn_ingot', 'lottores:galvorn_ingot', 'lottores:galvorn_ingot'},
		{'lottores:galvorn_ingot', 'lottores:galvorn_ingot', 'lottores:galvorn_ingot'},
		{'lottores:galvorn_ingot', 'lottores:galvorn_ingot', 'lottores:galvorn_ingot'},
	}
})

minetest.register_craft({
	output = 'lottores:galvorn_ingot 9',
	recipe = {
		{'lottores:galvorn_block'},
	}
})

minetest.register_craft({
	type = "shapeless",
	output = "lottores:ithildin_1",
	recipe = {"lord_ores:mithril_ingot", "lottores:geodes_crystal_1"}
})

minetest.register_craft({
	type = "shapeless",
	output = "lottores:ithildin_stone_1",
	recipe = {"lottores:ithildin_1", "group:stone"}
})

minetest.register_craft({
	type = "shapeless",
	output = "lottores:ithildin_lamp_1",
	recipe = {"lord_ores:mithril_ingot", "lottother:blue_torch"}
})

minetest.register_craft({
	type = "shapeless",
	output = "lottores:ithildin_stonelamp_1",
	recipe = {"lottores:ithildin_lamp_1", "group:stone"}
})

--Blocks

minetest.register_node("lottores:mineral_pearl", {
	description = SL("Pearl Ore"),
	tiles = {"default_sand.png^lottores_mineral_pearl.png"},
	paramtype = "light",
	is_ground_content = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	drop = {
		items = {
			{
				items = {'lottores:pearl'},
			},
			{
				items = {'default:sand'},
			}
		}
	},
	sounds = default.node_sound_sand_defaults(),
})

minetest.register_node("lottores:mineral_salt", {
	description = SL("Salt Mineral"),
	tiles = {"default_dirt.png^lottores_mineral_salt.png"},
	paramtype = "light",
	is_ground_content = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	drop = {
		items = {
			{
				items = {'lottores:salt'},
			},
			{
				items = {'default:dirt'},
			}
		}
	},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node( "lottores:pearl_block", {
	description = SL("Pearl Block"),
     alpha = 200,
	tiles = { "default_sand.png^lottores_pearl_block.png" },
	is_ground_content = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
     sounds = default.node_sound_glass_defaults(),
})

minetest.register_node( "lottores:salt_block", {
	description = SL("Salt Block"),
	tiles = { "default_clay.png^lottores_salt_block.png" },
	is_ground_content = true,
	groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
	on_use = minetest.item_eat(9),
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lottores:salt", {
	description = SL("Salt"),
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"lottores_salt.png"},
	inventory_image = "lottores_salt.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {fleshy=3,dig_immediate=3,flammable=1},
	on_use = minetest.item_eat(1),
	sounds = default.node_sound_defaults(),
})

-- Craft items

minetest.register_craftitem("lottores:pearl", {
	description = SL("Pearl"),
	inventory_image = "lottores_pearl.png",
})

-- Crafting

minetest.register_craft( {
	output = 'lottores:pearl_block',
	recipe = {
		{ 'craft "lottores:pearl"', 'craft "lottores:pearl"', 'craft "lottores:pearl"' },
		{ 'craft "lottores:pearl"', 'craft "lottores:pearl"', 'craft "lottores:pearl"' },
		{ 'craft "lottores:pearl"', 'craft "lottores:pearl"', 'craft "lottores:pearl"' },
	}
})

minetest.register_craft({
	output = 'lottores:salt_block',
	recipe = {
		{'lottores:salt', 'lottores:salt', 'lottores:salt'},
		{'lottores:salt', 'lottores:salt', 'lottores:salt'},
		{'lottores:salt', 'lottores:salt', 'lottores:salt'},
	}
})

minetest.register_craft({
	output = 'lottores:salt 9',
	recipe = {
		{'lottores:salt_block'},
	}
})

minetest.register_craft({
	output = 'lottores:pearl_block',
	recipe = {
		{'lottores:pearl', 'lottores:pearl', 'lottores:pearl'},
		{'lottores:pearl', 'lottores:pearl', 'lottores:pearl'},
		{'lottores:pearl', 'lottores:pearl', 'lottores:pearl'},
	}
})

minetest.register_craft({
	output = 'lottores:pearl 9',
	recipe = {
		{'lottores:pearl_block'},
	}
})

stairs.register_stair_and_slab("pearl", "lottores:pearl_block",
		{cracky=3,oddly_breakable_by_hand=3},
		{"lottores_pearl_block.png"},
		SL("Pearl Stair"),
		SL("Pearl Slab"),
		default.node_sound_glass_defaults())

stairs.register_stair_and_slab("salt", "lottores:salt_block",
		{cracky=3,oddly_breakable_by_hand=3},
		{"lottores_salt_block.png"},
		SL("Salt Stair"),
		SL("Salt Slab"),
		default.node_sound_stone_defaults())

-- Cooking

minetest.register_craft({
	type = "cooking",
	output = "lottores:galvorn_ingot",
	recipe = "group:galvorn_item",
})

lord.mod_loaded()
