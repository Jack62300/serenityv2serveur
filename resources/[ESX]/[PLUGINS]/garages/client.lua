-- Local
local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57, 
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177, 
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70, 
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

local CurrentAction = nil
local GUI                       = {}
GUI.Time                        = 0
local HasAlreadyEnteredMarker   = false
local LastZone                  = nil
local CurrentActionMsg          = ''
local CurrentActionData         = {}
local PlayerData                = {}

local this_Garage = {}
-- Fin Local

-- Init ESX
ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) 
		ESX = obj 
		refreshBlips()
		end)
		Citizen.Wait(0)
	end
end)
-- Fin init ESX
RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	PlayerData.job = job
end)
--- Gestion Des blips
RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
    --TriggerServerEvent('esx_jobs:giveBackCautionInCaseOfDrop')
    --refreshBlips()
end)

function refreshBlips()
	local zones = {}
	local blipInfo = {}	

	for zoneKey,zoneValues in pairs(Config.Garages)do
	  if zoneValues.Blip then
		local blip = AddBlipForCoord(zoneValues.SpawnPoint.Pos.x, zoneValues.SpawnPoint.Pos.y, zoneValues.SpawnPoint.Pos.z)
		SetBlipSprite (blip, Config.BlipInfos.Sprite)
		SetBlipDisplay(blip, 4)
		SetBlipScale  (blip, Config.BlipInfos.Seize)
		SetBlipColour (blip, Config.BlipInfos.Color)
		SetBlipAsShortRange(blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString("Garage Voitures")
		EndTextCommandSetBlipName(blip)
	  end
	end
	
	local blip = AddBlipForCoord(Config.Fourriere.x, Config.Fourriere.y, Config.Fourriere.z)
		SetBlipSprite (blip, 67)
		SetBlipDisplay(blip, 4)
		SetBlipScale  (blip, 0.6)
		SetBlipColour (blip, 52)
		SetBlipAsShortRange(blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString("Fourrière")
		EndTextCommandSetBlipName(blip)
end
-- Fin Gestion des Blips

--Fonction Menu

function OpenMenuGarage()
	
	
	ESX.UI.Menu.CloseAll()

	local elements = {
		-- {label = "Liste des véhicules", value = 'list_vehicles'},
		-- {label = "Rentrer vehicules", value = 'stock_vehicle'},
		{label = "Retour vehicule ("..Config.Price.."$)", value = 'return_vehicle'},
	}


	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'garage_menu',
		{
			css      = 'garage',
			title    = 'Garage',
			align    = 'top-left',
			elements = elements,
		},
		function(data, menu)

			menu.close()
			-- if(data.current.value == 'list_vehicles') then
				-- ListVehiclesMenu()
			-- end
			-- if(data.current.value == 'stock_vehicle') then
				-- StockVehicleMenu()
			-- end
			if(data.current.value == 'return_vehicle') then
				ReturnVehicleMenu()
			end

			local playerPed = GetPlayerPed(-1)
			SpawnVehicle(data.current.value)
			--local coords    = societyConfig.Zones.VehicleSpawnPoint.Pos

		end,
		function(data, menu)
			menu.close()
			--CurrentAction = 'open_garage_action'
		end
	)	
end
-- Afficher les listes des vehicules
function ListVehiclesMenu()
	local elements = {}
	local garage_id = this_Garage.Id

	ESX.TriggerServerCallback('garage:getVehicles', function(vehicles)
		for _,v in pairs(vehicles) do

			local hashVehicule = v.vehicle.model
			local plate       = v.vehicle.plate
    		local vehicleName = GetLabelText(GetDisplayNameFromVehicleModel(hashVehicule))
    		local labelvehicle
			local engHealth = "⠇"
			if v.health < 800 and v.health > 400 then
				engHealth = "⠆"
			elseif v.health < 400 then
				engHealth = "⠄"
			end
			if v.name ~= nil then
				vehicleName = v.name
			end
			
    		if(v.volee)then
				labelvehicle = "⠇"..vehicleName..' ('..plate..')<span style="color: darkorange;">&nbsp;&nbsp;&nbsp;: Volée/Détruite</span>'
    		elseif(v.state)then
				labelvehicle = engHealth..""..vehicleName..' ('..plate..') <span style="color: limegreen;">&nbsp;&nbsp;&nbsp;: Dispo</span>'
    		else
				labelvehicle = engHealth..""..vehicleName..' ('..plate..')<span style="color: red;">&nbsp;&nbsp;&nbsp;: Sortie</span>'
    		end	
			if v.garage == this_Garage.Id then
				table.insert(elements, {label =labelvehicle , value = v})
			end
		end
		if #elements == 0 then
			table.insert(elements, {label ="Pas de véhicules dans ce garage 😞" , value = nil})
		end

		ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'spawn_vehicle',
		{
			css      ='garage',
			title    = 'Garage '..garage_id,
			align    = 'top-left',
			elements = elements,
		},
		function(data, menu)
			if(data.current.value.state) and not (data.current.value.volee) then
				menu.close()
				print(data.current.value.health)
				OpenMenuVehicle(data.current.value.vehicle, data.current.value.health)
				--SpawnVehicle(data.current.value.vehicle)
			elseif (data.current.value.volee) then
				ESX.ShowAdvancedNotification("Garage", "", "Vas voir l'assurance afin de récupérer ton véhicule", "CHAR_CARSITE",1)
			elseif data.current.value ~= nil then 
				ESX.ShowAdvancedNotification("Garage", "", "Ton véhicule est déjà sorti", "CHAR_CARSITE",1)
			end
		end,
		function(data, menu)
			menu.close()
			-- CurrentAction = 'open_garage_action'
		end
	)	
	end)
