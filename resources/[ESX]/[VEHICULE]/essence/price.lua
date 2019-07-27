-- ... eueu ok
fuel = math.random(65, 80) / 100
-- ...

function round(num, numDecimalPlaces)
  local mult = 5^(numDecimalPlaces or 0)
  return math.floor(num * mult + 0.5) / mult
end

RegisterServerEvent('frfuel:fuelAdded')
AddEventHandler('frfuel:fuelAdded', function(amount)
    local source = source
    local cost = round(fuel * amount)

    TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Le prix de l'essence est de $" .. fuel)

    TriggerEvent('es:getPlayerFromId', source, function(user)
        user.removeMoney(cost)
        TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Vous avez mis " .. round(amount) .. " litres")
        TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Cela vous à couté $" .. round(cost))
    end)
end)