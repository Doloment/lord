local SL = lord.require_intllib()

--
-- crafting
--

minetest.register_craft({
	output = "carts:cart",
	recipe = {
		{"lord_ores:steel_ingot", "", "lord_ores:steel_ingot"},
		{"group:wood", "", "group:wood"},
		{"lord_ores:steel_ingot", "group:wood", "lord_ores:steel_ingot"},
	},
})

minetest.register_craftitem("carts:gear", {
	description = SL("Gear"),
	inventory_image = "carts_gear.png",
})

minetest.register_craft({
	output = "carts:gear 4",
	recipe = {
		{"", "lord_ores:steel_ingot", ""},
		{"lord_ores:steel_ingot", "", "lord_ores:steel_ingot"},
		{"", "lord_ores:steel_ingot", ""},
	}
})

minetest.register_node("carts:steam_mechanism", {
	description = SL("Steam mechanism"),
	tiles = {"carts_steam_mechanismv.png", "carts_steam_mechanismn.png",
		"carts_steam_mechanism1.png", "carts_steam_mechanism3.png",
		"carts_steam_mechanism2.png", "carts_steam_mechanism4.png"},
	is_ground_content = false,
	groups = {crumbly=2, cracky=3, accelerator=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = "carts:steam_mechanism",
	recipe = {
		{"lord_ores:steel_ingot", "group:stick", "lord_ores:steel_ingot"},
		{"carts:gear", "lottpotion:cauldron_full", "default:torch"},
		{"lord_ores:steel_ingot", "lord_ores:coal_block", "lord_ores:steel_ingot"},
	}
})

local function register_rail_craft(item, special)
	minetest.register_craft({
		output = item .. " 6",
		recipe = {
			{"lord_ores:steel_ingot", special, "lord_ores:steel_ingot"},
			{"lord_ores:steel_ingot", "group:stick", "lord_ores:steel_ingot"},
			{"lord_ores:steel_ingot", "", "lord_ores:steel_ingot"},
		}
	})
	minetest.register_craft({
		output = item .. " 6",
		recipe = {
			{"lord_ores:steel_ingot", "", "lord_ores:steel_ingot"},
			{"lord_ores:steel_ingot", "group:stick", "lord_ores:steel_ingot"},
			{"lord_ores:steel_ingot", special, "lord_ores:steel_ingot"},
		}
	})
end

register_rail_craft("carts:stopping_rail", "lord_ores:coal_lump")
register_rail_craft("carts:accelerating_rail", "carts:gear")
register_rail_craft("carts:rail", "")

--**************************************************************************
-- cooking
--**************************************************************************

minetest.register_craft({
	type = "cooking",
	output = "lord_ores:steel_ingot",
	recipe = "carts:stopping_rail",
})

minetest.register_craft({
	type = "cooking",
	output = "lord_ores:steel_ingot",
	recipe = "carts:accelerating_rail",
})

minetest.register_craft({
	type = "cooking",
	output = "lord_ores:steel_ingot",
	recipe = "carts:rail",
})
