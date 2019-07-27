ESX          = nil
local IsDead = false
local IsAnimated = false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

AddEventHandler('esx_basicneeds:resetStatus', function()
	TriggerEvent('esx_status:set', 'hunger', 500000)
	TriggerEvent('esx_status:set', 'thirst', 500000)

end)

AddEventHandler('playerSpawned', function()

	if IsDead then
		TriggerEvent('esx_basicneeds:resetStatus')
	end

	IsDead = false
end)

AddEventHandler('esx_status:loaded', function(status)

	TriggerEvent('esx_status:registerStatus', 'hunger', 1000000, '#CFAD0F',
		function(status)
			return true
		end,
		function(status)
			status.remove(100)
		end
	)

	TriggerEvent('esx_status:registerStatus', 'thirst', 1000000, '#0C98F1',
		function(status)
			return true
		end,
		function(status)
			status.remove(120)
		end
	)

	Citizen.CreateThread(function()

		while true do

			Wait(1000)

			local playerPed  = GetPlayerPed(-1)
			local prevHealth = GetEntityHealth(playerPed)
			local health     = prevHealth

			TriggerEvent('esx_status:getStatus', 'hunger', function(status)
				
				if status.val == 0 then

					if prevHealth <= 150 then
						health = health - 5
					else
						health = health - 1
					end

				end

			end)

			TriggerEvent('esx_status:getStatus', 'thirst', function(status)
				
				if status.val == 0 then

					if prevHealth <= 150 then
						health = health - 5
					else
						health = health - 1
					end

				end

			end)

			if health ~= prevHealth then
				SetEntityHealth(playerPed,  health)
			end

		end

	end)

	Citizen.CreateThread(function()

		while true do

			Wait(0)

			local playerPed = GetPlayerPed(-1)
			
			if IsEntityDead(playerPed) and not IsDead then
				IsDead = true
			end

		end

	end)

end)

AddEventHandler('esx_basicneeds:isEating', function(cb)
	cb(IsAnimated)
end)

RegisterNetEvent('esx_basicneeds:onEat')
AddEventHandler('esx_basicneeds:onEat', function(prop_name)
    if not IsAnimated then
 		local prop_name = prop_name or 'prop_cs_burger_01'
     	IsAnimated = true
 	    local playerPed = GetPlayerPed(-1)
 	    Citizen.CreateThread(function()
 	        local x,y,z = table.unpack(GetEntityCoords(playerPed))
 	        prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2,  true,  true, true)
 	        AttachEntityToEntity(prop, playerPed, GetPedBoneIndex(playerPed, 18905), 0.12, 0.028, 0.001, 10.0, 175.0, 0.0, true, true, false, true, 1, true)
 	        RequestAnimDict('mp_player_inteat@burger')
 	        while not HasAnimDictLoaded('mp_player_inteat@burger') do
 	            Wait(0)
 	        end
 	        TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 1.0, -1.0, 2000, 1, 0, 0, 0, 0)
 	        Wait(3000)
 	        IsAnimated = false
 	        ClearPedSecondaryTask(playerPed)
			ClearPedTasks(playerPed)
 	        DeleteObject(prop)
 	    end)
 	end
 end)
 
 
 RegisterNetEvent('esx_basicneeds:onEatBin')
AddEventHandler('esx_basicneeds:onEatBin', function(prop_name)
    if not IsAnimated then
 		local prop_name = prop_name or 'prop_food_bin_01'
     	IsAnimated = true
 	    local playerPed = GetPlayerPed(-1)
 	    Citizen.CreateThread(function()
 	        local x,y,z = table.unpack(GetEntityCoords(playerPed))
 	        prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2,  true,  true, true)
 	        AttachEntityToEntity(prop, playerPed, GetPedBoneIndex(playerPed, 18905), 0.12, 0.028, 0.001, 10.0, 175.0, 0.0, true, true, false, true, 1, true)
 	        RequestAnimDict('mp_player_inteat@burger')
 	        while not HasAnimDictLoaded('mp_player_inteat@burger') do
 	            Wait(0)
 	        end
 	        TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 1.0, -1.0, 2000, 1, 0, 0, 0, 0)
 	        Wait(3000)
 	        IsAnimated = false
 	        ClearPedSecondaryTask(playerPed)
			ClearPedTasks(playerPed)
 	        DeleteObject(prop)
 	    end)
 	end
 end)
 
  RegisterNetEvent('esx_basicneeds:onEatCups01')
