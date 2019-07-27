--Copyright ZAUB1
--N'hesitez pas a rejoindre mon discord : https://discord.gg/yFuSEGj
--Et a me contacter directement pour tout bug ou suggestions

--ESX INIT--

ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

--EVENTS--

RegisterServerEvent('pizza:pourboire') --Paie a la livraison d'une pizza + pourboire eventuel
AddEventHandler('pizza:pourboire', function(pourboire)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.addMoney(pourboire)
end)

RegisterServerEvent("pizza:paiefinale") --Paie "bonus" lors de la fin de service
AddEventHandler("pizza:paiefinale", function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	local flouzefin = math.random(5, 8) * 5

	xPlayer.addMoney(flouzefin)

	TriggerClientEvent("pNotify:SendNotification", source, {
		text = "Un petit bonus de " .. flouzefin .. "€ pour toi, reviens quand tu veux !",
		type = "success",
		queue = "global",
		timeout = 4000,
		layout = "bottomRight"
	})
end)

RegisterServerEvent("pizza:itemadd") --Ajout temporaire de l'item "pizza"
AddEventHandler("pizza:itemadd", function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.addInventoryItem('command_hotpizza', 1)
end)

RegisterServerEvent("pizza:itemrm") --Rm de l'item "pizza"
AddEventHandler("pizza:itemrm", function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.removeInventoryItem('command_pizza', 1)
end)