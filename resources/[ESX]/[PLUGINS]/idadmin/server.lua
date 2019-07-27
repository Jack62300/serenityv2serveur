--[[

  Made with love by Cheleber, you can join my RP Server here: www.grandtheftlusitan.com
  Just add your admins steam id to server and client!

--]]

--- ADD YOUR STEAM ID OR LICENSE FROM YOUR ADMINS!
local admins = {
    
	
	'steam:110000107ac13dd',
	'steam:110000108c6c763',
	'steam:11000011877065b',
	'steam:110000102c35b16',
	'steam:11000010f4260d8',
	'steam:110000106bb6ef7',
	'steam:11000010dd4b413',
	'steam:1100001016c3b4c',
	'steam:110000106cd0cc7',
	'steam:11000010eb4b3a8',
	'steam:110000116837593',
	'steam:110000110bcfa14',

	
}



function isAdmin(player)
    local allowed = false
    for i,id in ipairs(admins) do
        for x,pid in ipairs(GetPlayerIdentifiers(player)) do
            if string.lower(pid) == string.lower(id) then
                allowed = true
            end
        end
    end
    return allowed
end



AddEventHandler('chatMessage', function(source, color, msg)
	cm = stringsplit(msg, " ")
	if cm[1] == "/noid" then
		CancelEvent()
		if isAdmin(source) then
		    TriggerClientEvent("dontshowid", -1, source)
		    TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "ID's OFF!")
		end
	end	
	if cm[1] == "/seeid" then
		CancelEvent()
		if isAdmin(source) then
		    TriggerClientEvent("showid", -1, source)
		    TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "ID's ON!")
		end
	end	
end)


RegisterServerEvent('checkadmin')
AddEventHandler('checkadmin', function()
	local id = source
	if isAdmin(id) then
		TriggerClientEvent("setadmin", source)
	end
end)


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