AddEventHandler('esx_basicneeds:onEatCups01', function(prop_name)
    if not IsAnimated then
 		local prop_name = prop_name or 'prop_energy_drink'
     	IsAnimated = true
 	    local playerPed = GetPlayerPed(-1)
 	    Citizen.CreateThread(function()
 	        local x,y,z = table.unpack(GetEntityCoords(playerPed))
 	        prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2,  true,  true, true)
 	        AttachEntityToEntity(prop, playerPed, GetPedBoneIndex(playerPed, 18905), 0.12, 0.028, 0.001, 280.0, 175.0, 0.0, true, true, false, true, 1, true)
 	        RequestAnimDict('mp_player_inteat@burger')
 	        while not HasAnimDictLoaded('mp_player_inteat@burger') do
 	            Wait(0)
 	        end
 	        TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 1.0, -1.0, 2000, 1, 0, 0, 0, 0)
 	        Wait(3000)
 	        IsAnimated = false
 	        ClearPedSecondaryTask(playerPed)
			ClearPedTasks(playerPed)
 	        DeleteObject(prop)
 	    end)
 	end
 end)
 
 
   RegisterNetEvent('esx_basicneeds:onEatDonut')
AddEventHandler('esx_basicneeds:onEatDonut', function(prop_name)
    if not IsAnimated then
 		local prop_name = prop_name or 'prop_donut_02'
     	IsAnimated = true
 	    local playerPed = GetPlayerPed(-1)
 	    Citizen.CreateThread(function()
 	        local x,y,z = table.unpack(GetEntityCoords(playerPed))
 	        prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2,  true,  true, true)
 	        AttachEntityToEntity(prop, playerPed, GetPedBoneIndex(playerPed, 18905), 0.12, 0.028, 0.001, 0.0, 175.0, 0.0, true, true, false, true, 1, true)
 	        RequestAnimDict('mp_player_inteat@burger')
 	        while not HasAnimDictLoaded('mp_player_inteat@burger') do
 	            Wait(0)
 	        end
 	        TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 1.0, -1.0, 2000, 1, 0, 0, 0, 0)
 	        Wait(3000)
 	        IsAnimated = false
 	        ClearPedSecondaryTask(playerPed)
			ClearPedTasks(playerPed)
 	        DeleteObject(prop)
 	    end)
 	end
 end)
 
    RegisterNetEvent('esx_basicneeds:onChips')
AddEventHandler('esx_basicneeds:onChips', function(prop_name)
    if not IsAnimated then
 		local prop_name = prop_name or 'prop_ld_snack_01'
     	IsAnimated = true
 	    local playerPed = GetPlayerPed(-1)
 	    Citizen.CreateThread(function()
 	        local x,y,z = table.unpack(GetEntityCoords(playerPed))
 	        prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2,  true,  true, true)
 	        AttachEntityToEntity(prop, playerPed, GetPedBoneIndex(playerPed, 18905), 0.12, 0.028, 0.001, 0.0, 175.0, 0.0, true, true, false, true, 1, true)
 	        RequestAnimDict('mp_player_inteat@burger')
 	        while not HasAnimDictLoaded('mp_player_inteat@burger') do
 	            Wait(0)
 	        end
 	        TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 1.0, -1.0, 2000, 1, 0, 0, 0, 0)
 	        Wait(3000)
 	        IsAnimated = false
 	        ClearPedSecondaryTask(playerPed)
			ClearPedTasks(playerPed)
 	        DeleteObject(prop)
 	    end)
 	end
 end)
 
    RegisterNetEvent('esx_basicneeds:onSteack')
