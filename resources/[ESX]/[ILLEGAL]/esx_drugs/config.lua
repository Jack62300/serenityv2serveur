Config              = {}
Config.MarkerType   = 27
Config.DrawDistance = 0.7
Config.ZoneSize     = {x = 2.5, y = 2.5, z = 2.0}
Config.MarkerColor  = {r = 100, g = 204, b = 100}
Config.MarkerColors  = {
	[0] = {r = 100, g = 204, b = 100},   -- vert
	[1] = {r = 255, g = 255, b = 102},   -- jaune
	[2] = {r = 255, g = 100, b = 0  },   -- orange
	[3] = {r = 255, g = 26 , b = 26 },   -- rouge
}

Config.RequiredCopsCoke  = 2
Config.RequiredCopsMeth  = 2
Config.RequiredCopsWeed  = 2
Config.RequiredCopsOpium = 2

Config.TimeToFarm    = 1 * 2000
Config.TimeToProcess = 1 * 2000
Config.TimeToSell    = 1 * 2000

Config.Locale = 'fr'

Config.Zones = {
	CokeField =       {x=1926.1545,  y=4904.7524,   z=47.57,   name = _U('coke_field'),       sprite = 501, color = 40, drugType = "Coke"},
	CokeProcessing =  {x=1099.5758,  y=-3194.2038,  z=-38.9934,  name = _U('coke_processing'),  sprite = 478, color = 40, drugType = "Coke"},
	CokeDealer =      {x=84.8400, y=-1958.8841,    z=21.1216,    name = _U('coke_dealer'),      sprite = 500, color = 75, drugType = "Coke"},
	MethField =       {x=1152.7276,  y=-1579.6750,   z=35.1901,    name = _U('meth_field'),       sprite = 499, color = 26, drugType = "Meth"},
	MethProcessing =  {x=1004.0623,  y=-3200.7116,  z=-38.9931,  name = _U('meth_processing'),  sprite = 499, color = 26, drugType = "Meth"},
	MethDealer =      {x=-64.1333,   y=-1223.7685,   z=28.7678,   name = _U('meth_dealer'),      sprite = 500, color = 75, drugType = "Meth"},
	WeedField =       {x=1056.5758,   y=-3199.3437,  z=-39.0935,  name = _U('weed_field'),       sprite = 496, color = 52, drugType = "Weed"},
	WeedProcessing =  {x=1037.4793,  y=-3206.5,  z=-38.1700,  name = _U('weed_processing'),  sprite = 496, color = 52, drugType = "Weed"},
	WeedDealer =      {x=-1173.0455,    y=-1572.8190,   z=4.6636,   name = _U('weed_dealer'),      sprite = 500, color = 75, drugType = "Weed"},
	OpiumField =      {x=-1170.8637,  y=4932.2011,  z=222.9944,   name = _U('opium_field'),      sprite = 51,  color = 60, drugType = "Opium"},
	OpiumProcessing = {x=471.0680,  y=3552.9536,   z=33.2385,   name = _U('opium_processing'), sprite = 51,  color = 60, drugType = "Opium"},
	OpiumDealer =     {x=-1100.5567, y=2722.1271,   z=18.8004,   name = _U('opium_dealer'),     sprite = 500, color = 75, drugType = "Opium"}
	}




