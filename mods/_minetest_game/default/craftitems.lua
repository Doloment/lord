local SL = lord.require_intllib()
-- mods/default/craftitems.lua

minetest.register_craftitem("default:stick", {
	description = SL("Stick"),
	inventory_image = "default_stick.png",
	groups = {stick=1},
})

minetest.register_craftitem("default:paper", {
	description = SL("Paper"),
	inventory_image = "default_paper.png",
	groups = {book=1, paper=1},
})

minetest.register_craftitem("default:book", {
	description = SL("Book"),
	inventory_image = "default_book.png",
	groups = {book=1, paper=1},
})

minetest.register_craftitem("default:charcoal_lump", {
	description = SL("Charcoal Lump"),
	inventory_image = "charcoal_lump.png",
	groups = {coal=1},
})

minetest.register_craftitem("default:clay_lump", {
	description = SL("Clay Lump"),
	inventory_image = "default_clay_lump.png",
})

minetest.register_craftitem("default:clay_brick", {
	description = SL("Clay Brick"),
	inventory_image = "default_clay_brick.png",
})

minetest.register_craftitem("default:scorched_stuff", {
	description = SL("Scorched Stuff"),
	inventory_image = "default_scorched_stuff.png",
})

minetest.register_craftitem("default:obsidian_shard", {
	description = SL("Obsidian Shard"),
	inventory_image = "default_obsidian_shard.png",
})