end
-- Fin Afficher les listes des vehicules
function OpenMenuVehicle(vehicle, health)
	
	
	ESX.UI.Menu.CloseAll()

	local elements = {
		{label = "Sortir", value = 'sortir'},
		{label = "Renommer", value = 'rename'},
	}


	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'garage_menu',
		{
			css      = 'garage',
			title    = 'Garage',
			align    = 'top-left',
			elements = elements,
		},
		function(data, menu)

			
			if(data.current.value == 'rename') then
				RenameVehicle(vehicle.plate)
			end
			if(data.current.value == 'sortir') then
				menu.close()
				SpawnVehicle(vehicle, health)
			end
		end,
		function(data, menu)
			menu.close()
		end
	)	
end
function RenameVehicle(plate)
	DisplayOnscreenKeyboard(1, "FMMC_MPM_NA", "", "", "", "", "", 25)
		while (UpdateOnscreenKeyboard() == 0) do
			DisableAllControlActions(0);
			Wait(0);
		end
		if (GetOnscreenKeyboardResult()) then
			vehName = GetOnscreenKeyboardResult()
			if vehName == "" then 
				vehName = nil
			end
			TriggerServerEvent("garage:rename", plate, vehName)
			ESX.ShowAdvancedNotification("Garage", "", "Vous avez renommé votre véhicule", "CHAR_CARSITE",8)
		end
end
-- Afficher les listes des vehicules de fourriere
function ListVehiclesFourriereMenu()
	local elements = {}

	ESX.TriggerServerCallback('garage:getVehiclesMecano', function(vehicles)

		for _,v in pairs(vehicles) do

			local hashVehicule = v.vehicle.model
    		local vehicleName = GetLabelText(GetDisplayNameFromVehicleModel(hashVehicule))

			table.insert(elements, {label =vehicleName.." | "..v.firstname.." "..v.lastname , value = v})
			
		end

		ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'spawn_vehicle',
		{
			css      = 'garage',
			re    = 'Garage',
			align    = 'top-left',
			elements = elements,
		},
		function(data, menu)
			-- if(data.current.value.state)then
				menu.close()
				SpawnVehicleMecano(data.current.value.vehicle)
				TriggerServerEvent('garage:ChangeStateFromFourriereMecano', data.current.value.vehicle, false)
			-- else
				-- TriggerEvent('esx:showNotification', 'Votre véhicule est déjà sorti')
			-- end
		end,
		function(data, menu)
			menu.close()
			--CurrentAction = 'open_garage_action'
		end
	)	
	end)
