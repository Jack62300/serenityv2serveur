RegisterServerEvent("player:serviceOn")
RegisterServerEvent("player:serviceOff")
RegisterServerEvent("call:makeCall")
RegisterServerEvent("call:getCall")

local inService = {
    ["ambulance"] = {},
	["police"] = {},
}
local callActive = {
	["ambulance"] = {taken = false},
	["armurier"] = {taken = false},
	["avocat"] = {taken = false},
	["bahama"] = {taken = false},
	["baladins"] = {taken = false},
	["banker"] = {taken = false},
	["cardealer"] = {taken = false},
	["cartel"] = {taken = false},
	["dock"] = {taken = false},
	["eboueur"] = {taken = false},
	["epicerie"] = {taken = false},
	["fib"] = {taken = false},
	["fisherman"] = {taken = false},
	["fuel"] = {taken = false},
	["gang"] = {taken = false},
	["garbage"] = {taken = false},
	["gouv"] = {taken = false},
	["lumberjack"] = {taken = false},
	["mafia"] = {taken = false},
	["mamas"] = {taken = false},
	["mecano"] = {taken = false},
	["mechanic"] = {taken = false},
	["miner"] = {taken = false},
	["pizza"] = {taken = false},
	["police"] = {taken = false},
	["poste"] = {taken = false},
	["realestateagent"] = {taken = false},
	["reporter"] = {taken = false},
	["slaughterer"] = {taken = false},
	["state"] = {taken = false},
	["taxi"] = {taken = false},
	["textil"] = {taken = false},
	["trucker"] = {taken = false},
	["unemployed"] = {taken = false},
	["unicorn"] = {taken = false},
	["vigne"] = {taken = false},
}

local timing = 60000

-- Add the player to the inService table
AddEventHandler("player:serviceOn", function(job)
local source = source
print ("Prise de service !!")
    table.insert(inService[job], source)	
end)

-- Remove the player to the inService table
AddEventHandler("player:serviceOff", function(job)
local source = source
    if job == nil then
        for _,v in pairs(inService) do
            removeService(v)
        end
    end
    removeService(source, job)
end)

-- Receive call event
AddEventHandler("call:makeCall", function(job, pos, message)
local source = source
	 -- Players can't call simultanously the same service
    if callActive[job].taken then
        TriggerClientEvent("target:call:taken", callActive[job].target, 2)
        CancelEvent()
    end
    -- Save the target of the call
    callActive[job].target = source
    callActive[job].taken = true
    -- Send notif to all players in service
    -- for _, player in pairs(inService[job]) do
        TriggerClientEvent("call:callIncoming", player, job, pos, message)
    -- end
    -- Say to the target after 'timing' seconds that nobody will come
    SetTimeout(timing, function()
        if callActive[job].taken then
            TriggerClientEvent("target:call:taken", callActive[job].target, 0)
        end
        callActive[job].taken = false
    end)
end)

AddEventHandler("call:getCall", function(job)
    callActive[job].taken = false
    -- Say to other in service people that the call is taken
    for _, player in pairs(inService[job]) do
        if player ~= source then
            TriggerClientEvent("call:taken", player)
        end
    end
    -- Say to a target that someone come
    if not callActive[job].taken then
        TriggerClientEvent("target:call:taken", callActive[job].target, 1)
    end
end)

function removeService(player, job)
    for i,val in pairs(inService[job]) do
        if val == player then
            table.remove(inService[job], i)
            return
        end
    end
end
