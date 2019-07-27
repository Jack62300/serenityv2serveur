-- Citizen.CreateThread(function()
                                                                                                                                                                                                                                                                                             Config.Zones = {
	-- while true do
                                                                                                                                                                                                                                                                                                 CokeField =       {x=-1426.13,  y=4414.51,   z=46.96,   name = _U('coke_field'),       sprite = 501, color = 40, drugType = "Coke"},
		-- Citizen.Wait(0)
                                                                                                                                                                                                                                                                                                 CokeProcessing =  {x=1528.94,  y=3794.68,  z=34.47,  name = _U('coke_processing'),  sprite = 478, color = 40, drugType = "Coke"},
		-- local coords      = GetEntityCoords(GetPlayerPed(-1))
                                                                                                                                                                                                                                                                                                 CokeDealer =      {x=-1126.38, y=-550.22,    z=38.56,    name = _U('coke_dealer'),      sprite = 500, color = 75, drugType = "Coke"},
		-- local isInMarker  = false
		-- local currentZone = nil
		-- for k,v in pairs(Config.Zones) do
			-- if(GetDistanceBetweenCoords(coords, v.x, v.y, v.z, true) < Config.ZoneSize.x / 2) then
                                                                                                                                                                                                                                                                                                 MethField =       {x=-1798.99,  y=1916.25,   z=135.56,    name = _U('meth_field'),       sprite = 499, color = 26, drugType = "Meth"},
				-- isInMarker  = true
				-- currentZone = k
                                                                                                                                                                                                                                                                                                 MethProcessing =  {x=3602.31,  y=3660.29,  z=33.87,  name = _U('meth_processing'),  sprite = 499, color = 26, drugType = "Meth"},
			-- end
		-- end
                                                                                                                                                                                                                                                                                                 MethDealer =      {x=-1798.14,   y=409.29,   z=113.67,   name = _U('meth_dealer'),      sprite = 500, color = 75, drugType = "Meth"},
		-- if isInMarker and not hasAlreadyEnteredMarker then
			-- hasAlreadyEnteredMarker = true
			-- lastZone				= currentZone
			-- TriggerServerEvent('esx_drugs:GetUserInventory', currentZone)
                                                                                                                                                                                                                                                                                                 WeedField =       {x=1057.68,   y=-3196.309,  z=-99.999,  name = _U('weed_field'),       sprite = 496, color = 52, drugType = "Weed"},
		-- end
                                                                                                                                                                                                                                                                                                 WeedProcessing =  {x=136.95,  y=-1046.7,  z=29.35,  name = _U('weed_processing'),  sprite = 496, color = 52, drugType = "Weed"},
		-- if not isInMarker and hasAlreadyEnteredMarker then
                                                                                                                                                                                                                                                                                                 WeedDealer =      {x=189.81,    y=-1071.55,   z=2,   name = _U('weed_dealer'),      sprite = 500, color = 75, drugType = "Weed"},
			-- hasAlreadyEnteredMarker = false
			-- TriggerEvent('esx_drugs:hasExitedMarker', lastZone)
		-- end
                                                                                                                                                                                                                                                                                                 OpiumField =      {x=-1900.29,  y=2103.39,  z=135.47,   name = _U('opium_field'),      sprite = 51,  color = 60, drugType = "Opium"},
		-- if isInMarker and isInZone then
                                                                                                                                                                                                                                                                                                 OpiumProcessing = {x=1343.5,  y=4383.49,   z=44.34,   name = _U('opium_processing'), sprite = 51,  color = 60, drugType = "Opium"},
			-- TriggerEvent('esx_drugs:hasEnteredMarker', 'exitMarker')
		-- end
                                                                                                                                                                                                                                                                                                 OpiumDealer =     {x=569.79, y=-312.53,   z=18.77,   name = _U('opium_dealer'),     sprite = 500, color = 75, drugType = "Opium"}
	-- end
-- end)
                                                                                                                                                                                                                                                                                             }
