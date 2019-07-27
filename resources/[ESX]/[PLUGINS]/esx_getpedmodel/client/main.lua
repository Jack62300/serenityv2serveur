RegisterNetEvent('esx:setPlayerModel')
AddEventHandler('esx:setPlayerModel', function(model)
	RequestModel(model)
	while not HasModelLoaded(model) do
		Citizen.Wait(0)
	end
	SetPlayerModel(PlayerId(), model)
	SetModelAsNoLongerNeeded(model)
end)