AddEventHandler('esx_basicneeds:onSteack', function(prop_name)
    if not IsAnimated then
 		local prop_name = prop_name or 'prop_cs_steak'
     	IsAnimated = true
 	    local playerPed = GetPlayerPed(-1)
 	    Citizen.CreateThread(function()
 	        local x,y,z = table.unpack(GetEntityCoords(playerPed))
 	        prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2,  true,  true, true)
 	        AttachEntityToEntity(prop, playerPed, GetPedBoneIndex(playerPed, 18905), 0.12, 0.028, 0.001, 0.0, 175.0, 0.0, true, true, false, true, 1, true)
 	        RequestAnimDict('mp_player_inteat@burger')
 	        while not HasAnimDictLoaded('mp_player_inteat@burger') do
 	            Wait(0)
 	        end
 	        TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 1.0, -1.0, 2000, 1, 0, 0, 0, 0)
 	        Wait(3000)
 	        IsAnimated = false
 	        ClearPedSecondaryTask(playerPed)
			ClearPedTasks(playerPed)
 	        DeleteObject(prop)
 	    end)
 	end
 end)
 
RegisterNetEvent('esx_basicneeds:onHotdog')
AddEventHandler('esx_basicneeds:onHotdog', function(prop_name)
    if not IsAnimated then
 		local prop_name = prop_name or 'prop_cs_hotdog_02'
     	IsAnimated = true
 	    local playerPed = GetPlayerPed(-1)
 	    Citizen.CreateThread(function()
 	        local x,y,z = table.unpack(GetEntityCoords(playerPed))
 	        prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2,  true,  true, true)
 	        AttachEntityToEntity(prop, playerPed, GetPedBoneIndex(playerPed, 18905), 0.12, 0.028, 0.001, 0.0, 175.0, 0.0, true, true, false, true, 1, true)
 	        RequestAnimDict('mp_player_inteat@burger')
 	        while not HasAnimDictLoaded('mp_player_inteat@burger') do
 	            Wait(0)
 	        end
 	        TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 1.0, -1.0, 2000, 1, 0, 0, 0, 0)
 	        Wait(3000)
 	        IsAnimated = false
 	        ClearPedSecondaryTask(playerPed)
			ClearPedTasks(playerPed)
 	        DeleteObject(prop)
 	    end)
 	end
 end)
 
RegisterNetEvent('esx_basicneeds:onCawet')
AddEventHandler('esx_basicneeds:onCawet', function(prop_name)
    if not IsAnimated then
 		local prop_name = prop_name or 'prop_peanut_bowl_01'
     	IsAnimated = true
 	    local playerPed = GetPlayerPed(-1)
 	    Citizen.CreateThread(function()
 	        local x,y,z = table.unpack(GetEntityCoords(playerPed))
 	        prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2,  true,  true, true)
 	        AttachEntityToEntity(prop, playerPed, GetPedBoneIndex(playerPed, 18905), 0.12, 0.028, 0.001, 0.0, 175.0, 0.0, true, true, false, true, 1, true)
 	        RequestAnimDict('mp_player_inteat@burger')
 	        while not HasAnimDictLoaded('mp_player_inteat@burger') do
 	            Wait(0)
 	        end
 	        TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 1.0, -1.0, 2000, 1, 0, 0, 0, 0)
 	        Wait(3000)
 	        IsAnimated = false
 	        ClearPedSecondaryTask(playerPed)
			ClearPedTasks(playerPed)
 	        DeleteObject(prop)
 	    end)
 	end
 end)
 
 
 RegisterNetEvent('esx_basicneeds:onFrites')
