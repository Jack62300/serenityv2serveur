ESX              = nil
local mp3      = false


Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
 
end)

RegisterNetEvent("esx_walkman:NoMoreMP3")
AddEventHandler("esx_walkman:NoMoreMP3",function()
	if mp3 == true then
		TriggerEvent('esx:showNotification','tu n\'a plus de MP3')
		TriggerEvent("esx_walkman:MP3")
	end
end)


RegisterNetEvent("esx_walkman:MP3")
AddEventHandler("esx_walkman:MP3",function()
	if mp3 then
		
		mp3 = false
		SetMobileRadioEnabledDuringGameplay(false)
		TriggerEvent('esx:showNotification','tu as retirer ton MP3')
		TriggerEvent('skinchanger:getSkin', function(skin)

			if skin.sex == 0 then
					local clothesSkin = {
							['helmet_1']		= -1, ['helmet_2']	= 0,
					}
					TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
			else
					local clothesSkin = {
							['helmet_1']		= -1, ['helmet_2']	= 0,
					}
					TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
			end
		end)
	else
		
		mp3 = true
		SetMobileRadioEnabledDuringGameplay(true)
		TriggerEvent('esx:showNotification','tu as mis ton MP3')
		TriggerEvent('skinchanger:getSkin', function(skin)

			if skin.sex == 0 then
					local clothesSkin = {
							['helmet_1']		= 15, ['helmet_2']	= 1,
					}
					TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
			else
					local clothesSkin = {
							['helmet_1']		= 15, ['helmet_2']	= 6,
					}
					TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
			end
		end)
	end

	
end)


Citizen.CreateThread(function()
	
		
end)
