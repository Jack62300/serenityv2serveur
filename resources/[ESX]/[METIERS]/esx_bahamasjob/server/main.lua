-----------------------------------------
-- Created and modify by L'ile Légale RP
-- SenSi and Kaminosekai
-----------------------------------------

ESX = nil
local PlayersTransforming  = {}
local PlayersSelling       = {}
local PlayersHarvesting = {}
local bouteille_recycle = 1
local bouteille_alcool = 1
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

if Config.MaxInService ~= -1 then
	TriggerEvent('esx_service:activateService', 'bahamas', Config.MaxInService)
end

TriggerEvent('esx_phone:registerNumber', 'bahamas', _U('bahamas_client'), true, true)
TriggerEvent('esx_society:registerSociety', 'bahamas', 'bahamas', 'society_bahamas', 'society_bahamas', 'society_bahamas', {type = 'private'})
local function Harvest(source, zone)
	if PlayersHarvesting[source] == true then

		local xPlayer  = ESX.GetPlayerFromId(source)
		if zone == "BouteilleFarm" then
			local itemQuantity = xPlayer.getInventoryItem('bouteille').count
			if itemQuantity >= 100 then
				TriggerClientEvent('esx:showNotification', source, _U('not_enough_place'))
				return
			else
				SetTimeout(4000, function()
					xPlayer.addInventoryItem('bouteille', 1)
					Harvest(source, zone)
				end)
			end
		end
	end
end

RegisterServerEvent('esx_bahamasjob:startHarvest')
AddEventHandler('esx_bahamasjob:startHarvest', function(zone)
	local _source = source
  	
	if PlayersHarvesting[_source] == false then
		TriggerClientEvent('esx:showNotification', _source, '~r~C\'est pas bien de glitch ~w~')
		PlayersHarvesting[_source]=false
	else
		PlayersHarvesting[_source]=true
		TriggerClientEvent('esx:showNotification', _source, _U('bouteille_taken'))  
		Harvest(_source,zone)
	end
end)


RegisterServerEvent('esx_bahamasjob:stopHarvest')
AddEventHandler('esx_bahamasjob:stopHarvest', function()
	local _source = source
	
	if PlayersHarvesting[_source] == true then
		PlayersHarvesting[_source]=false
		TriggerClientEvent('esx:showNotification', _source, 'Vous sortez de la ~r~zone')
	else
		TriggerClientEvent('esx:showNotification', _source, 'Vous pouvez ~g~récolter')
		PlayersHarvesting[_source]=true
	end
end)


local function Transform(source, zone)

	if PlayersTransforming[source] == true then

		local xPlayer  = ESX.GetPlayerFromId(source)
		if zone == "TraitementBouteille" then
			local itemQuantity = xPlayer.getInventoryItem('bouteille').count
			
			if itemQuantity <= 0 then
				TriggerClientEvent('esx:showNotification', source, _U('not_enough_bouteille'))
				return
			else
				local rand = math.random(0,100)
				if (rand >= 98) then
					SetTimeout(4000, function()
						xPlayer.removeInventoryItem('bouteille', 2)
						xPlayer.addInventoryItem('bouteille_recycle', 1)
						TriggerClientEvent('esx:showNotification', source, _U('bouteille_recycle'))
						Transform(source, zone)
					end)
				else
					SetTimeout(4000, function()
						xPlayer.removeInventoryItem('bouteille', 2)
						xPlayer.addInventoryItem('bouteille_recycle', 1)
				
						Transform(source, zone)
					end)
				end
			end
		elseif zone == "TraitementAlcool" then
			local itemQuantity = xPlayer.getInventoryItem('bouteille').count
			if itemQuantity <= 0 then
				TriggerClientEvent('esx:showNotification', source, _U('not_enough_bouteille'))
				return
			else
				SetTimeout(4000, function()
					xPlayer.removeInventoryItem('bouteille', 2)
					xPlayer.addInventoryItem('bouteille_alcool', 1)
		  
					Transform(source, zone)	  
				end)
			end
		end
	end	
end

RegisterServerEvent('esx_bahamasjob:startTransform')
AddEventHandler('esx_bahamasjob:startTransform', function(zone)
	local _source = source
  	
	if PlayersTransforming[_source] == false then
		TriggerClientEvent('esx:showNotification', _source, '~r~C\'est pas bien de glitch ~w~')
		PlayersTransforming[_source]=false
	else
		PlayersTransforming[_source]=true
		TriggerClientEvent('esx:showNotification', _source, _U('transforming_in_progress')) 
		Transform(_source,zone)
	end
end)

RegisterServerEvent('esx_bahamasjob:stopTransform')
AddEventHandler('esx_bahamasjob:stopTransform', function()

	local _source = source
	
	if PlayersTransforming[_source] == true then
		PlayersTransforming[_source]=false
		TriggerClientEvent('esx:showNotification', _source, 'Vous sortez de la ~r~zone')
		
	else
		TriggerClientEvent('esx:showNotification', _source, 'Vous pouvez ~g~transformer votre bouteille')
		PlayersTransforming[_source]=true
		
	end
end)