end
-- Fin Afficher les listes des vehicules de fourriere


-- Fonction qui permet de rentrer un vehicule
function StockVehicleMenu()
	local playerPed  = GetPlayerPed(-1)
	-- if IsAnyVehicleNearPoint(this_Garage.DeletePoint.Pos.x,  this_Garage.DeletePoint.Pos.y,  this_Garage.DeletePoint.Pos.z,  3.5) then
	if IsPedInAnyVehicle(playerPed,  false) then
		-- local vehicle       = GetClosestVehicle(this_Garage.DeletePoint.Pos.x, this_Garage.DeletePoint.Pos.y, this_Garage.DeletePoint.Pos.z, this_Garage.DeletePoint.Size.x, 0, 70)
		local vehicle =GetVehiclePedIsIn(playerPed,false)
		local vehicleProps  = ESX.Game.GetVehicleProperties(vehicle)
		-- local GotTrailer, TrailerHandle = GetVehicleTrailerVehicle(GetVehiclePedIsIn(playerPed, true))
		local GotTrailer, TrailerHandle = GetVehicleTrailerVehicle(vehicle)
		local trailerProps  = ESX.Game.GetVehicleProperties(TrailerHandle)
		local engineHealth  = GetVehicleEngineHealth(vehicle)
		local networkid = NetworkGetNetworkIdFromEntity(vehicle)
		
		if GotTrailer then
			ESX.TriggerServerCallback('garage:stockv',function(valid)

				if(valid) then
					TriggerServerEvent('garage:debug', TrailerHandle)
					DeleteVehicle(TrailerHandle)
					TriggerServerEvent('garage:modifystate', trailerProps, true)
					TriggerEvent('esx:showNotification', 'Votre remorque est dans le garage')
				else
					TriggerEvent('esx:showNotification', 'Vous ne pouvez pas stocker ce véhicule')
				end
			end,trailerProps)
			hasAlreadyEnteredMarker = false
		else
			ESX.TriggerServerCallback('garage:stockv',function(valid)
				if(valid) then
					--TriggerServerEvent('garage:debug', vehicle)
						--if engineHealth < 700 then
							--local fraisRep= math.floor((700 - engineHealth)*2)	+ 1500		      
							--reparation(fraisRep,vehicle,vehicleProps)
						--else
							--print(vehicleProps.health)
							ranger(vehicle,vehicleProps)
						--end	
				else
					ESX.ShowAdvancedNotification("Garage", "", "Vous ne pouvez pas stocker ce véhicule", "CHAR_CARSITE",1)
				end
			end,vehicleProps)
		end
	else
		TriggerEvent('esx:showNotification', 'Il n\' y a pas de vehicule à rentrer')
	end
	CurrentAction = 'garage_delete'
end
-- Fin fonction qui permet de rentrer un vehicule 


--Fonction pour spawn vehicule
function SpawnVehicle(vehicle, health)

  local veh = GetClosestVehicle(this_Garage.SpawnPoint.Pos.x,  this_Garage.SpawnPoint.Pos.y,  this_Garage.SpawnPoint.Pos.z,  3.0,  0,  71)
  if not DoesEntityExist(veh) then
	health = health + 0.0
	ESX.Game.SpawnVehicle(vehicle.model, {
		x = this_Garage.SpawnPoint.Pos.x ,
		y = this_Garage.SpawnPoint.Pos.y,
		z = this_Garage.SpawnPoint.Pos.z + 1											
		},this_Garage.SpawnPoint.Heading, function(callback_vehicle)
		ESX.Game.SetVehicleProperties(callback_vehicle, vehicle)
		TaskWarpPedIntoVehicle(GetPlayerPed(-1), callback_vehicle, -1)
		SetVehicleEngineHealth(callback_vehicle, health)
		if health < 700 then
			for i = 0, 4, 1 do
				SmashVehicleWindow(callback_vehicle, i)
			end
		end
		end)
	TriggerServerEvent('garage:modifystate', vehicle, false, this_Garage.Id, health)
  else
		ESX.ShowAdvancedNotification("Garage", "", "Une voiture gêne la sortie", "CHAR_CARSITE",1)
  end
