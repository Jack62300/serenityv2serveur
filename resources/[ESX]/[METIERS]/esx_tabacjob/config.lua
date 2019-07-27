Config                            = {}
Config.DrawDistance               = 100.0
Config.MaxInService               = -1
Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.EnableESXIdentity          = false
Config.Locale                     = 'fr'

Config.Cig = {
  'malbora',
  'gitanes'
}

Config.CigResellChances = {
  malbora = 80,
  gitanes = 80,
}

Config.CigResellQuantity= {
  malbora = {min = 5, max = 20},
  gitanes = {min = 5, max = 20},
}

Config.CigPrices = {
  malbora = {min = 100, max = 250},
  gitanes = {min = 100,   max = 250},
}

Config.CigPricesHigh = {
  malbora = {min = 100, max = 220},
  gitanes = {min = 100,   max = 220},
}

Config.Time = {
	malbora = 5 * 10,
	gitanes = 5 * 10,
}

Config.Blip = {
  Pos     = { x = -610.2426, y = -1608.2620, z = 26.75 },
  Sprite  = 79,
  Display = 4,
  Scale   = 1.1,
  Colour  = 2,
}

Config.Zones = {

  TabacActions = {
    Pos   = { x =-616.9092, y = -1622.8040, z = 32.0105 },
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
	Color = {r = 136, g = 243, b = 216},
    Type  = 23,
  },

  Garage = {
    Pos   = { x = 2886.9729003906, y = 4609.4565429688, z = 46.987 },
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
	Color = {r = 136, g = 243, b = 216},
    Type  = 23,
  },

  Craft = {
    Pos   = { x = -605.9284, y = -1631.4281, z = 32.0272 },
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
	Color = {r = 136, g = 243, b = 216},
    Type  = 27,
  },

  Craft2 = {
    Pos   = { x = -580.3485, y = -1589.6842, z = 25.7511 },
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
	Color = {r = 136, g = 243, b = 216},
    Type  = 27,
  },

  VehicleSpawnPoint = {
    Pos   = { x = -622.6296, y = -1605.0961, z = 25.75 },
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
    Type  = -1,
  },

  VehicleDeleter = {
    Pos   = { x = -610.8625, y = -1605.4589, z = 25.7508 },
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
    Color = { r = 204, g = 204, b = 0 },
    Type  = 1,
  },

  SellFarm = {
    Pos   = {x = 68.924179077148, y = 127.1748046875, z = 78.226},
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
	Color = {r = 136, g = 243, b = 216},
    Name  = "Vente des produits",
    Type  = 1
  },
  
}
