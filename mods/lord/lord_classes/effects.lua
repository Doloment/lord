local effects = {}
effects.decrease_hp = {}
effects.sauron_eye  = {}

local dmg_timer = 5
local eye_timer = 10

local function decrease_hp()
	for _, player in pairs(effects.decrease_hp) do
		if player:get_hp() >= 2 then
			player:set_hp(player:get_hp() - 2)
		end
	end
	minetest.after(dmg_timer, decrease_hp)
end

local function sauron_eye()
	for _, player in pairs(effects.sauron_eye) do
		local ppos = player:get_pos()
		local pvel = player:get_player_velocity()
		if pvel == {x=0, y=0, z=0} then pvel = player:get_look_dir() end
		local obj = minetest.add_entity()
		--[[minetest.add_particle({
			pos = {x=ppos.x, y=ppos.y+1.5, z=ppos.z},
			velocity = pvel,
			expirationtime = 5,
			size = 25,
			collisiondetection = false,
			vertical = false,
			texture = "sauron_eye.png",
			playername = player:get_player_name(),
		})]]
	end
	minetest.after(eye_timer, sauron_eye)
end

-- не нагружаем сервер, а проверяем только раз в секунду
local step_delta_time = 0
local area_id         = tonumber(minetest.settings:get("sauron_curse_area"))

local function check_player_pos(dtime)
	step_delta_time = step_delta_time + dtime
	if step_delta_time < 1 then
		return
	end

	for _, player in pairs(minetest.get_connected_players()) do
		local pos = vector.round(player:get_pos())
		local player_areas = areas:getAreasAtPos(pos)
		local player_name = player:get_player_name()
		if player_areas[area_id] and races.get_race(player_name) == "hobbit" then
			effects.decrease_hp[player_name] = player
			effects.sauron_eye[player_name] = player
		else
			if effects.decrease_hp[player_name] or effects.sauron_eye[player_name] then
				effects.decrease_hp[player_name] = nil
				effects.sauron_eye[player_name] = nil
			end
		end
	end

	step_delta_time = 0
end

---------------------------------------------------------------------------
---                   Регистрируем функционал                           ---
---------------------------------------------------------------------------
-- если нет конфига, выходим - не регистрируем дальнейший ф-ционал
if not area_id then
	return
end

minetest.after(dmg_timer, decrease_hp)
minetest.after(eye_timer, sauron_eye)
minetest.register_globalstep(check_player_pos)