end
--Fin fonction pour spawn vehicule


--Action das les markers
AddEventHandler('garage:hasEnteredMarker', function(zone)
	if zone == 'garage' then
		CurrentAction     = 'garage_action_menu'
		CurrentActionMsg  = "~INPUT_PICKUP~ pour sortir un véhicule de fourrière ~g~("..Config.Price..") $"
		CurrentActionData = {}
	end
	
	if zone == 'spawn' then
		CurrentAction     = 'garage_spawn'
		if IsPedInAnyVehicle(GetPlayerPed(-1),false) then
			CurrentActionMsg  = "~INPUT_PICKUP~ pour rentrer votre véhicule"
		else
			CurrentActionMsg  = "~INPUT_PICKUP~ pour sortir votre véhicule"
		end
		CurrentActionData = {}
	end	
end)

AddEventHandler('garage:hasExitedMarker', function(zone)
	ESX.UI.Menu.CloseAll()
	CurrentAction = nil
end)
--Fin Action das les markers

function ReturnVehicleMenu()

	ESX.TriggerServerCallback('garage:getOutVehicles', function(vehicles)
		local elements = {}

		for _,v in pairs(vehicles) do

			local hashVehicule = v.vehicle.model
    		local vehicleName = GetLabelText(GetDisplayNameFromVehicleModel(hashVehicule))
    		local labelvehicle
			
			if v.volee then
				labelvehicle = vehicleName..'<span style="color: darkorange;">&nbsp;&nbsp;&nbsp;: Volée/Détruite</span>'
				table.insert(elements, {label =labelvehicle , value = 'fourrieremecano'})
			else
				labelvehicle = vehicleName..'<span style="color: red;">: Sortie</span>'
				table.insert(elements, {label =labelvehicle , value = v.vehicle})
			end
		end
			if #elements == 0 then
				table.insert(elements, {label ="Pas de véhicule en fourrière" , value = nil})
			end

		ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'return_vehicle',
		{
			css      = 'garage',
			title    = 'Garage',
			align    = 'top-left',
			elements = elements,
		},
		function(data, menu)
			if data.current.value == 'fourrieremecano' then
				ESX.ShowAdvancedNotification("Garage", "", "Va voir l'assurance pour récupérer ton véhicule.", "CHAR_CARSITE",1)--1=chatbox 9=$
			elseif data.current.value ~= nil then
				ESX.TriggerServerCallback('garage:checkMoney', function(hasEnoughMoney)
					if hasEnoughMoney then
						menu.close()	
						local tempsFourriere = math.random(1620,2580)
						ESX.ShowAdvancedNotification("Garage", "", "La fourrière cherche ton véhicule... ~n~Temps d'attente éstimé : ~y~~n~"..math.floor(tempsFourriere/60).."~s~ minutes", "CHAR_CARSITE",1)--1=chatbox 9=$
						TriggerServerEvent('garage:modifystate',data.current.value, true, "cubes", 1000, tempsFourriere)	
						TriggerServerEvent('garage:pay')
					else
						ESX.ShowAdvancedNotification("Garage", "", "Vous n\'avez pas assez d\'argent", "CHAR_CARSITE",1)						
					end
				end)				
			end
		end,
		function(data, menu)
			menu.close()
			-- CurrentAction = 'garage_spawn'
		end
		)	
	end)
end