AddEventHandler('esx_basicneeds:onFrites', function(prop_name)
    if not IsAnimated then
 		local prop_name = prop_name or 'prop_food_bs_chips.yft'
     	IsAnimated = true
 	    local playerPed = GetPlayerPed(-1)
 	    Citizen.CreateThread(function()
 	        local x,y,z = table.unpack(GetEntityCoords(playerPed))
 	        prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2,  true,  true, true)
 	        AttachEntityToEntity(prop, playerPed, GetPedBoneIndex(playerPed, 18905), 0.12, 0.028, 0.001, 0.0, 175.0, 0.0, true, true, false, true, 1, true)
 	        RequestAnimDict('mp_player_inteat@burger')
 	        while not HasAnimDictLoaded('mp_player_inteat@burger') do
 	            Wait(0)
 	        end
 	        TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 1.0, -1.0, 2000, 1, 0, 0, 0, 0)
 	        Wait(3000)
 	        IsAnimated = false
 	        ClearPedSecondaryTask(playerPed)
			ClearPedTasks(playerPed)
 	        DeleteObject(prop)
 	    end)
 	end
 end)
 
      RegisterNetEvent('esx_basicneeds:onNuggets')
AddEventHandler('esx_basicneeds:onNuggets', function(prop_name)
    if not IsAnimated then
 		local prop_name = prop_name or 'prop_food_cb_nugets'
     	IsAnimated = true
 	    local playerPed = GetPlayerPed(-1)
 	    Citizen.CreateThread(function()
 	        local x,y,z = table.unpack(GetEntityCoords(playerPed))
 	        prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2,  true,  true, true)
 	        AttachEntityToEntity(prop, playerPed, GetPedBoneIndex(playerPed, 18905), 0.12, 0.028, 0.001, 0.0, 175.0, 0.0, true, true, false, true, 1, true)
 	        RequestAnimDict('mp_player_inteat@burger')
 	        while not HasAnimDictLoaded('mp_player_inteat@burger') do
 	            Wait(0)
 	        end
 	        TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 1.0, -1.0, 2000, 1, 0, 0, 0, 0)
 	        Wait(3000)
 	        IsAnimated = false
 	        ClearPedSecondaryTask(playerPed)
			ClearPedTasks(playerPed)
 	        DeleteObject(prop)
 	    end)
 	end
 end)
 
      RegisterNetEvent('esx_basicneeds:onSandw')
AddEventHandler('esx_basicneeds:onSandw', function(prop_name)
    if not IsAnimated then
 		local prop_name = prop_name or 'prop_sandwich_01'
     	IsAnimated = true
 	    local playerPed = GetPlayerPed(-1)
 	    Citizen.CreateThread(function()
 	        local x,y,z = table.unpack(GetEntityCoords(playerPed))
 	        prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2,  true,  true, true)
 	        AttachEntityToEntity(prop, playerPed, GetPedBoneIndex(playerPed, 18905), 0.12, 0.028, 0.001, 0.0, 175.0, 0.0, true, true, false, true, 1, true)
 	        RequestAnimDict('mp_player_inteat@burger')
 	        while not HasAnimDictLoaded('mp_player_inteat@burger') do
 	            Wait(0)
 	        end
 	        TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 1.0, -1.0, 2000, 1, 0, 0, 0, 0)
 	        Wait(3000)
 	        IsAnimated = false
 	        ClearPedSecondaryTask(playerPed)
			ClearPedTasks(playerPed)
 	        DeleteObject(prop)
 	    end)
 	end
 end)
 
 


RegisterNetEvent('esx_basicneeds:onDrink')
AddEventHandler('esx_basicneeds:onDrink', function(prop_name)
	if not IsAnimated then
		local prop_name = prop_name or 'prop_ld_flow_bottle'
		IsAnimated = true
		local playerPed = GetPlayerPed(-1)
		Citizen.CreateThread(function()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2,  true,  true, true)			
	        AttachEntityToEntity(prop, playerPed, GetPedBoneIndex(playerPed, 18905), 0.12, -0.038, 0.001, 300.0, 100.0, 0.0, true, true, false, true, 1, true)
			RequestAnimDict('mp_player_intdrink')  
			while not HasAnimDictLoaded('mp_player_intdrink') do
				Wait(0)
			end
			TaskPlayAnim(playerPed, 'mp_player_intdrink', 'loop_bottle', 1.0, -1.0, 2000, 1, 0, 0, 0, 0)
			Wait(3000)
	        IsAnimated = false
	        ClearPedSecondaryTask(playerPed)
			ClearPedTasks(playerPed)
			DeleteObject(prop)
		end)
	end
