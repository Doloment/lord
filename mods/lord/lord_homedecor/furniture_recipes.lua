minetest.register_craft({
	output = "lord_homedecor:bars 6",
	recipe = {
		{ "lord_ores:steel_ingot","lord_ores:steel_ingot","lord_ores:steel_ingot" },
		{ "lord_homedecor:pole_wrought_iron","lord_homedecor:pole_wrought_iron","lord_homedecor:pole_wrought_iron" },
	},
})

minetest.register_craft({
	output = "lord_homedecor:L_binding_bars 3",
	recipe = {
		{ "lord_homedecor:bars","" },
		{ "lord_homedecor:bars","lord_homedecor:bars" },
	},
})

minetest.register_craft({
	output = "lord_homedecor:torch_wall 10",
	recipe = {
		{ "lord_ores:coal_lump" },
		{ "lord_ores:steel_ingot" },
	},
})
