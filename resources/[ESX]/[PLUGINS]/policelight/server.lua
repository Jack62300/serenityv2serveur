ESX = nil
local vehicleLights = {}
local currentSoundId = 0

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

TriggerEvent('es:addGroupCommand', 'lights', 'user', function(source, args, user)
	TriggerClientEvent('copsrp_gyrophare:toggleBeacon', source, args[2])
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient Permissions.' } })
end, {help = "Place or remove a beacon on your car", params = {}})

RegisterNetEvent('copsrp_gyrophare:triggerSound')
AddEventHandler('copsrp_gyrophare:triggerSound', function(soundName, vehicle)
	if vehicleLights[vehicle] == nil then
		vehicleLights[vehicle] = currentSoundId
		currentSoundId = currentSoundId + 1
		print(vehicleLights[vehicle])
	end

	TriggerClientEvent('copsrp_gyrophare:triggerSound', -1, soundName, vehicle, vehicleLights[vehicle])
end)

RegisterNetEvent('copsrp_gyrophare:stopSound')
AddEventHandler('copsrp_gyrophare:stopSound', function(vehicle)
	TriggerClientEvent('copsrp_gyrophare:stopSound', -1, vehicleLights[vehicle], vehicle)
end)