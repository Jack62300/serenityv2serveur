ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_lapdance:Buy')
AddEventHandler('esx_lapdance:Buy', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
	
	if(xPlayer.getMoney() >= 0) then
	xPlayer.removeMoney(0)
	TriggerClientEvent('esx_lapdance:lapdance', _source)
	sendNotification(_source, 'Vous avez acheter une Lapdance', 'success', 2500)
	else
	sendNotification(_source, 'Du har inte tillräckligt med pengar. En lapdance kostar 1250 SEK', 'error', 2500)
	end

end)

--notification
function sendNotification(xSource, message, messageType, messageTimeout)
    TriggerClientEvent("pNotify:SendNotification", xSource, {
        text = message,
        type = messageType,
        queue = "lmao",
        timeout = messageTimeout,
        layout = "bottomCenter"
    })
end