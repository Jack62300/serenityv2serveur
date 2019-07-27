--[[
----------------------------------------------------------------------------
____________________________________________________________________________
                        
                        AUTHOR : ReedY

            Régule le trafic pnj
            FixTrafic - double cars
        

____________________________________________________________________________
                        
---------------------------------------------------------------------------
]]--
 
Citizen.CreateThread(function()
    while true do Wait(1)
        ped = GetPlayerPed(-1)
        pedPos = GetEntityCoords(ped)
        if GetInteriorFromEntity(ped) ~= 0 or pedPos.z < -50.0 then 
            SetVehicleDensityMultiplierThisFrame(0.0)
            SetRandomVehicleDensityMultiplierThisFrame(0.0)
        end
    end
end)