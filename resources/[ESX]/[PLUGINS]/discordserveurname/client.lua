Citizen.CreateThread(function()
	while true do
		SetDiscordAppId(556449067840962561)
		SetDiscordRichPresenceAsset('logo_name')
        SetDiscordRichPresenceAssetText('Serenity RP')
        SetDiscordRichPresenceAssetSmall('info')
        SetDiscordRichPresenceAssetSmallText('Serveur RP sérieux.')
		Citizen.Wait(60000)
	end
end)
Citizen.CreateThread(function()
	while true do
		local pId = GetPlayerServerId(PlayerId())
		local pName = GetPlayerName(PlayerId())
		local StreetHash = GetStreetNameAtCoord(x, y, z)
		Citizen.Wait(15000)
		players = {}
		for i = 0, 31 do
			if NetworkIsPlayerActive( i ) then
				table.insert( players, i )
			end
		end
		if StreetHash ~= nil then
			StreetName = GetStreetNameFromHashKey(StreetHash)
					SetRichPresence("ID: "..pId.." | "..pName.." | Joueurs ".. #players .. "/32")

			
		end
	end
end)