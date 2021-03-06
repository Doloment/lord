local SL = lord.require_intllib()

minetest.register_tool("lottclothes:hood_elven", {
	description = SL("Elven Hood"),
	inventory_image = "lottclothes_inv_hood_elven.png",
	groups = {armor_feet=0, armor_heal=0, clothes=1},
	wear = 0
})

minetest.register_tool("lottclothes:shirt_elven", {
	description = SL("Elven Shirt"),
	inventory_image = "lottclothes_inv_shirt_elven.png",
	groups = {armor_feet=0, armor_heal=0, clothes=1},
	wear = 0
})

minetest.register_tool("lottclothes:trousers_elven", {
	description = SL("Elven Trousers"),
	inventory_image = "lottclothes_inv_trousers_elven.png",
	groups = {armor_feet=0, armor_heal=0, clothes=1},
	wear = 0
})

minetest.register_tool("lottclothes:shoes_elven", {
	description = SL("Elven Shoes"),
	inventory_image = "lottclothes_inv_shoes_elven.png",
	groups = {armor_feet=0, armor_heal=0, clothes=1},
	wear = 0
})

minetest.register_tool("lottclothes:cloak_elven", {
	description = SL("Elven Cloak"),
	inventory_image = "lottclothes_inv_cloak_elven.png",
	groups = {armor_feet=0, armor_heal=0, clothes=1},
	wear = 0
})

minetest.register_craft({
	output = "lottclothes:hood_elven",
	recipe = {
		{"lottclothes:flax_grey", "lottclothes:flax_grey", "lottclothes:flax_grey"},
		{"lottclothes:flax_white", "" , "lottclothes:flax_white"},
	}
})

minetest.register_craft({
	output = "lottclothes:shirt_elven",
	recipe = {
		{"lottclothes:flax_grey", "", "lottclothes:flax_grey"},
		{"lottclothes:flax_white", "lottclothes:flax_grey", "lottclothes:flax_white"},
		{"lottclothes:flax_grey", "lottclothes:flax_grey", "lottclothes:flax_grey"}
	}
})

minetest.register_craft({
	output = "lottclothes:trousers_elven",
	recipe = {
		{"lottclothes:flax_grey", "lottclothes:flax_grey", "lottclothes:flax_grey"},
		{"lottclothes:flax_white", "" , "lottclothes:flax_white"},
		{"lottclothes:flax_grey", "" , "lottclothes:flax_grey"}
	}
})

minetest.register_craft({
	output = "lottclothes:shoes_elven",
	recipe = {
		{"lottclothes:flax_grey", "" , "lottclothes:flax_grey"},
		{"lottclothes:flax_white", "" , "lottclothes:flax_white"}
	}
})

minetest.register_craft({
	output = "lottclothes:cloak_elven",
	recipe = {
		{"lottclothes:flax_white", "lottclothes:flax_white"},
		{"lottclothes:flax_grey", "lottclothes:flax_grey"},
		{"lottclothes:flax_white", "lottclothes:flax_white"}
	}
})
