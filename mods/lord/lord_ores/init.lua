local SL = lord.require_intllib()

lord_ores = {}

function lord_ores.register_materials(specs)
    local block_sounds = default.node_sound_metal_defaults()

    local ore_drop
    local block_drop

    local ore_name
    local lump_name
    local ingot_name
    local block_name

    local ore_desc
    local lump_desc
    local ingot_desc
    local block_desc

    local ore_img
    local lump_img
    local ingot_img
    local block_img

    local ore_sounds
    local block_sounds

    --Name
    if true then
        if specs.custom_ore_name ~= nil then
            ore_name = specs.custom_ore_name
        else
            ore_name = "lord_ores:"..specs.name.."_ore"
        end
        
        if specs.custom_lump_name ~= nil then
            lump_name = specs.custom_lump_name
        else
            lump_name = "lord_ores:"..specs.name.."_lump"
        end

        if specs.custom_ingot_name ~= nil then
            ingot_name = specs.custom_ingot_name
        else
            ingot_name = "lord_ores:"..specs.name.."_ingot"
        end
        
        if specs.custom_block_name ~= nil then
            block_name = specs.custom_block_name
        else
            block_name = "lord_ores:"..specs.name.."_block"
        end
    end

    --Description
    if true then
        if specs.custom_ore_desc ~= nil then
            ore_desc = specs.custom_ore_desc
        else
            ore_desc = SL(specs.description.." Ore")
        end
        
        if specs.custom_lump_desc ~= nil then
            lump_desc = specs.custom_lump_desc
        else
            lump_desc = SL(specs.description.." Lump")
        end

        if specs.custom_ingot_desc ~= nil then
            ingot_desc = specs.custom_ingot_desc
        else
            ingot_desc = SL(specs.description.." Ingot")
        end
        
        if specs.custom_block_desc ~= nil then
            block_desc = specs.custom_block_desc
        else
            block_desc = SL(specs.description.." Block")
        end
    end

    --Inventory/Wield Image
    if true then
        if specs.custom_ore_img ~= nil then
            ore_img = specs.custom_ore_img
        else
            ore_img = nil
        end
        
        if specs.custom_lump_img ~= nil then
            lump_img = specs.custom_lump_img
        else
            lump_img = "lord_ores_"..specs.name.."_lump.png"
        end

        if specs.custom_ingot_img ~= nil then
            ingot_img = specs.custom_ingot_img
        else
            ingot_img = "lord_ores_"..specs.name.."_ingot.png"
        end
        
        if specs.custom_block_img ~= nil then
            block_img = specs.custom_block_img
        else
            block_img = nil
        end
    end

    --Sounds
    if true then
        if specs.custom_ore_sounds ~= nil then
            ore_sounds = specs.custom_ore_sounds
        else
            ore_sounds = default.node_sound_stone_defaults()
        end
        
        if specs.custom_block_sounds ~= nil then
            block_sounds = specs.custom_block_sounds
        else
            if specs.is_metal == false then
                block_sounds = default.node_sound_stone_defaults()
            else
                block_sounds = default.node_sound_metal_defaults()
            end
        end
    end

    --Lump Registration
    if specs.register_lump ~= false then
        minetest.register_craftitem(lump_name, {
            description = lump_desc,
            groups = specs.lump_groups,
            inventory_image = lump_img,
			liquids_pointable = specs.lump_liquids_pointable,
			stack_max = specs.lump_stack_max,
			on_use = specs.lump_on_use,
			on_place = specs.lump_on_place,
			on_drop = specs.lump_on_drop,
        })
    end

    --Ore Registration
    if specs.register_ore ~= false then
        if specs.register_lump ~= false then 
            ore_drop = lump_name
        else
            ore_drop = ore_name
        end

        minetest.register_node(ore_name, {
            description = ore_desc,
            tiles = specs.ore_tiles or {"default_stone.png^lord_ores_"..specs.name.."_ore.png"},
            inventory_image = ore_img,
			wield_image = ore_img,
            groups = specs.ore_groups or {cracky = 2, mineral = 1},
			is_ground_content = specs.ore_is_grnd_cont,
			stack_max = specs.ore_stack_max,
            drop = specs.ore_drop or ore_drop,
            sounds = ore_sounds,
			on_construct = specs.ore_on_construct,
			on_destruct = specs.ore_on_destruct,
			after_destruct = specs.ore_after_destruct,
			on_place = specs.ore_on_place,
			on_drop = specs.ore_on_drop,
			on_use = specs.ore_on_use,
			on_punch = specs.ore_on_punch,
			on_dig = specs.ore_on_dig,
			after_place_node = specs.ore_after_place_node,
			can_dig = specs.ore_can_dig,
			after_dig_node = specs.ore_after_dig_node,
			on_rightclick = specs.ore_on_rightclick,
			on_blast = specs.ore_on_blast,
        })

        --minetest.log("Register ore "..ore_name.." = "..specs.ore["type"].." - "..specs.ore["scarity"].." - "..specs.ore["ymax"].." - "..specs.ore["ymin"])

        minetest.register_ore({
            ore_type       = specs.ore["type"] or "scatter",
            ore            = ore_name,
            wherein        = "default:stone",
            clust_scarcity = specs.ore["scarity"] or 8*8*8,
            clust_num_ores = specs.ore["num"] or 5,
            clust_size     = specs.ore["size"] or 3,
            y_min     = specs.ore["ymin"] or -31000,
            y_max     = specs.ore["ymax"] or 0,
            noise_params = specs.ore["noise"],
        })
        
        if specs.ore2 ~= nil then
            minetest.register_ore({
                ore_type       = specs.ore2["type"] or "scatter",
                ore            = ore_name,
                wherein        = "default:stone",
                clust_scarcity = specs.ore2["scarity"] or 8*8*8,
                clust_num_ores = specs.ore2["num"] or 8,
                clust_size     = specs.ore2["size"] or 3,
                y_min     = specs.ore2["ymin"] or -2048,
                y_max     = specs.ore2["ymax"] or -512,
                noise_params = 	specs.ore2["noise"],
            })
        end

        if specs.ore3 ~= nil then
            minetest.register_ore({
                ore_type       = specs.ore3["type"] or "scatter",
                ore            = ore_name,
                wherein        = "default:stone",
                clust_scarcity = specs.ore3["scarity"] or 8*8*8,
                clust_num_ores = specs.ore3["num"] or 12,
                clust_size     = specs.ore3["size"] or 3,
                y_min     = specs.ore3["ymin"] or -31000,
                y_max     = specs.ore3["ymax"] or -2048,
                noise_params = 	specs.ore3["noise"],
            })
        end

        if specs.ore4 ~= nil then
            minetest.register_ore({
                ore_type       = specs.ore4["type"] or "scatter",
                ore            = ore_name,
                wherein        = "default:stone",
                clust_scarcity = specs.ore4["scarity"] or 8*8*8,
                clust_num_ores = specs.ore4["num"] or 12,
                clust_size     = specs.ore4["size"] or 3,
                y_min     = specs.ore4["ymin"] or -31000,
                y_max     = specs.ore4["ymax"] or -2048,
                noise_params = 	specs.ore4["noise"],
            })
        end
    end

    --Ingot Registration
    if specs.register_ingot ~= false then
        minetest.register_craftitem(ingot_name, {
            description = ingot_desc,
            groups = specs.ingot_groups,
            inventory_image = ingot_img,
			liquids_pointable = specs.ingot_liquids_pointable,
			stack_max = specs.ingot_stack_max,
			on_use = specs.ingot_on_use,
			on_place = specs.ingot_on_place,
			on_drop = specs.ingot_on_drop,
        })

        minetest.register_craft({
            type = "cooking",
            output = ingot_name,
            recipe = specs.custom_item_group or "group:"..specs.name.."_item",
        })

        if specs.register_lump ~= false then
            minetest.register_craft({
                type = "cooking",
                cooktime = specs.lump_cooktime,
                output = ingot_name,
                recipe = lump_name,
            })
        end
    end

    --Block Registration
    if specs.register_block ~= false then

        minetest.register_node(block_name, {
            description = block_desc,
            tiles = specs.tiles or {"default_stone.png^lord_ores_"..specs.name.."_block.png"},
            inventory_image = block_img,
			wield_image = block_img,
            groups = specs.block_groups or {cracky = 1},
			is_ground_content = specs.block_is_grnd_cont,
			stack_max = specs.block_stack_max,
            drop = specs.block_drop or block_name,
            sounds = block_sounds,
			on_construct = specs.block_on_construct,
			on_destruct = specs.block_on_destruct,
			after_destruct = specs.block_after_destruct,
			on_place = specs.block_on_place,
			on_drop = specs.block_on_drop,
			on_use = specs.block_on_use,
			on_punch = specs.block_on_punch,
			on_dig = specs.block_on_dig,
			after_place_node = specs.block_after_place_node,
			can_dig = specs.block_can_dig,
			after_dig_node = specs.block_after_dig_node,
			on_rightclick = specs.block_on_rightclick,
			on_blast = specs.block_on_blast,
        })

        if (specs.register_ingot ~= false) and (specs.register_block_crafts ~= false) then
			if specs.block_craft_4 == true then
				minetest.register_craft({
					output = ingot_name.." 4",
					recipe = {
						{block_name},
					}
				})
	
				minetest.register_craft({
					output = block_name,
					recipe = {
						{ingot_name, ingot_name},
						{ingot_name, ingot_name},
					}
				})
			else
				minetest.register_craft({
					output = ingot_name.." 9",
					recipe = {
						{block_name},
					}
				})

				minetest.register_craft({
					output = block_name,
					recipe = {
						{ingot_name, ingot_name, ingot_name},
						{ingot_name, ingot_name, ingot_name},
						{ingot_name, ingot_name, ingot_name},
					}
				})
			end
        end

        if specs.lump_as_ingot == true then
			if specs.block_craft_4 == true then
				minetest.register_craft({
					output = ingot_name.." 4",
					recipe = {
						{block_name},
					}
				})
	
				minetest.register_craft({
					output = block_name,
					recipe = {
						{lump_name, lump_name},
						{lump_name, lump_name},
					}
				})
			else
				minetest.register_craft({
					output = ingot_name.." 9",
					recipe = {
						{block_name},
					}
				})

				minetest.register_craft({
					output = block_name,
					recipe = {
						{ lump_name, lump_name, lump_name},
						{lump_name, lump_name, lump_name},
						{lump_name, lump_name, lump_name},
					}
				})
			end
        end
    end

    if specs.register_slab_and_stair ~= false then
        stairs.register_stair_and_slab(specs.name, "lord_ores:"..specs.name,
        specs.block_groups or {cracky = 1},
		specs.tiles or {"default_stone.png^lord_ores_"..specs.name.."_block.png"},
		specs.custom_stair_description or SL(specs.description.." Stair"),
		specs.custom_slab_description or SL(specs.description.." Slab"),
		block_sounds)
    end
end

dofile(minetest.get_modpath(minetest.get_current_modname()) .. "/registrations.lua")
dofile(minetest.get_modpath(minetest.get_current_modname()) .. "/cave_flower.lua")

lord.mod_loaded()
