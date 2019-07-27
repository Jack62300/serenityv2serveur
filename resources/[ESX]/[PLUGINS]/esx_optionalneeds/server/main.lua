ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)

ESX.RegisterUsableItem('beer', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('beer', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 25000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 70000)
	TriggerClientEvent('esx_optionalneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_beer'))

end)
ESX.RegisterUsableItem('jager', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('jager', 1)
	TriggerClientEvent('esx_status:add', source, 'drunk', 75000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 70000)
	TriggerClientEvent('esx_optionalneeds:onDrink', source)
	

end)
ESX.RegisterUsableItem('vodka', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('vodka', 1)
	TriggerClientEvent('esx_status:add', source, 'drunk', 85000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 70000)
	TriggerClientEvent('esx_optionalneeds:onDrink', source)
	

end)
ESX.RegisterUsableItem('rhum', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('rhum', 1)
	TriggerClientEvent('esx_status:add', source, 'drunk', 75000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 70000)
	TriggerClientEvent('esx_optionalneeds:onDrink', source)
	

end)
ESX.RegisterUsableItem('whisky', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('whisky', 1)
	TriggerClientEvent('esx_status:add', source, 'drunk', 80000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 70000)
	TriggerClientEvent('esx_optionalneeds:onDrink', source)
	

end)
ESX.RegisterUsableItem('tequila', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('tequila', 1)
	TriggerClientEvent('esx_status:add', source, 'drunk', 25000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 70000)
	TriggerClientEvent('esx_optionalneeds:onDrink', source)
	

end)
ESX.RegisterUsableItem('martini', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('martini', 1)
	TriggerClientEvent('esx_status:add', source, 'drunk', 40000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 70000)
	TriggerClientEvent('esx_optionalneeds:onDrink', source)
	

end)
ESX.RegisterUsableItem('jagerbomb', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('jagerbomb', 1)
	TriggerClientEvent('esx_status:add', source, 'drunk', 70000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 70000)
	TriggerClientEvent('esx_optionalneeds:onDrink', source)
	

end)
ESX.RegisterUsableItem('whiskycoca', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('whiskycoca', 1)
	TriggerClientEvent('esx_status:add', source, 'drunk', 50000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 70000)
	TriggerClientEvent('esx_optionalneeds:onDrink', source)
	

end)
ESX.RegisterUsableItem('vodkaenergy', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('vodkaenergy', 1)
	TriggerClientEvent('esx_status:add', source, 'drunk', 50000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 70000)
	TriggerClientEvent('esx_optionalneeds:onDrink', source)
	

end)
ESX.RegisterUsableItem('vodkafruit', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('vodkafruit', 1)
	TriggerClientEvent('esx_status:add', source, 'drunk', 50000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 70000)
	TriggerClientEvent('esx_optionalneeds:onDrink', source)
	

end)
ESX.RegisterUsableItem('rhumfruit', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('rhumfruit', 1)
	TriggerClientEvent('esx_status:add', source, 'drunk', 40000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 70000)
	TriggerClientEvent('esx_optionalneeds:onDrink', source)
	

end)
ESX.RegisterUsableItem('teqpaf', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('tekpaf', 1)
	TriggerClientEvent('esx_status:add', source, 'drunk', 70000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 70000)
	TriggerClientEvent('esx_optionalneeds:onDrink', source)
	

end)

ESX.RegisterUsableItem('rhumcoca', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('rhumcoca', 1)
	TriggerClientEvent('esx_status:add', source, 'drunk', 50000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 70000)
	TriggerClientEvent('esx_optionalneeds:onDrink', source)
	

end)
ESX.RegisterUsableItem('mojito', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('mojito', 1)
	TriggerClientEvent('esx_status:add', source, 'drunk', 40000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 70000)
	TriggerClientEvent('esx_optionalneeds:onDrink', source)
	

end)
ESX.RegisterUsableItem('metreshooter', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('metreshooter', 1)
	TriggerClientEvent('esx_status:add', source, 'drunk', 300000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 70000)
	TriggerClientEvent('esx_optionalneeds:onDrink', source)
	

end)
ESX.RegisterUsableItem('jagercerbere', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('jagercerbere', 1)
	TriggerClientEvent('esx_status:add', source, 'drunk', 70000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 70000)
	TriggerClientEvent('esx_optionalneeds:onDrink', source)
	

end)
ESX.RegisterUsableItem('vinblanc', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('vinblanc', 1)
	TriggerClientEvent('esx_status:add', source, 'drunk', 25000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 70000)
	TriggerClientEvent('esx_optionalneeds:onDrink', source)
	

end)
ESX.RegisterUsableItem('vinrouge', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('vinrouge', 1)
	TriggerClientEvent('esx_status:add', source, 'drunk', 25000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 70000)
	TriggerClientEvent('esx_optionalneeds:onDrink', source)
	

end)

ESX.RegisterUsableItem('grandcru', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('grandcru', 1)
	TriggerClientEvent('esx_status:add', source, 'drunk', 25000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 70000)
	TriggerClientEvent('esx_optionalneeds:onDrink', source)
	

end)

ESX.RegisterUsableItem('sake', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('sake', 1)
	TriggerClientEvent('esx_status:add', source, 'drunk', 25000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 70000)
	TriggerClientEvent('esx_optionalneeds:onDrink', source)
	

end)