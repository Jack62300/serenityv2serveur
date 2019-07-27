Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerColor                = { r = 120, g = 120, b = 240 }
Config.EnablePlayerManagement     = true -- enables the actual car dealer job. You'll need esx_addonaccount, esx_billing and esx_society
Config.EnablePvCommand            = false
Config.EnableOwnedVehicles        = true
Config.EnableSocietyOwnedVehicles = false -- use with EnablePlayerManagement disabled, or else it wont have any effects
Config.ResellPercentage           = 20
Config.Locale                     = 'fr'

-- looks like this: 'LLL NNN'
-- The maximum plate length is 8 chars (including spaces & symbols), don't go past it!
Config.PlateLetters  = 3
Config.PlateNumbers  = 3
Config.PlateUseSpace = true

Config.Zones = {

  ShopEntering = {
    Pos   = { x = -32.0345, y = -1114.1800, z = 25.4223 },
    Size  = { x = 1.5, y = 1.5, z = 1.0 },
    Type  = 1,
  },

  ShopInside = {
    Pos     = { x = -41.0947, y = -1099.4838, z = 25.4223 },
    Size    = { x = 1.5, y = 1.5, z = 1.0 },
    Heading = 130.0,
    Type    = -1,
  },

  ShopOutside = {
    Pos     = { x = -31.3235, y = -1090.6768, z = 25.4225 },
    Size    = { x = 1.5, y = 1.5, z = 1.0 },
    Heading = 330.0,
    Type    = -1,
  },

  BossActions = {
    Pos   = { x = -30.4828, y = -1106.7250, z = 25.4223 },
    Size  = { x = 1.5, y = 1.5, z = 1.0 },
    Type  = -1,
  },

  GiveBackVehicle = {
    Pos   = { x = -1134.9204, y = -1694.7012, z = 0.4493 },
    Size  = { x = 3.0, y = 3.0, z = 1.0 },
    Type  = (Config.EnablePlayerManagement and 1 or -1),
  },

  ResellVehicle = {
    Pos   = { x = -44.630, y = -1080.738, z = 25.683 },
    Size  = { x = 3.0, y = 3.0, z = 1.0 },
    Type  = 1,
  },

}
