minetest.register_craft({
	output = 'technic:gold_chest',
	recipe = {
		{'lord_ores:gold_ingot','lord_ores:gold_ingot','lord_ores:gold_ingot'},
		{'lord_ores:gold_ingot',"technic:silver_chest",'lord_ores:gold_ingot'},
		{'lord_ores:gold_ingot','lord_ores:gold_ingot','lord_ores:gold_ingot'},
	}
})

minetest.register_craft({
	output = 'technic:gold_locked_chest',
	recipe = {
		{'lord_ores:gold_ingot','lord_ores:gold_ingot','lord_ores:gold_ingot'},
		{'lord_ores:gold_ingot',"technic:silver_locked_chest",'lord_ores:gold_ingot'},
		{'lord_ores:gold_ingot','lord_ores:gold_ingot','lord_ores:gold_ingot'},
	}
})

minetest.register_craft({
	type = "shapeless",
	output = "technic:gold_locked_chest",
	recipe = {"technic:gold_chest", "lord_ores:steel_ingot"}
})

technic.chests:register("Gold", {
	width = 15,
	height = 6,
	sort = true,
	autosort = true,
	infotext = true,
	color = true,
	locked = false,
})

technic.chests:register("Gold", {
	width = 15,
	height = 6,
	sort = true,
	autosort = true,
	infotext = true,
	color = true,
	locked = true,
})

