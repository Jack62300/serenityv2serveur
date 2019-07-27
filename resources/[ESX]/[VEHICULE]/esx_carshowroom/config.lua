Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerColor                = { r = 102, g = 0, b = 102 }
--language currently available EN and SV
Config.Locale                     = 'en'
--this is how much the price shows from the purchase price
-- exapmle the cardealer boughts it for 2000 if 2 then it says 4000
Config.Price = 1.15 -- this is times how much it should show

Config.Zones = {

  ShopInside = {
    Pos     = { x = 228.26 , y = -986.57, z = -98.96 },
    Size    = { x = 1.5, y = 1.5, z = 1.0 },
    Heading = 177.28,
    Type    = -1,
  },

  Katalog = {
    Pos     = { x = 228.18 , y = -995.48, z = -98.96 },
    Size    = { x = 1.5, y = 1.5, z = 1.0 },
    Heading = 177.28,
    Type    = 36,
  },

  GoDownFrom = {
    Pos   = { x = -50.03, y = -1089.18, z = 26.48 },
    Size  = { x = 1.5, y = 1.5, z = 1.0 },
    Type  = 36,
  },

  GoUpFrom = {
    Pos   = { x = 240.98, y = -1004.85, z = -98.98 },
    Size  = { x = 1.5, y = 1.5, z = 1.0 },
    Type  = 36,
  },

}