---------------------------------
-- Created By SimpleRP &Toni Morton      --
-- Please, Leave these credits --
---------------------------------
local PlayerData                = {}

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)

RegisterNetEvent("Taxi")
AddEventHandler("Taxi",function()
		
		DisplayOnscreenKeyboard(false, "", "", "", "", "", "", 60)
		local input = true
		Citizen.CreateThread(function()
		while input do
		if input == true then
		HideHudAndRadarThisFrame()
		if UpdateOnscreenKeyboard() == 3 then
		input = false
		elseif UpdateOnscreenKeyboard() == 1 then
		local inputText = GetOnscreenKeyboardResult()
		if string.len(inputText) > 0 then
			if PlayerData.job ~= nil and PlayerData.job.name == 'taxi' then
				TriggerServerEvent('SyncTaxi', inputText)
			end
			if PlayerData.job ~= nil and PlayerData.job.name == 'ambulance' then
				TriggerServerEvent('SyncAmbu', inputText)
			end
			if PlayerData.job ~= nil and PlayerData.job.name == 'banker' then
				TriggerServerEvent('SyncBanq', inputText)
			end	
			if PlayerData.job ~= nil and PlayerData.job.name == 'police' then
				TriggerServerEvent('SyncPolice', inputText)
			end	
			if PlayerData.job ~= nil and PlayerData.job.name == 'poste' then
				TriggerServerEvent('SyncPoste', inputText)
			end
			if PlayerData.job ~= nil and PlayerData.job.name == 'realestateagent' then
				TriggerServerEvent('Syncimo', inputText)
			end	
			if PlayerData.job ~= nil and PlayerData.job.name == 'mecano' then
				TriggerServerEvent('SyncMeca', inputText)	
			end
			if PlayerData.job ~= nil and PlayerData.job.name == 'fib' then
				TriggerServerEvent('SyncSher', inputText)	
			end
			if PlayerData.job ~= nil and PlayerData.job.name == 'mamas' then
				TriggerServerEvent('SyncMamas', inputText)	
			end
			if PlayerData.job ~= nil and PlayerData.job.name == 'journaliste' then
				TriggerServerEvent('SyncJourna', inputText)	
			end	
			if PlayerData.job ~= nil and PlayerData.job.name == 'epicerie' then
				TriggerServerEvent('SyncEpi', inputText)		
			end		
		input = false
		else
			DisplayOnscreenKeyboard(false, "", "", "", "", "", "", 60)
		end
		elseif UpdateOnscreenKeyboard() == 2 then
		input = false
		end
		end
		 Citizen.Wait(0)
		 end
			
end)
end)

RegisterNetEvent('DisplayTaxi')
AddEventHandler('DisplayTaxi',function(inputText)

SetNotificationTextEntry("STRING");
AddTextComponentString(inputText);
SetNotificationMessage("CHAR_TAXI", "CHAR_TAXI", true, 1, "~y~Publicitée:~s~", "");
DrawNotification(false, true);

end)

RegisterNetEvent('DisplayPolice')
AddEventHandler('DisplayPolice',function(inputText)

SetNotificationTextEntry("STRING");
AddTextComponentString(inputText);
SetNotificationMessage("CHAR_JOE", "CHAR_JOE", true, 1, "~y~Annonce:~s~", "");
DrawNotification(false, true);

end)

RegisterNetEvent('DisplayPoste')
AddEventHandler('DisplayPoste',function(inputText)

SetNotificationTextEntry("STRING");
AddTextComponentString(inputText);
SetNotificationMessage("CHAR_PEGASUS_DELIVERY", "CHAR_PEGASUS_DELIVERY", true, 1, "~y~Annonce:~s~", "");
DrawNotification(false, true);

end)

RegisterNetEvent('DisplayAmbu')
AddEventHandler('DisplayAmbu',function(inputText)

SetNotificationTextEntry("STRING");
AddTextComponentString(inputText);
SetNotificationMessage("CHAR_CALL911", "CHAR_CALL911", true, 1, "~y~Annonce:~s~", "");
DrawNotification(false, true);

end)

RegisterNetEvent('DisplayMeca')
AddEventHandler('DisplayMeca',function(inputText)

SetNotificationTextEntry("STRING");
AddTextComponentString(inputText);
SetNotificationMessage("CHAR_LS_CUSTOMS", "CHAR_LS_CUSTOMS", true, 1, "~y~Publicitée:~s~", "");
DrawNotification(false, true);

end)

RegisterNetEvent('DisplaySher')
AddEventHandler('DisplaySher',function(inputText)

SetNotificationTextEntry("STRING");
AddTextComponentString(inputText);
SetNotificationMessage("CHAR_MANUEL", "CHAR_MANUEL", true, 1, "~y~Annonce:~s~", "");
DrawNotification(false, true);

end)

RegisterNetEvent('DisplayJourna')
AddEventHandler('DisplayJourna',function(inputText)

SetNotificationTextEntry("STRING");
AddTextComponentString(inputText);
SetNotificationMessage("CHAR_LIFEINVADER", "CHAR_LIFEINVADER", true, 1, "~y~Publicitée:~s~", "");
DrawNotification(false, true);

end)

RegisterNetEvent('DisplayBanq')
AddEventHandler('DisplayBanq',function(inputText)

SetNotificationTextEntry("STRING");
AddTextComponentString(inputText);
SetNotificationMessage("CHAR_BANK_MAZE", "CHAR_BANK_MAZE", true, 1, "~y~Annonce:~s~", "");
DrawNotification(false, true);

end)

RegisterNetEvent('DisplayImo')
AddEventHandler('DisplayImo',function(inputText)

SetNotificationTextEntry("STRING");
AddTextComponentString(inputText);
SetNotificationMessage("CHAR_CHAT_CALL", "CHAR_CHAT_CALL", true, 1, "~y~Annonce:~s~", "");
DrawNotification(false, true);

end)

RegisterNetEvent('DisplayMamas')
AddEventHandler('DisplayMamas',function(inputText)

SetNotificationTextEntry("STRING");
AddTextComponentString(inputText);
SetNotificationMessage("CHAR_MP_STRIPCLUB_PR", "CHAR_MP_STRIPCLUB_PR", true, 1, "~y~Annonce:~s~", "");
DrawNotification(false, true);

end)

RegisterNetEvent('DisplayEpi')
AddEventHandler('DisplayEpi',function(inputText)

SetNotificationTextEntry("STRING");
AddTextComponentString(inputText);
SetNotificationMessage("CHAR_PLANESITE", "CHAR_PLANESITE", true, 1, "~y~Publicitée:~s~", "");
DrawNotification(false, true);

end)
---------------------------------
-- Created By SimpleRP & Toni Morton      --
-- Please, Leave these credits --
---------------------------------