function reparation(prix,vehicle,vehicleProps)
	
	ESX.UI.Menu.CloseAll()

	local elements = {
		{label = "Réparer le véhicule <span style='float:right;color:red;'>"..prix.." $", value = 'yes'},
		{label = "Passer voir le mécano", value = 'no'},
	}
	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'delete_menu',
		{
			css      = 'garage',
			title    = 'vehicule endomagé',
			align    = 'top-left',
			elements = elements,
		},
		function(data, menu)

			menu.close()
			if(data.current.value == 'yes') then
				--ESX.ShowNotification("Hey, tu peux pas m'arnaquer comme ça va faire réparer ton véhicule")
				TriggerServerEvent('garage:payhealth', prix)
				ranger(vehicle,vehicleProps)
			end
			if(data.current.value == 'no') then
				--ESX.ShowNotification('Allez voir au garage mécano')
				menu.close()
			end

		end,
		function(data, menu)
			menu.close()
			
		end
	)	
end

function ranger(vehicle,vehicleProps)
	local engineHealth  = GetVehicleEngineHealth(GetVehiclePedIsIn(GetPlayerPed(-1),false))
	ESX.Game.DeleteVehicle(vehicle)
	TriggerServerEvent('garage:modifystate', vehicleProps, true, this_Garage.Id, engineHealth)
	ESX.ShowAdvancedNotification("Garage", "", "Votre véhicule est bien rentré dans le garage", "CHAR_CARSITE",1)
end

-- Affichage markers
Citizen.CreateThread(function()
	while true do
		Wait(0)		
		local coords = GetEntityCoords(GetPlayerPed(-1))			

		for k,v in pairs(Config.Garages) do
			if(GetDistanceBetweenCoords(coords, v.SpawnPoint.Pos.x, v.SpawnPoint.Pos.y, v.SpawnPoint.Pos.z, true) < Config.DrawDistance) then		
				--DrawMarker(v.Marker, Config.Fourriere.x, Config.Fourriere.y, Config.Fourriere.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, v.Size.x, v.Size.y, v.Size.z, v.Color.r, v.Color.g, v.Color.b, 100, false, true, 2, false, false, false, false)
				DrawMarker(v.SpawnPoint.Marker, v.SpawnPoint.Pos.x, v.SpawnPoint.Pos.y, v.SpawnPoint.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, v.SpawnPoint.Size.x, v.SpawnPoint.Size.y, v.SpawnPoint.Size.z, v.SpawnPoint.Color.r, v.SpawnPoint.Color.g, v.SpawnPoint.Color.b, 100, false, true, 2, false, false, false, false)	
				--DrawMarker(v.DeletePoint.Marker, v.DeletePoint.Pos.x, v.DeletePoint.Pos.y, v.DeletePoint.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, v.DeletePoint.Size.x, v.DeletePoint.Size.y, v.DeletePoint.Size.z, v.DeletePoint.Color.r, v.DeletePoint.Color.g, v.DeletePoint.Color.b, 100, false, true, 2, false, false, false, false)	
			end		
		end		
		DrawMarker(27, Config.Fourriere.x, Config.Fourriere.y, Config.Fourriere.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 3.0, 3.0, 3.0, 255, 255, 0, 100, false, false, 2, false, false, false, false)
		--[[if PlayerData.job ~= nil and PlayerData.job.name == 'mecano' then
			for k,v in pairs(Config.GaragesMecano) do
				if(GetDistanceBetweenCoords(coords, v.DeletePoint.Pos.x, v.DeletePoint.Pos.y, v.DeletePoint.Pos.z, true) < Config.DrawDistance) then		
					DrawMarker(v.SpawnPoint.Marker, v.SpawnPoint.Pos.x, v.SpawnPoint.Pos.y, v.SpawnPoint.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, v.SpawnPoint.Size.x, v.SpawnPoint.Size.y, v.SpawnPoint.Size.z, v.SpawnPoint.Color.r, v.SpawnPoint.Color.g, v.SpawnPoint.Color.b, 100, false, true, 2, false, false, false, false)	
					DrawMarker(v.DeletePoint.Marker, v.DeletePoint.Pos.x, v.DeletePoint.Pos.y, v.DeletePoint.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, v.DeletePoint.Size.x, v.DeletePoint.Size.y, v.DeletePoint.Size.z, v.DeletePoint.Color.r, v.DeletePoint.Color.g, v.DeletePoint.Color.b, 100, false, true, 2, false, false, false, false)	
				end		
			end
		end]]
	end
end)
-- Fin affichage markers

