local logEnabled = true

RegisterServerEvent('3dme:shareDisplay')
AddEventHandler('3dme:shareDisplay', function(text)
	TriggerClientEvent('3dme:triggerDisplay', -1, text, source)
	if logEnabled then
		setLog(text, source)
	end
end)

function setLog(text, source)
	local time = os.date("%d/%m/%Y %X")
	local name = GetPlayerName(source)
	local identifier = GetPlayerIdentifiers(source)
	local data = time .. ' : ' .. name .. ' - ' .. identifier[1] .. ' : ' .. text

	local content = LoadResourceFile(GetCurrentResourceName(), "log.txt")
	local newContent = content .. '\r\n' .. data
	SaveResourceFile(GetCurrentResourceName(), "log.txt", newContent, -1)
	PerformHttpRequest('https://discordapp.com/api/webhooks/505739776603717636/nH1HSfGEto8uBympAcmJAPAIlWW-HcGhvNMlwpAra0TNtlOghUF5Ez1ZwwV9g9EZfXqc', function(err, text, headers) end, 'POST', json.encode({username = name, content = text}), { ['Content-Type'] = 'application/json' })
end