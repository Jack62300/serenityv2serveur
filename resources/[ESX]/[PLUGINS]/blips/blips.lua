local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=},

     {title="Entrainement Police", colour=75, id=119, x = -2131.3164, y = 3274.2915, z = 32.8103},
     {title="Pole Emploi", colour=83, id=267, x = -267.9201, y = -958.5422, z = 31.2231},
	 {title="Magasin", colour=2, id=52, x = 373.875,   y = 325.896,  z = 102.566},
	 {title="Magasin", colour=2, id=52, x = 2557.458,  y = 382.282,  z = 107.622},
	 {title="Magasin", colour=2, id=52, x = -3038.939, y = 585.954,  z = 6.908},
	 {title="Magasin", colour=2, id=52, x = -3241.927, y = 1001.462, z = 11.830},
	 {title="Magasin", colour=2, id=52, x = 547.431,   y = 2671.710, z = 41.156},
	 {title="Magasin", colour=2, id=52, x = 1961.464,  y = 3740.672, z = 31.343},
	 {title="Magasin", colour=2, id=52, x = 2678.916,  y = 3280.671, z = 54.241},
	 {title="Magasin", colour=2, id=52, x = 1729.216,  y = 6414.131, z = 34.037},
	 {title="Magasin", colour=2, id=52, x = 1135.808,  y = -982.281,  z = 45.415},
	 {title="Magasin", colour=2, id=52, x = -1222.915, y = -906.983,  z = 11.326},
	 {title="Magasin", colour=2, id=52, x = -1487.553, y = -379.107,  z = 39.163},
	 {title="Magasin", colour=2, id=52, x = -2968.243, y = 390.910,   z = 14.043},
	 {title="Magasin", colour=2, id=52, x = 1166.024,  y = 2708.930,  z = 37.157},
	 {title="Magasin", colour=2, id=52, x = 25.723,   y = -1346.966, z = 28.497},
	 {title="Magasin", colour=2, id=52, x = -1037.618,  y = -2737.399,   z = 19.169},
	 {title="Magasin", colour=2, id=52, x = -48.519,   y = -1757.514, z = 28.421},
	 {title="Magasin", colour=2, id=52, x = 1163.373,  y = -323.801,  z = 68.205},
	 {title="Magasin", colour=2, id=52, x = -707.501,  y = -914.260,  z = 18.215},
	 {title="Magasin", colour=2, id=52, x = -1820.523, y = 792.518,   z = 137.118},
	 {title="Magasin", colour=2, id=52, x = 1698.388,  y = 4924.404,  z = 41.063},
	 {title="Magasin", colour=2, id=52, x = 220.0945,  y = -887.3679, z = 29.6919},
	 {title="SkatePark", colour=6, id=376, x = -1682.5490,  y = -765.1245, z = 10.1899},
	 {title="Bar Hells Angels Mc", colour=75, id=226, x = -1134.8646,  y = -1568.8532, z = 4.4078},
     --{title="Example 2", colour=30, id=108, x = 260.130, y = 204.308, z = 109.287}
  }
      
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.0)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)