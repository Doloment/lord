local S = lottfarming.get_translator

farming.register_plant("lottfarming:turnip", {
	harvest_name = "lottfarming:turnip",
	description = S("Turnip Seed"),
	harvest_description = S("Turnip"),
	seed_inv_img = "lottfarming_seed_turnip.png",
	groups = {},
	planttype = 1,
	steps = 4,
	paramtype2 = "meshoptions",
<<<<<<< HEAD
	minlight = 11,
	maxlight = lottfarming.MAX_LIGHT,
	fertility = {"soil"},
=======
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland"},
>>>>>>> 01f005f (Closes #344. Closes #321. Redo lottfarming.)
	place_param2 = 1,
	on_use = minetest.item_eat(2),
})

minetest.register_craftitem("lottfarming:turnip_cooked", {
	description = S("Cooked Turnip"),
	inventory_image = "lottfarming_turnip_cooked.png",
	on_use = minetest.item_eat(2),
})