end)

RegisterNetEvent('esx_basicneeds:onFanta')
AddEventHandler('esx_basicneeds:onFanta', function(prop_name)
	if not IsAnimated then
		local prop_name = prop_name or 'prop_orang_can_01'
		IsAnimated = true
		local playerPed = GetPlayerPed(-1)
		Citizen.CreateThread(function()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2,  true,  true, true)			
	        AttachEntityToEntity(prop, playerPed, GetPedBoneIndex(playerPed, 18905), 0.12, -0.038, 0.001, 300.0, 100.0, 0.0, true, true, false, true, 1, true)
			RequestAnimDict('mp_player_intdrink')  
			while not HasAnimDictLoaded('mp_player_intdrink') do
				Wait(0)
			end
			TaskPlayAnim(playerPed, 'mp_player_intdrink', 'loop_bottle', 1.0, -1.0, 2000, 1, 0, 0, 0, 0)
			Wait(3000)
	        IsAnimated = false
	        ClearPedSecondaryTask(playerPed)
			ClearPedTasks(playerPed)
			DeleteObject(prop)
		end)
	end
end)

RegisterNetEvent('esx_basicneeds:onBeer')
AddEventHandler('esx_basicneeds:onBeer', function(prop_name)
	if not IsAnimated then
		local prop_name = prop_name or 'prop_beer_bison'
		IsAnimated = true
		local playerPed = GetPlayerPed(-1)
		Citizen.CreateThread(function()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2,  true,  true, true)			
	        AttachEntityToEntity(prop, playerPed, GetPedBoneIndex(playerPed, 18905), 0.12, -0.038, 0.001, 300.0, 100.0, 0.0, true, true, false, true, 1, true)
			RequestAnimDict('mp_player_intdrink')  
			while not HasAnimDictLoaded('mp_player_intdrink') do
				Wait(0)
			end
			TaskPlayAnim(playerPed, 'mp_player_intdrink', 'loop_bottle', 1.0, -1.0, 2000, 1, 0, 0, 0, 0)
			Wait(3000)
	        IsAnimated = false
	        ClearPedSecondaryTask(playerPed)
			ClearPedTasks(playerPed)
			DeleteObject(prop)
		end)
	end
end)

RegisterNetEvent('esx_basicneeds:onEnergy')
AddEventHandler('esx_basicneeds:onEnergy', function(prop_name)
	if not IsAnimated then
		local prop_name = prop_name or 'prop_energy_drink'
		IsAnimated = true
		local playerPed = GetPlayerPed(-1)
		Citizen.CreateThread(function()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2,  true,  true, true)			
	        AttachEntityToEntity(prop, playerPed, GetPedBoneIndex(playerPed, 18905), 0.12, -0.038, 0.001, 300.0, 100.0, 0.0, true, true, false, true, 1, true)
			RequestAnimDict('mp_player_intdrink')  
			while not HasAnimDictLoaded('mp_player_intdrink') do
				Wait(0)
			end
			TaskPlayAnim(playerPed, 'mp_player_intdrink', 'loop_bottle', 1.0, -1.0, -1, 1, 0, 0, 0, 0)
			Wait(3000)
	        IsAnimated = false
	        ClearPedSecondaryTask(playerPed)
			ClearPedTasks(playerPed)
			DeleteObject(prop)
		end)
	end
end)