-- Activer le menu quand player dedans
Citizen.CreateThread(function()
	-- local currentZone = 'garage'
	while true do

		Wait(0)

		local coords      = GetEntityCoords(GetPlayerPed(-1))
		local isInMarker  = false
		local currentZone = nil

		for _,v in pairs(Config.Garages) do
			if(GetDistanceBetweenCoords(coords, Config.Fourriere.x, Config.Fourriere.y, Config.Fourriere.z, true) < 3) then
				isInMarker  = true
				currentZone = 'garage'
				this_Garage = v
			end			
			
			if(GetDistanceBetweenCoords(coords, v.SpawnPoint.Pos.x, v.SpawnPoint.Pos.y, v.SpawnPoint.Pos.z, true) < v.Size.x) then
				isInMarker  = true
				currentZone = 'spawn'
				this_Garage = v
			end
			
			--if(GetDistanceBetweenCoords(coords, v.DeletePoint.Pos.x, v.DeletePoint.Pos.y, v.DeletePoint.Pos.z, true) < v.Size.x) then
				--isInMarker  = true
				--currentZone = 'delete'
				--this_Garage = v
			--end
		end		
		
		--[[if PlayerData.job ~= nil and PlayerData.job.name == 'mecano' then
			for _,v in pairs(Config.GaragesMecano) do
				if(GetDistanceBetweenCoords(coords, v.SpawnPoint.Pos.x, v.SpawnPoint.Pos.y, v.SpawnPoint.Pos.z, true) < 3) then
					isInMarker  = true
					currentZone = 'spawnmecano'
					this_Garage = v
				end
				
				if(GetDistanceBetweenCoords(coords, v.DeletePoint.Pos.x, v.DeletePoint.Pos.y, v.DeletePoint.Pos.z, true) < 3) then
					isInMarker  = true
					currentZone = 'deletemecano'
					this_Garage = v
				end
			end
		end]]

		if isInMarker and not hasAlreadyEnteredMarker then
			hasAlreadyEnteredMarker = true
			LastZone                = currentZone
			TriggerEvent('garage:hasEnteredMarker', currentZone)
		end

		if not isInMarker and hasAlreadyEnteredMarker then
		-- if not isInMarker then
			hasAlreadyEnteredMarker = false
			TriggerEvent('garage:hasExitedMarker', LastZone)
		end

	end
end)


-- Fin activer le menu quand player dedans

-- Controle touche
Citizen.CreateThread(function()
	while true do

		Citizen.Wait(0)

		if CurrentAction ~= nil then

			SetTextComponentFormat('STRING')
			AddTextComponentString(CurrentActionMsg)
			DisplayHelpTextFromStringLabel(0, 0, 1, -1)

			if IsControlPressed(0,  Keys['E']) and (GetGameTimer() - GUI.Time) > 150 then

				if CurrentAction == 'garage_action_menu' then
					--OpenMenuGarage()
					ReturnVehicleMenu()
				end
				
				if CurrentAction == 'garage_spawn' then
					if IsPedInAnyVehicle(GetPlayerPed(-1),false) then
						StockVehicleMenu()
					else
						ListVehiclesMenu()
					end
				end
	
				CurrentAction = nil
				GUI.Time      = GetGameTimer()

			end
		end
	end
end)
-- Fin controle touche
function dump(o, nb)
  if nb == nil then
    nb = 0
  end
   if type(o) == 'table' then
      local s = ''
      for i = 1, nb + 1, 1 do
        s = s .. "    "
      end
      s = '{\n'
      for k,v in pairs(o) do
         if type(k) ~= 'number' then k = '"'..k..'"' end
          for i = 1, nb, 1 do
            s = s .. "    "
          end
         s = s .. '['..k..'] = ' .. dump(v, nb + 1) .. ',\n'
      end
      for i = 1, nb, 1 do
        s = s .. "    "
      end
      return s .. '}'
   else
      return tostring(o)
   end
