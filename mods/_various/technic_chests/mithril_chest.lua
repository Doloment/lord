minetest.register_craft({
	output = 'technic:mithril_chest 1',
	recipe = {
		{'lord_ores:mithril_ingot','lord_ores:mithril_ingot','lord_ores:mithril_ingot'},
		{'lord_ores:mithril_ingot','technic:gold_chest','lord_ores:mithril_ingot'},
		{'lord_ores:mithril_ingot','lord_ores:mithril_ingot','lord_ores:mithril_ingot'},
	}
})

minetest.register_craft({
	output = 'technic:mithril_locked_chest 1',
	recipe = {
		{'lord_ores:mithril_ingot','lord_ores:mithril_ingot','lord_ores:mithril_ingot'},
		{'lord_ores:mithril_ingot','technic:gold_locked_chest','lord_ores:mithril_ingot'},
		{'lord_ores:mithril_ingot','lord_ores:mithril_ingot','lord_ores:mithril_ingot'},
	}
})

minetest.register_craft({
	type = "shapeless",
	output = "technic:mithril_locked_chest 1",
	recipe = {"technic:mithril_chest", "lord_ores:steel_ingot"}
})

technic.chests:register("Mithril", {
	width = 15,
	height = 6,
	sort = true,
	autosort = true,
	infotext = false,
	color = false,
	locked = false,
})

technic.chests:register("Mithril", {
	width = 15,
	height = 6,
	sort = true,
	autosort = true,
	infotext = false,
	color = false,
	locked = true,
})