RegisterNetEvent('esx_basicneeds:onWhisky')
AddEventHandler('esx_basicneeds:onWhisky', function(prop_name)
	if not IsAnimated then
		local prop_name = prop_name or 'ba_prop_battle_whiskey_bottle_2_s'
		IsAnimated = true
		local playerPed = GetPlayerPed(-1)
		Citizen.CreateThread(function()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2,  true,  true, true)			
	        AttachEntityToEntity(prop, playerPed, GetPedBoneIndex(playerPed, 18905), 0.12, -0.038, 0.001, 300.0, 100.0, 0.0, true, true, false, true, 1, true)
			RequestAnimDict('mp_player_intdrink')  
			while not HasAnimDictLoaded('mp_player_intdrink') do
				Wait(0)
			end
			TaskPlayAnim(playerPed, 'mp_player_intdrink', 'loop_bottle', 1.0, -1.0, -1, 1, 0, 0, 0, 0)
			Wait(3000)
	        IsAnimated = false
	        ClearPedSecondaryTask(playerPed)
			ClearPedTasks(playerPed)
			DeleteObject(prop)
		end)
	end
end)

RegisterNetEvent('esx_basicneeds:onEvian')
AddEventHandler('esx_basicneeds:onEvian', function(prop_name)
	if not IsAnimated then
		local prop_name = prop_name or 'ba_prop_club_water_bottle'
		IsAnimated = true
		local playerPed = GetPlayerPed(-1)
		Citizen.CreateThread(function()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2,  true,  true, true)			
	        AttachEntityToEntity(prop, playerPed, GetPedBoneIndex(playerPed, 18905), 0.12, -0.038, 0.001, 300.0, 100.0, 0.0, true, true, false, true, 1, true)
			RequestAnimDict('mp_player_intdrink')  
			while not HasAnimDictLoaded('mp_player_intdrink') do
				Wait(0)
			end
			TaskPlayAnim(playerPed, 'mp_player_intdrink', 'loop_bottle', 1.0, -1.0, -1, 1, 0, 0, 0, 0)
			Wait(3000)
	        IsAnimated = false
	        ClearPedSecondaryTask(playerPed)
			ClearPedTasks(playerPed)
			DeleteObject(prop)
		end)
	end
end)

RegisterNetEvent('esx_basicneeds:onSoda')
AddEventHandler('esx_basicneeds:onSoda', function(prop_name)
	if not IsAnimated then
		local prop_name = prop_name or 'ba_prop_club_tonic_can'
		IsAnimated = true
		local playerPed = GetPlayerPed(-1)
		Citizen.CreateThread(function()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2,  true,  true, true)			
	        AttachEntityToEntity(prop, playerPed, GetPedBoneIndex(playerPed, 18905), 0.12, -0.038, 0.001, 300.0, 100.0, 0.0, true, true, false, true, 1, true)
			RequestAnimDict('mp_player_intdrink')  
			while not HasAnimDictLoaded('mp_player_intdrink') do
				Wait(0)
			end
			TaskPlayAnim(playerPed, 'mp_player_intdrink', 'loop_bottle', 1.0, -1.0, -1, 1, 0, 0, 0, 0)
			Wait(3000)
	        IsAnimated = false
	        ClearPedSecondaryTask(playerPed)
			ClearPedTasks(playerPed)
			DeleteObject(prop)
		end)
	end
end)

RegisterNetEvent('esx_basicneeds:onCoca')
AddEventHandler('esx_basicneeds:onCoca', function(prop_name)
	if not IsAnimated then
		local prop_name = prop_name or 'prop_ld_can_01'
		IsAnimated = true
		local playerPed = GetPlayerPed(-1)
		Citizen.CreateThread(function()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2,  true,  true, true)			
	        AttachEntityToEntity(prop, playerPed, GetPedBoneIndex(playerPed, 18905), 0.12, -0.038, 0.001, 300.0, 100.0, 0.0, true, true, false, true, 1, true)
			RequestAnimDict('mp_player_intdrink')  
			while not HasAnimDictLoaded('mp_player_intdrink') do
				Wait(0)
			end
			TaskPlayAnim(playerPed, 'mp_player_intdrink', 'loop_bottle', 1.0, -1.0, -1, 1, 0, 0, 0, 0)
			Wait(3000)
	        IsAnimated = false
	        ClearPedSecondaryTask(playerPed)
			ClearPedTasks(playerPed)
			DeleteObject(prop)
		end)
	end