local function Sell(source, zone)

	if PlayersSelling[source] == true then
		local xPlayer  = ESX.GetPlayerFromId(source)
		
		if zone == 'SellFarm' then
			if xPlayer.getInventoryItem('bouteille_recycle').count <= 0 then
				bouteille_recycle = 0
			else
				bouteille_recycle = 1
			end
			
			if xPlayer.getInventoryItem('bouteille_recycle').count <= 0 then
				bouteille_recycle = 0
			else
				bouteille_recycle = 1
			end
		
			if bouteille_recycle == 0 and bouteille_alcool == 0 then
				TriggerClientEvent('esx:showNotification', source, _U('no_product_sale'))
				return
			elseif xPlayer.getInventoryItem('bouteille_recycle').count <= 0 and bouteille_recycle == 0 then
				TriggerClientEvent('esx:showNotification', source, _U('no_bouteille_recycle_sale'))
				bouteille_recycle = 0
				return
			elseif xPlayer.getInventoryItem('bouteille_alcool').count <= 0 and bouteille_alcool == 0then
				TriggerClientEvent('esx:showNotification', source, _U('no_bouteille_alcool_sale'))
				bouteille_alcool = 0
				return
			else
				if (bouteille_recycle == 1) then
					SetTimeout(1100, function()
						local money = math.random(8,12)
						xPlayer.removeInventoryItem('bouteille_recycle', 1)
						local societyAccount = nil

						TriggerEvent('esx_addonaccount:getSharedAccount', 'society_bahamas', function(account)
							societyAccount = account
						end)
						if societyAccount ~= nil then
							societyAccount.addMoney(money)
							TriggerClientEvent('esx:showNotification', xPlayer.source, _U('comp_earned') .. money)
						end
						Sell(source,zone)
					end)
				elseif (bouteille_alcool == 1) then
					SetTimeout(1100, function()
						local money = math.random(8,12)
						xPlayer.removeInventoryItem('bouteille_alcool', 1)
						local societyAccount = nil

						TriggerEvent('esx_addonaccount:getSharedAccount', 'society_bahamas', function(account)
							societyAccount = account
						end)
						if societyAccount ~= nil then
							societyAccount.addMoney(money)
							TriggerClientEvent('esx:showNotification', xPlayer.source, _U('comp_earned') .. money)
						end
						Sell(source,zone)
					end)
				end
				
			end
		end
	end
end

RegisterServerEvent('esx_bahamasjob:startSell')
AddEventHandler('esx_bahamasjob:startSell', function(zone)

	local _source = source
	
	if PlayersSelling[_source] == false then
		TriggerClientEvent('esx:showNotification', _source, '~r~C\'est pas bien de glitch ~w~')
		PlayersSelling[_source]=false
	else
		PlayersSelling[_source]=true
		TriggerClientEvent('esx:showNotification', _source, _U('sale_in_prog'))
		Sell(_source, zone)
	end

end)

RegisterServerEvent('esx_bahamasjob:stopSell')
AddEventHandler('esx_bahamasjob:stopSell', function()

	local _source = source
	
	if PlayersSelling[_source] == true then
		PlayersSelling[_source]=false
		TriggerClientEvent('esx:showNotification', _source, 'Vous sortez de la ~r~zone')
		
	else
		TriggerClientEvent('esx:showNotification', _source, 'Vous pouvez ~g~vendre')
		PlayersSelling[_source]=true
	end

end)

RegisterServerEvent('esx_bahamasjob:getStockItem')
AddEventHandler('esx_bahamasjob:getStockItem', function(itemName, count)

	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_bahamas', function(inventory)

		local item = inventory.getItem(itemName)

		if item.count >= count then
			inventory.removeItem(itemName, count)
			xPlayer.addInventoryItem(itemName, count)
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
		end

		TriggerClientEvent('esx:showNotification', xPlayer.source, _U('have_withdrawn') .. count .. ' ' .. item.label)

	end)

end)

ESX.RegisterServerCallback('esx_bahamasjob:getStockItems', function(source, cb)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_bahamas', function(inventory)
		cb(inventory.items)
	end)

end)

RegisterServerEvent('esx_bahamasjob:putStockItems')
AddEventHandler('esx_bahamasjob:putStockItems', function(itemName, count)

	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_bahamas', function(inventory)

		local item = inventory.getItem(itemName)

		if item.count >= 0 then
			xPlayer.removeInventoryItem(itemName, count)
			inventory.addItem(itemName, count)
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
		end

		TriggerClientEvent('esx:showNotification', xPlayer.source, _U('added') .. count .. ' ' .. item.label)

	end)
end)

ESX.RegisterServerCallback('esx_bahamasjob:getPlayerInventory', function(source, cb)

	local xPlayer    = ESX.GetPlayerFromId(source)
	local items      = xPlayer.inventory

	cb({
		items      = items
	})

end)


ESX.RegisterUsableItem('bouteille_recycle', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('bouteille_recycle', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 40000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 120000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_bouteille_recycle'))

end)

ESX.RegisterUsableItem('bouteille_alcool', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('bouteille_alcool', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 400000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_bouteille_alcool'))

end)
