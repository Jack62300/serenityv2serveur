POS_actual = 1
PED_hasBeenTeleported = false
generalLoaded = false

function teleport(pos)
    local ped = GetPlayerPed(-1)
    Citizen.CreateThread(function()
        PED_hasBeenTeleported = true
        NetworkFadeOutEntity(ped, true, false)
        Citizen.Wait(500)

        SetEntityCoords(ped, pos.x, pos.y, pos.z, 1, 0, 0, 1)
        SetEntityHeading(ped, pos.h)
        NetworkFadeInEntity(ped, 0)

        Citizen.Wait(500)
        PED_hasBeenTeleported = false
    end)
end


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        local ped = GetPlayerPed(-1)
        local playerPos = GetEntityCoords(ped, true)

        for i,pos in pairs(INTERIORS) do
            DrawMarker(-1, pos.x, pos.y, pos.z-1, 0, 0, 0, 0, 0, 0, 1.0,1.0,0.5, 255,255,255, 200, 0, 0, 2, 0, 0, 0, 0)
            if (Vdist(playerPos.x, playerPos.y, playerPos.z, pos.x, pos.y, pos.z) < 1.0) and (not PED_hasBeenTeleported) then
                POS_actual = pos.id
                if not gui_interiors.opened then
                    gui_interiors_OpenMenu()
                end
            end
        end
    end
end)

local PNJS = {
	{id=1, Name=PnjCokeField,      modelHash="a_m_y_beach_01",     x = -300.040588,        y = 2523.377441,     z = 73.973251,       heading=161.380455, animation='WORLD_HUMAN_GARDENER_PLANT',   VoiceName="GANG_MEXGOON_R2PVG", Ambiance="AMMUCITY", Weapon="WEAPON_PISTOL"},
	{id=2, Name=PnjCokeProcessing, modelHash="a_m_y_genstreet_01", x = -631.32794189453,   y = -237.5354309082, z = 51.253349304199, heading=127.380455, animation='WORLD_HUMAN_SMOKING',          VoiceName="PRISONER_PVG",       Ambiance="AMMUCITY", Weapon="WEAPON_PISTOL"},
	{id=3, Name=PnjOpiumDealer,    modelHash="a_m_y_downtown_01" , x = -2171.2829589844,   y = 4290.2314453125, z = 49.011890411377, heading=66.5093,    animation='WORLD_HUMAN_DRUG_DEALER_HARD', VoiceName="PRISONER_PVG",       Ambiance="AMMUCITY", Weapon="WEAPON_PISTOL"},
}

Citizen.CreateThread(function()
	Citizen.Wait(1)
	if (not generalLoaded) then
		for i=1, #PNJS do
			RequestModel(GetHashKey(PNJS[i].modelHash))
			while not HasModelLoaded(GetHashKey(PNJS[i].modelHash)) do
				Citizen.Wait(1)
			end

			RequestAnimDict('creatures@rottweiler@amb@world_dog_sitting@base')
			while not HasAnimDictLoaded('creatures@rottweiler@amb@world_dog_sitting@base') do
				Citizen.Wait(1)
			end

		    PNJS[i].id = CreatePed(28, PNJS[i].modelHash, PNJS[i].x, PNJS[i].y, PNJS[i].z, PNJS[i].heading, false, false)
			if PNJS[i].animation then
				TaskStartScenarioInPlace(PNJS[i].id, PNJS[i].animation, 0 , false )
			end
			
			--SetEntityProofs(PNJS[i].id, true, true, true, true, true, true, true, true)
		end
		generalLoaded = true
	end
end)

RegisterCommand('khash', function(source, args, rawCommand)
    local playerPed = GetPlayerPed(-1)
    if IsPedInAnyVehicle(playerPed, false) then
        local vehicle = GetVehiclePedIsIn(playerPed, false)
        local vehicleModel = GetEntityModel(vehicle)
        local vehName = GetDisplayNameFromVehicleModel(vehicleModel)
        print("Model hash of: " .. vehName .. "," .. vehicleModel)
    end
end)
TriggerEvent('chat:addMessage', { args = { "Trailer: ", "^1Trailer saved" } })

--  local playAnim = false
--  
--  function animsAction(ped, animObj)
--  	--if (IsInVehicle()) then
--  	--	local source = GetPlayerServerId();
--  	--	ESX.ShowNotification("Sortez de votre véhicule pour faire cela !")
--  	--else
--  		Citizen.CreateThread(function()
--  			if not playAnim then
--  				local playerPed = ped;
--  				local dataAnim = {}
--  				if DoesEntityExist(playerPed) then -- Ckeck if ped exist
--  					dataAnim = animObj
--  
--  					-- Play Animation
--  					RequestAnimDict(dataAnim.lib)
--  					while not HasAnimDictLoaded(dataAnim.lib) do
--  						Citizen.Wait(0)
--  					end
--  					if HasAnimDictLoaded(dataAnim.lib) then
--  						local flag = 0
--  						if dataAnim.loop ~= nil and dataAnim.loop then
--  							flag = 1
--  						elseif dataAnim.move ~= nil and dataAnim.move then
--  							flag = 49
--  						end
--  
--  						TaskPlayAnim(playerPed, dataAnim.lib, dataAnim.anim, 8.0, -8.0, -1, flag, 0, 0, 0, 0)
--  						playAnimation = true
--  					end
--  
--  					-- Wait end annimation
--  					while true do
--  						Citizen.Wait(0)
--  						if not IsEntityPlayingAnim(playerPed, dataAnim.lib, dataAnim.anim, 3) then
--  							playAnim = false
--  							TriggerEvent('ft_animation:ClFinish')
--  							break
--  						end
--  					end
--  				end -- end ped exist
--  			end
--  		end)
--  	--end
--  end