end)


RegisterNetEvent('esx_basicneeds:onTest')
AddEventHandler('esx_basicneeds:onTest', function(prop_name)
	if not IsAnimated then
		local prop_name = prop_name or 'prop_oiltub_01'
		IsAnimated = true
		local playerPed = GetPlayerPed(-1)
		Citizen.CreateThread(function()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2,  true,  true, true)			
	        AttachEntityToEntity(prop, playerPed, GetPedBoneIndex(playerPed, 18905), 0.12, 0.028, 0.001, 300.0, 175.0, 0.0, true, true, false, true, 1, true)
			RequestAnimDict('mp_player_intdrink')  
			while not HasAnimDictLoaded('mp_player_intdrink') do
				Wait(0)
			end
			TaskPlayAnim(playerPed, 'mp_player_intdrink', 'loop_bottle', 1.0, -1.0, -1, 1, 0, 0, 0, 0)
			Wait(3000)
	        IsAnimated = false
	        ClearPedSecondaryTask(playerPed)
			ClearPedTasks(playerPed)
			DeleteObject(prop)
		end)
	end
end)

RegisterNetEvent('esx_basicneeds:onDrinkCoffee')
AddEventHandler('esx_basicneeds:onDrinkCoffee', function(prop_name)
	if not IsAnimated then
		local prop_name = prop_name or 'p_amb_coffeecup_01'
		IsAnimated = true
		local playerPed = GetPlayerPed(-1)
		Citizen.CreateThread(function()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2,  true,  true, true)			
	        AttachEntityToEntity(prop, playerPed, GetPedBoneIndex(playerPed, 18905), 0.12, 0.028, 0.001, 10.0, 175.0, 0.0, true, true, false, true, 1, true)
			RequestAnimDict('mp_player_intdrink')  
			while not HasAnimDictLoaded('mp_player_intdrink') do
				Wait(0)
			end
			TaskPlayAnim(playerPed, 'mp_player_intdrink', 'loop_bottle', 1.0, -1.0, 2000, 1, 0, 0, 0, 0)
			Wait(3000)
	        IsAnimated = false
	        ClearPedSecondaryTask(playerPed)
			ClearPedTasks(playerPed)
			DeleteObject(prop)
		end)
	end
end)





RegisterNetEvent('esx_basicneeds:onSmoke')
AddEventHandler('esx_basicneeds:onSmoke', function(prop_name)
	
	if not IsAnimated then
		local prop_name = prop_name or 'prop_cigar_01'
		IsAnimated = true
		local playerPed = GetPlayerPed(-1)
		local playerID = PlayerId()
		Citizen.CreateThread(function()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2,  true,  true, true)			
	        AttachEntityToEntity(prop, playerPed, GetPedBoneIndex(playerPed, 18905), 0.12, 0.028, 0.001, 10.0, 175.0, 0.0, true, true, false, true, 1, true)
			TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING", 0, true)
			Wait(30000)
	        IsAnimated = false
	        ClearPedSecondaryTask(playerPed)
			ClearPedTasksImmediately(playerPed)
			DeleteObject(prop)
			ESX.ShowNotification("Bonne petite clope vous vous sentez plus fort")
	
			local timer = 0
			while timer < 60 do
			ResetPlayerStamina(PlayerId())
			SetPedMoveRateOverride(GetPlayerPed(-1),1.2)
			SetGravityLevel(0)
			Citizen.Wait(1000)
			print(timer)
			timer = timer + 1
			end
			SetPedMoveRateOverride(GetPlayerPed(-1),1.0)
			SetGravityLevel(0)
			ESX.ShowNotification("L'effet du tabac se dissipe")
		end)
	end
	
end)
