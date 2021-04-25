local SL = lord.require_intllib()

return {
	recipes = {
		{
			output = 'grinder:roll',
			recipe = {
				{'lord_ores:steel_ingot', 'default:diamond', 'lord_ores:steel_ingot'},
				{'carts:gear', 'lord_ores:steel_ingot', 'carts:gear'},
				{'default:diamond', 'lord_ores:steel_ingot', 'default:diamond'},
			}
		},
		{
			output = 'grinder:grinder',
			recipe = {
				{'grinder:roll', '', 'grinder:roll'},
				{'lord_ores:steel_ingot', 'carts:gear', 'lord_ores:steel_ingot'},
				{'default:obsidian', 'carts:steam_mechanism', 'default:obsidian'},
			}
		},
		{
			type = 'fuel',
			recipe = 'grinder:coal_dust',
			burntime = 50,
		},
	},
	items = {
		{
			name = 'grinder:coal_dust',
			definition = {
				description = SL('Coal dust'),
				inventory_image = 'grinder_coal_dust.png',
				groups = {fuel=1,coal=1},
			}
		},
		{
			name = 'grinder:roll',
			definition = {
				description = SL('Roll'),
				inventory_image = 'grinder_roll.png',
			}
		},
	},
}
