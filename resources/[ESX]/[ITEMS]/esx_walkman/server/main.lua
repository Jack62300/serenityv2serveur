ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
  ESX = obj
end)



ESX.RegisterUsableItem('mp3', function(source)
    TriggerClientEvent('esx_walkman:MP3', source)
end)

