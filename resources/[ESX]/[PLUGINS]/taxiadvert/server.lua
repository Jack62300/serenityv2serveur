---------------------------------
-- Created SimpleRP & By Toni Morton      --
-- Please, Leave these credits --
---------------------------------


RegisterServerEvent("SyncTaxi")
AddEventHandler('SyncTaxi', function(inputText)
TriggerClientEvent('DisplayTaxi', -1, inputText)
end)
RegisterServerEvent("SyncAmbu")
AddEventHandler('SyncAmbu', function(inputText)
TriggerClientEvent('DisplayAmbu', -1, inputText)
end)

RegisterServerEvent("SyncPoste")
AddEventHandler('SyncPoste', function(inputText)
TriggerClientEvent('DisplayPoste', -1, inputText)
end)

RegisterServerEvent("SyncBanq")
AddEventHandler('SyncBanq', function(inputText)
TriggerClientEvent('DisplayBanq', -1, inputText)
end)
RegisterServerEvent("SyncPolice")
AddEventHandler('SyncPolice', function(inputText)
TriggerClientEvent('DisplayPolice', -1, inputText)
end)
RegisterServerEvent("SyncMamas")
AddEventHandler('SyncMamas', function(inputText)
TriggerClientEvent('DisplayMamas', -1, inputText)
end)
RegisterServerEvent("Syncimo")
AddEventHandler('Syncimo', function(inputText)
TriggerClientEvent('DisplayImo', -1, inputText)
end)
RegisterServerEvent("SyncMeca")
AddEventHandler('SyncMeca', function(inputText)
TriggerClientEvent('DisplayMeca', -1, inputText)
end)
RegisterServerEvent("SyncSher")
AddEventHandler('SyncSher', function(inputText)
TriggerClientEvent('DisplaySher', -1, inputText)
end)
RegisterServerEvent("SyncJourna")
AddEventHandler('SyncJourna', function(inputText)
TriggerClientEvent('DisplayJourna', -1, inputText)
end)
RegisterServerEvent("SyncEpi")
AddEventHandler('SyncEpi', function(inputText)
TriggerClientEvent('DisplayEpi', -1, inputText)
end)



AddEventHandler('chatMessage', function(from, name, message)
	if message == "/pub" then
		CancelEvent()
		TriggerClientEvent("Taxi", from)
	end
end)

---------------------------------
-- Created By SimpleRP & Toni Morton      --
-- Please, Leave these credits --
---------------------------------
