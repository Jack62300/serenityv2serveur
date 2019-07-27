ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('bread', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('bread', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_bread'))

end)

ESX.RegisterUsableItem('water', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('water', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onEvian', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_water'))

end)
ESX.RegisterUsableItem('evian', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('evian', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 250000)
	TriggerClientEvent('esx_basicneeds:onEvian', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_water'))

end)

ESX.RegisterUsableItem('twix', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('twix', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_twix'))

end)

ESX.RegisterUsableItem('snickers', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('snickers', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 250000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_snickers'))

end)

ESX.RegisterUsableItem('mars', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('mars', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_mars'))

end)

ESX.RegisterUsableItem('bounty', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('bounty', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_bounty'))

end)

ESX.RegisterUsableItem('kitkat', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('kitkat', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_kitkat'))

end)

ESX.RegisterUsableItem('coffee', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('coffee', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 100000)
	TriggerClientEvent('esx_basicneeds:onDrinkCoffee', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_coffee'))

end)

ESX.RegisterUsableItem('the', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('the', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 150000)
	TriggerClientEvent('esx_basicneeds:onDrinkCoffee', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_the'))

end)

ESX.RegisterUsableItem('donut', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('donut', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 130000)
	TriggerClientEvent('esx_basicneeds:onEatDonut', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_donut'))
	
	end)

ESX.RegisterUsableItem('chips', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('chips', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 150000)
	TriggerClientEvent('esx_basicneeds:onChips', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_chips'))

end)

ESX.RegisterUsableItem('fanta', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('fanta', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 230000)
	TriggerClientEvent('esx_basicneeds:onFanta', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_fanta'))

end)

ESX.RegisterUsableItem('candy', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('candy', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 50000)
	TriggerClientEvent('esx_basicneeds:onChips', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_candy'))

end)

ESX.RegisterUsableItem('cookie', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('cookie', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 120000)
	TriggerClientEvent('esx_basicneeds:onChips', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_cookie'))

end)


ESX.RegisterUsableItem('poulet_grille', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('poulet_grille', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 250000)
	TriggerClientEvent('esx_basicneeds:onNuggets', source)
	TriggerClientEvent('esx:showNotification', source, "Vous avez graille un KFC")

end)

ESX.RegisterUsableItem('granola', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('granola', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 250000)
	TriggerClientEvent('esx_basicneeds:onChips', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_granola'))

end)

ESX.RegisterUsableItem('sandwich', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('sandwich', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 280000)
	TriggerClientEvent('esx_basicneeds:onSandw', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_sanchwich'))

end)

ESX.RegisterUsableItem('beer', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('beer', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 180000)
	TriggerClientEvent('esx_basicneeds:onBeer', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_beer'))

end)

ESX.RegisterUsableItem('panache', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('panache', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 180000)
	TriggerClientEvent('esx_basicneeds:onBeer', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_panache'))

end)

ESX.RegisterUsableItem('sangria', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('sangria', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 250000)
	TriggerClientEvent('esx_basicneeds:onBeer', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_sangria'))

end)

ESX.RegisterUsableItem('grand_cru', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('grand_cru', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 100000)
	TriggerClientEvent('esx_basicneeds:onBeer', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_grand_cru'))

end)

ESX.RegisterUsableItem('vine', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('vine', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 100000)
	TriggerClientEvent('esx_basicneeds:onBeer', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_vine'))

end)

ESX.RegisterUsableItem('vin', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('vin', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 100000)
	TriggerClientEvent('esx_basicneeds:onBeer', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_vin'))

end)

ESX.RegisterUsableItem('coca', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('coca', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 250000)
	TriggerClientEvent('esx_basicneeds:onCoca', source)
	TriggerClientEvent('esx:showNotification', source, "Vous avez bu du Coca")

end)

ESX.RegisterUsableItem('jusfruit', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('jusfruit', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 250000)
	TriggerClientEvent('esx_basicneeds:onEnergy', source)
	TriggerClientEvent('esx:showNotification', source, "Vous avez bu du Jus de Fruit")

end)

ESX.RegisterUsableItem('nouille', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('nouille', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 300000)
	TriggerClientEvent('esx_basicneeds:onNuggets', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_nouille'))

end)

ESX.RegisterUsableItem('chocolatnoir', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('chocolatnoir', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 150000)
	TriggerClientEvent('esx_basicneeds:onNuggets', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_chocolatnoir'))

end)

ESX.RegisterUsableItem('chocolatblanc', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('chocolatblanc', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 150000)
	TriggerClientEvent('esx_basicneeds:onNuggets', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_chocolatblanc'))

end)

ESX.RegisterUsableItem('limonade', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('limonade', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 220000)
	TriggerClientEvent('esx_basicneeds:onSoda', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_limonade'))

end)

ESX.RegisterUsableItem('apple', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('apple', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 230000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 50000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_apple'))

end)

ESX.RegisterUsableItem('banana', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('banana', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 230000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 50000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_banana'))

end)

ESX.RegisterUsableItem('poire', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('poire', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 50000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_poire'))

end)

ESX.RegisterUsableItem('kiwi', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('kiwi', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 50000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_kiwi'))

end)

ESX.RegisterUsableItem('fraise', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('fraise', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 190000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 50000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_fraise'))

end)

ESX.RegisterUsableItem('framboise', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('framboise', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 50000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_framboise'))

end)

ESX.RegisterUsableItem('porto', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('porto', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_porto'))

end)

ESX.RegisterUsableItem('sumol', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('sumol', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_sumol'))

end)

ESX.RegisterUsableItem('miranda', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('miranda', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_miranda'))

end)

ESX.RegisterUsableItem('pepsi', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pepsi', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 250000)
	TriggerClientEvent('esx_basicneeds:onEnergy', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_pepsi'))

end)

ESX.RegisterUsableItem('pancake', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pancake', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 180000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_pancake'))

end)

ESX.RegisterUsableItem('gaufre', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('gaufre', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 180000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_gaufre'))

end)
ESX.RegisterUsableItem('soda', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('soda', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 300000)
	TriggerClientEvent('esx_basicneeds:onSoda', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_soda'))

end)



ESX.RegisterUsableItem('sprunk', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('sprunk', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 350000)
	TriggerClientEvent('esx_basicneeds:onSoda', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_sprunk'))

end)

ESX.RegisterUsableItem('sprunkxl', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('sprunkxl', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 400000)
	TriggerClientEvent('esx_basicneeds:onSoda', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_sprunkxl'))

end)

ESX.RegisterUsableItem('frites', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('frites', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 250000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_frites'))

end)

ESX.RegisterUsableItem('fritesxl', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('fritesxl', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 300000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_fritesxl'))

end)

ESX.RegisterUsableItem('burger', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('burger', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 350000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_burger'))

end)

ESX.RegisterUsableItem('burgerxl', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('burgerxl', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 400000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_burgerxl'))

end)

ESX.RegisterUsableItem('menurk', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('menurk', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 1000000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 1000000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_menurk'))

end)

ESX.RegisterUsableItem('effetonic', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('effetonic', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 1000000)
	TriggerClientEvent('esx_basicneeds:onEnergy', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_effetonic'))

end)

ESX.RegisterUsableItem('nems', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('nems', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 350000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_nems'))

end)



ESX.RegisterUsableItem('samoussa', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('samoussa', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 350000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_samoussa'))

end)

ESX.RegisterUsableItem('rizthai', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('rizthai', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 400000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_rizthai'))

end)


ESX.RegisterUsableItem('cheeseburger', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('cheeseburger', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 400000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('miam'))

end)

ESX.RegisterUsableItem('pizza', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pizza', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 400000)
	TriggerClientEvent('esx_basicneeds:onHotdog', source)
	TriggerClientEvent('esx:showNotification', source, _U('miam'))

end)

ESX.RegisterUsableItem('baguette', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('baguette', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 400000)
	TriggerClientEvent('esx_basicneeds:onHotdog', source)
	TriggerClientEvent('esx:showNotification', source, _U('miam'))

end)

ESX.RegisterUsableItem('macfish', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('macfish', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 400000)
	TriggerClientEvent('esx_basicneeds:onSandw', source)
	TriggerClientEvent('esx:showNotification', source, _U('miam'))

end)
ESX.RegisterUsableItem('tacos', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('tacos', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 400000)
	TriggerClientEvent('esx_basicneeds:onHotdog', source)
	TriggerClientEvent('esx:showNotification', source, _U('miam'))

end)

ESX.RegisterUsableItem('kebab', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('kebab', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 400000)
	TriggerClientEvent('esx_basicneeds:onHotdog', source)
	TriggerClientEvent('esx:showNotification', source, _U('miam'))

end)
ESX.RegisterUsableItem('cheeseburger', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('cheeseburger', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 400000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('miam'))

end)

ESX.RegisterUsableItem('rizcantone', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('rizcantone', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 400000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_rizcantone'))

end)

ESX.RegisterUsableItem('rouleauprintemps', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('rouleauprintemps', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 300000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_rouleauprintemps'))

end)
ESX.RegisterUsableItem('bolcacahuetes', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('bolcacahuetes', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
	TriggerClientEvent('esx_basicneeds:onCawet', source)
	TriggerClientEvent('esx:showNotification', source, _U('miam'))

end)
ESX.RegisterUsableItem('bolnoixcajou', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('bolnoixcajou', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
	TriggerClientEvent('esx_basicneeds:onCawet', source)
	TriggerClientEvent('esx:showNotification', source, _U('miam'))

end)
ESX.RegisterUsableItem('bolpistache', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('bolpistache', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
	TriggerClientEvent('esx_basicneeds:onCawet', source)
	TriggerClientEvent('esx:showNotification', source, _U('miam'))

end)

ESX.RegisterUsableItem('bolchips', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('bolchips', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
	TriggerClientEvent('esx_basicneeds:onCawet', source)
	TriggerClientEvent('esx:showNotification', source, _U('miam'))

end)
ESX.RegisterUsableItem('saucisson', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('saucisson', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
	TriggerClientEvent('esx_basicneeds:onCawet', source)
	TriggerClientEvent('esx:showNotification', source, _U('miam'))

end)
ESX.RegisterUsableItem('mixapero', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('mixapero', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 6000000)
	TriggerClientEvent('esx_basicneeds:onCawet', source)
	TriggerClientEvent('esx:showNotification', source, _U('miam'))

end)
ESX.RegisterUsableItem('menthe', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('menthe', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 20000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('miam'))

end)
ESX.RegisterUsableItem('raisin', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('raisin', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 20000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('miam'))

end)

ESX.RegisterUsableItem('cigarette', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('cigarette', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', -10000)
	TriggerClientEvent('esx_basicneeds:onSmoke', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_cigarette'))

end)

ESX.RegisterUsableItem('drpepper', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('drpepper', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onSoda', source)
	TriggerClientEvent('esx:showNotification', source, _U('glou'))
	
end)

ESX.RegisterUsableItem('icetea', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('icetea', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onEnergy', source)
	TriggerClientEvent('esx:showNotification', source, _U('glou'))
	
end)

ESX.RegisterUsableItem('bigbite', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('bigbite', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 1000000)
	TriggerClientEvent('esx_basicneeds:onSandw', source)
	TriggerClientEvent('esx:showNotification', source, _U('miam'))

end)

ESX.RegisterUsableItem('magretcanard', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('magretcanard', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 1000000)
	TriggerClientEvent('esx_basicneeds:onSteack', source)
	TriggerClientEvent('esx:showNotification', source, _U('miam'))

end)

ESX.RegisterUsableItem('bourgui', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('bourgui', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 1000000)
	TriggerClientEvent('esx_basicneeds:onSteack', source)
	TriggerClientEvent('esx:showNotification', source, _U('miam'))

end)
