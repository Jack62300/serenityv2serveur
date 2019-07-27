ESX = nil
local netid 						= nil
local playerNetVehicle 	= nil
local playerVehicleClass = nil
-- local lightModel 				= 'hei_prop_wall_light_10a_cr'
local lightModel 				= 'hei_prop_wall_alarm_on'
local soundId 					= nil
local playerVehicle 		= nil
local currentSiren 			= 1
local sirensAreActive 	= false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)


RegisterNetEvent("copsrp_gyrophare:toggleBeacon")
AddEventHandler("copsrp_gyrophare:toggleBeacon", function()
	local playerPed 	= GetPlayerPed(-1)
	local xPlayer 		= ESX.GetPlayerData()
	local playerJob 	= xPlayer.job.name
	local playerCoords = GetOffsetFromEntityInWorldCoords(playerPed, 0.0, 0.0, -5.0)
	local lightSpawned = nil

	if playerJob ~= 'police' then
		return TriggerEvent('chat:addMessage', { args = { '^1SYSTEM', 'You are not a cop' } }) 
	end
	
	if IsPedInAnyVehicle(playerPed) then
		if not netid then
			playerVehicle = GetVehiclePedIsIn(playerPed, false)
			playerNetVehicle = VehToNet(playerVehicle)
			playerVehicleClass = GetVehicleClass(playerVehicle)
			
			-- Making sure it is not used in the wrong vehicles
			if playerVehicleClass > 7 then
				return TriggerEvent('chat:addMessage', { args = { '^1SYSTEM', 'Wrong type of vehicle!' } }) 
			end
			
			RequestModel(GetHashKey(lightModel))
			while not HasModelLoaded(GetHashKey(lightModel)) do Citizen.Wait(0) end
			lightSpawned = CreateObject(GetHashKey(lightModel), playerCoords.x, playerCoords.y, playerCoords.z, 1, 1, 1)
			-- SetEntityLights(lightSpawned, true)
			Citizen.Wait(1000)
			netid = ObjToNet(lightSpawned)
			SetNetworkIdExistsOnAllMachines(netid, true)
			NetworkSetNetworkIdDynamic(netid, true)
			SetNetworkIdCanMigrate(netid, false)
			
			-- AttachEntityToEntity(lightSpawned, playerVehicle, GetEntityBoneIndexByName(playerVehicle, "windscreen"), 0.25, 0.05, -0.3, 360.0, 180.0, 10.0, 1, 0, 0, 1, 0, 1)
			-- AttachEntityToEntity(lightSpawned, playerVehicle, GetEntityBoneIndexByName(playerVehicle, "windscreen"), 0.5, 0.3, -0.2, 90.0, 180.0, 10.0, 1, 0, 0, 1, 0, 1)
			AttachEntityToEntity(lightSpawned, playerVehicle, GetEntityBoneIndexByName(playerVehicle, "windscreen"), 0.35, -0.5, 0.3, 90.0, 180.0, 10.0, 1, 0, 0, 1, 0, 1)
			SetVehicleRadioEnabled(playerVehicle, false)
		else
			DetachEntity(NetToObj(netid), 1, 1)
			DeleteEntity(NetToObj(netid))
			TriggerServerEvent('copsrp_gyrophare:stopSound', playerNetVehicle)
			sirensAreActive = false
			SetVehicleRadioEnabled(playerVehicle, true)
			netid = nil
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		
		if netid then
			-- Toggle siren
			if IsControlJustReleased(0, 82) then
				if sirensAreActive then
					TriggerServerEvent('copsrp_gyrophare:stopSound', playerNetVehicle)
					sirensAreActive = false
				else
					currentSiren = 1
					TriggerServerEvent('copsrp_gyrophare:triggerSound', "VEHICLES_HORNS_SIREN_" .. currentSiren, playerNetVehicle)
					sirensAreActive = true
				end
			end
			
			-- Change siren tone
			if IsControlJustReleased(0, 81) and sirensAreActive then
				currentSiren = currentSiren + 1 
				if currentSiren == 3 then
					currentSiren = 0
					TriggerServerEvent('copsrp_gyrophare:triggerSound', "VEHICLES_HORNS_POLICE_WARNING", playerNetVehicle)
				else
					print('yep')
					TriggerServerEvent('copsrp_gyrophare:triggerSound', "VEHICLES_HORNS_SIREN_" .. currentSiren, playerNetVehicle)
				end
			end
			
		end
	end
end)

RegisterNetEvent('copsrp_gyrophare:triggerSound')
AddEventHandler('copsrp_gyrophare:triggerSound', function(soundName, vehicle, soundId)
	PlaySoundFromEntity(soundId, soundName, NetToVeh(vehicle), 0, 0, 0)
end)

RegisterNetEvent('copsrp_gyrophare:stopSound')
AddEventHandler('copsrp_gyrophare:stopSound', function(soundId, vehicle)
	PlaySoundFromEntity(soundId, "SUSPENSION_SCRIPT_FORCE", NetToVeh(vehicle), 0, 0, 0) -- Trick : playing a short song of the vehicle library
end)