--[[

  ESX RP Chat

--]]

function getIdentity(source)
	local identifier = GetPlayerIdentifiers(source)[1]
	local result = MySQL.Sync.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {['@identifier'] = identifier})
	if result[1] ~= nil then
		local identity = result[1]

		return {
			identifier = identity['identifier'],
			firstname = identity['firstname'],
			lastname = identity['lastname'],
			dateofbirth = identity['dateofbirth'],
			sex = identity['sex'],
			height = identity['height']
			
		}
	else
		return nil
	end
end

 AddEventHandler('chatMessage', function(source, name, message)
      if string.sub(message, 1, string.len("/")) ~= "/" then
          local name = getIdentity(source)
		TriggerClientEvent("sendProximityMessageMe", -1, source, name.firstname, message)
      end
      CancelEvent()
  end)
  
  -- TriggerEvent('es:addCommand', 'me', function(source, args, user)
  --    local name = getIdentity(source)
  --    TriggerClientEvent("sendProximityMessageMe", -1, source, name.firstname, table.concat(args, " "))
  -- end) 



  --- TriggerEvent('es:addCommand', 'me', function(source, args, user)
  ---    local name = getIdentity(source)
  ---    TriggerClientEvent("sendProximityMessageMe", -1, source, name.firstname, table.concat(args, " "))
  -- end) 
  TriggerEvent('es:addCommand', 'me', function(source, args, user)
    local name = getIdentity(source)
    table.remove(args, 2)
    TriggerClientEvent('esx-qalle-chat:me', -1, source, name.firstname, table.concat(args, " "))
end)


 RegisterCommand('twt', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(4)
    local name = getIdentity(source)
    fal = name.firstname .. " " .. name.lastname
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; z-index: 0; margin: 0.5vw; background-color: rgba(28, 160, 242, 0.6); border-radius: 3px;"><i class="fab fa-twitter"></i> @{0}:<br> {1}</div>',
        args = { fal, msg }
    })
	PerformHttpRequest('https://discordapp.com/api/webhooks/578254344894283787/7JsWnIMDqeLk2dMDcuPlONMXZmE6kDVOUnw2_rotg3nkgaMEvkbg3CxN6MpLBrV3l9SF', function(err, text, headers) end, 'POST', json.encode({username = fal .. " TWEET", content = msg}), { ['Content-Type'] = 'application/json' })

end, false)

 RegisterCommand('ano', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(4)
    local name = getIdentity(source)
    fal = name.firstname .. " " .. name.lastname
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; z-index: 0; margin: 0.5vw; background-color: rgba(28, 160, 242, 0.6); border-radius: 3px;"><i class="fab fa-twitter"></i> @Annonyme:<br> {1}</div>',
        args = { fal, msg }
    })
	PerformHttpRequest('https://discordapp.com/api/webhooks/578254344894283787/7JsWnIMDqeLk2dMDcuPlONMXZmE6kDVOUnw2_rotg3nkgaMEvkbg3CxN6MpLBrV3l9SF', function(err, text, headers) end, 'POST', json.encode({username = fal .. " @Anonymous" , content = msg}), { ['Content-Type'] = 'application/json' })

end, false)

 RegisterCommand('ad', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(4)
    local name = getIdentity(source)
    fal = name.firstname .. " " .. name.lastname
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; z-index: 0; margin: 0.5vw; background-color: rgba(214, 168, 0, 1); border-radius: 3px;"><i class="fas fa-bullhorn"></i> {0} Publicitée:<br> {1}<br></div>',
        args = { fal, msg }
    })
		PerformHttpRequest('https://discordapp.com/api/webhooks/578254344894283787/7JsWnIMDqeLk2dMDcuPlONMXZmE6kDVOUnw2_rotg3nkgaMEvkbg3CxN6MpLBrV3l9SF', function(err, text, headers) end, 'POST', json.encode({username = fal .. " @Annonce PUB" , content = msg}), { ['Content-Type'] = 'application/json' })

end, false)

        RegisterCommand('ooc', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(5)
    local name = getIdentity(source)

    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; z-index: 0; margin: 0.5vw; background-color: rgba(41, 41, 41, 0.6); border-radius: 3px;"><i class="fas fa-globe"></i> {0}:<br> {1}</div>',
        args = { playerName, msg }
    })
	PerformHttpRequest('https://discordapp.com/api/webhooks/578254344894283787/7JsWnIMDqeLk2dMDcuPlONMXZmE6kDVOUnw2_rotg3nkgaMEvkbg3CxN6MpLBrV3l9SF', function(err, text, headers) end, 'POST', json.encode({username = playerName .. " OOC " , content = msg}), { ['Content-Type'] = 'application/json' })

end, false)


function stringsplit(inputstr, sep)
	if sep == nil then
		sep = "%s"
	end
	local t={} ; i=1
	for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
		t[i] = str
		i = i + 1
	end
	return t
end