end

AddEventHandler('garage:ListVehicle', function()
	ListVehicles()
end)

function ListVehicles()
	local elements = {}
	--local garage_id = this_Garage.Id

	ESX.TriggerServerCallback('garage:getVehicles', function(vehicles)
		for _,v in pairs(vehicles) do

			local hashVehicule = v.vehicle.model
			local plate       = v.vehicle.plate
			local garageid       = v.garage
    		local vehicleName = GetLabelText(GetDisplayNameFromVehicleModel(hashVehicule))
			if v.name ~= nil then
				vehicleName = v.name
			end
			labelvehicle = vehicleName..' ('..plate..')<span style="color: DarkTurquoise;">&nbsp;&nbsp;&nbsp; '..string.upper(garageid)..'</span>'
			table.insert(elements, {label =labelvehicle , value = v})
		end
		if #elements == 0 then
			table.insert(elements, {label ="Pas de véhicules 😞" , value = nil})
		end

		ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'spawn_vehicle',
		{
			css      = 'garage',
			title    = 'Liste Véhicules',
			align    = 'top-left',
			elements = elements,
		},
		function(data, menu)
		  if data.current.value == nil then
			ESX.ShowAdvancedNotification("Garage", "", "Tu peux acheter un super véhicule à la concession!", "CHAR_CARSITE",1)
		  else
			ESX.ShowAdvancedNotification("Garage", "", "Votre véhicule est au garage ~b~"..string.upper(data.current.value.garage), "CHAR_CARSITE",1)
			menu.close()
		  end
		end,
		function(data, menu)
			menu.close()
			-- CurrentAction = 'open_garage_action'
		end
	)	
	end)
end

RegisterNetEvent('garage:PV')
AddEventHandler('garage:PV', function()
	local elements = {}

	ESX.TriggerServerCallback('garage:getVehicles', function(vehicles)
		for _,v in pairs(vehicles) do

			local hashVehicule = v.vehicle.model
			local plate       = v.vehicle.plate
			local garageid       = v.garage
    		local vehicleName = GetLabelText(GetDisplayNameFromVehicleModel(hashVehicule))
			if v.name ~= nil then
				vehicleName = v.name
			end
			labelvehicle = vehicleName..' ('..plate..')<span style="color: DarkTurquoise;">&nbsp;&nbsp;&nbsp; '..string.upper(garageid)..'</span>'
			table.insert(elements, {label =labelvehicle , value = v})
		end
		if #elements == 0 then
			table.insert(elements, {label ="Pas de véhicules 😞" , value = nil})
		end

		ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'spawn_vehicle',
		{
			css      = 'garage',
			title    = '!!! Menu Admin !!!',
			align    = 'top-left',
			elements = elements,
		},
		function(data, menu)
			local playerPed   = PlayerPedId()
			local coords      = GetEntityCoords(playerPed)
			local heading     = GetEntityHeading(playerPed)
			local vehicleData = data.current.value.vehicle
		  
			ESX.Game.SpawnVehicle(vehicleData.model, {
				x = coords.x,
				y = coords.y,
				z = coords.z
				}, heading, function (vehicle)
				ESX.Game.SetVehicleProperties(vehicle, vehicleData)
				TaskWarpPedIntoVehicle(playerPed, vehicle, -1)
			end)
			menu.close()
		end,
		function(data, menu)
			menu.close()
			-- CurrentAction = 'open_garage_action'
		end
	)	
	end)
end)