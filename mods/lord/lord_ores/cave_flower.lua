local SL = lord.require_intllib()

minetest.register_node("lord_ores:cave_flower_closed", {
	description = SL("Cave Flower"),
	tiles = {"lord_ores_cave_flower_closed.png"},
	wield_image = "lord_ores_cave_flower_closed.png",
	inventory_image = "lord_ores_cave_flower_closed.png",
	drawtype = "mesh",
	mesh = "lord_ores_cave_flower.obj",
	groups = {snappy = 3, oddly_breakable_by_hand = 3, attached_node = 1},
	is_ground_content = false,
	drop = "lord_ores:cave_flower_closed",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	light_source = 10,
	buildable_to = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.22, -0.5, -0.22, 0.22, -6/16, 0.22},
	},
	on_place = function(itemstack, placer, pointed_thing)
		--minetest.chat_send_all(pointed_thing.under.."\n"..minetest.get_item_group(pointed_thing.name, "mineral"))
		if minetest.get_item_group(minetest.get_node(pointed_thing.under).name, "mineral") == 1 then
			return minetest.item_place(itemstack, placer, pointed_thing)
		end
	end
})

minetest.register_node("lord_ores:cave_flower_open", {
	description = SL("Cave Flower"),
	tiles = {"lord_ores_cave_flower_open.png"},
	wield_image = "lord_ores_cave_flower_open.png",
	inventory_image = "lord_ores_cave_flower_open.png",
	drawtype = "mesh",
	mesh = "lord_ores_cave_flower.obj",
	groups = {snappy = 3, oddly_breakable_by_hand = 3, attached_node = 1},
	is_ground_content = false,
	drop = "lord_ores:cave_flower_closed",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	light_source = 6,
	buildable_to = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.22, -0.5, -0.22, 0.22, -6/16, 0.22},
	},
})

minetest.register_craftitem("lord_ores:cave_fruit", {
	description = SL("Cave Fruit"),
	inventory_image = "lord_ores_cave_fruit.png",
})

minetest.register_node("lord_ores:cave_flower_mature", {
	description = SL("Cave Flower"),
	tiles = {"lord_ores_cave_flower_mature.png"},
	wield_image = "lord_ores_cave_flower_mature.png",
	inventory_image = "lord_ores_cave_flower_mature.png",
	drawtype = "mesh",
	mesh = "lord_ores_cave_flower.obj",
	groups = {snappy = 3, oddly_breakable_by_hand = 3, attached_node = 1},
	is_ground_content = false,
	paramtype = "light",
	drop = {
		max_items = 2,
		items = {{items = {"lord_ores:cave_fruit", "lord_ores:cave_flower_closed"}}},
	},
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	light_source = 17,
	buildable_to = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.22, -0.5, -0.22, 0.22, -6/16, 0.22},
	},
	on_rightclick = function(pos, node, player, itemstack)
		minetest.add_item(pos, "lord_ores:cave_fruit")
		minetest.swap_node(pos, {name = "lord_ores:cave_flower_open", param2 = minetest.get_node(pos).param2})
	end,
})

minetest.register_abm({
	label = "Close the open Cave Flower",
    name = "lord_ores:close_flower",
    nodenames = {"lord_ores:cave_flower_open"},
	interval = 10,
	chance = 10,
    action = function(pos, node)
		minetest.swap_node(pos, {name = "lord_ores:cave_flower_closed", param2 = minetest.get_node(pos).param2})
    end,
})

minetest.register_abm({
	label = "Mature the open Cave Flower",
    name = "lord_ores:mature_flower",
    nodenames = {"lord_ores:cave_flower_closed"},
	interval = 25,
	chance = 50,
    action = function(pos, node)
		minetest.swap_node(pos, {name = "lord_ores:cave_flower_mature", param2 = minetest.get_node(pos).param2})
    end,
})

minetest.register_abm({
	label = "Spawn new Cave Flower",
    name = "lord_ores:spawn_flower",
    nodenames = {"lord_ores:rough_rock"},
	interval = 25,
	chance = 50,
    action = function(pos, node)
        if (pos.y > -1024) or (minetest.find_node_near(pos, 5, {"lord_ores:cave_flower_closed", "lord_ores:cave_flower_mature", "lord_ores:cave_flower_open"})) then
			return false
		end

        if (minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z}).name == "air") then
		    minetest.set_node({x = pos.x, y = pos.y + 1, z = pos.z}, {name = "lord_ores:cave_flower_closed", param2 = 1})
        elseif minetest.get_node({x = pos.x, y = pos.y - 1, z = pos.z}).name == "air" then
            minetest.set_node({x = pos.x, y = pos.y - 1, z = pos.z}, {name = "lord_ores:cave_flower_closed", param2 = 0})
        end
    end,
})
