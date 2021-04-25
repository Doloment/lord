minetest.register_craft({
	output = 'technic:copper_chest 1',
	recipe = {
		{'lord_ores:copper_ingot','lord_ores:copper_ingot','lord_ores:copper_ingot'},
		{'lord_ores:copper_ingot','technic:iron_chest','lord_ores:copper_ingot'},
		{'lord_ores:copper_ingot','lord_ores:copper_ingot','lord_ores:copper_ingot'},
	}
})

minetest.register_craft({
	output = 'technic:copper_locked_chest 1',
	recipe = {
		{'lord_ores:copper_ingot','lord_ores:copper_ingot','lord_ores:copper_ingot'},
		{'lord_ores:copper_ingot','technic:iron_locked_chest','lord_ores:copper_ingot'},
		{'lord_ores:copper_ingot','lord_ores:copper_ingot','lord_ores:copper_ingot'},
	}
})

minetest.register_craft({
	type = "shapeless",
	output = "technic:copper_locked_chest 1",
	recipe = {"technic:copper_chest", "lord_ores:steel_ingot"}
})

technic.chests:register("Copper", {
	width = 12,
	height = 5,
	sort = true,
	autosort = true,
	infotext = false,
	color = false,
	locked = false,
})

technic.chests:register("Copper", {
	width = 12,
	height = 5,
	sort = true,
	autosort = true,
	infotext = false,
	color = false,
	locked = true,
})

