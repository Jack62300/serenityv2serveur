Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = false
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.StateStations = {

  State = {

    Blip = {
      Pos     = { x = -429.114, y = 1111.057, z = 327.694 },
      Sprite  = 419,
      Display = 4,
      Scale   = 1.2,
--      Colour  = 29,
    },
	
    AuthorizedWeapons = {
      { name = 'WEAPON_FLASHLIGHT',       price = 800 },
	  { name = 'WEAPON_NIGHTSTICK',       price = 200 },
      { name = 'WEAPON_COMBATPISTOL',     price = 300 },
	  { name = 'WEAPON_FIREEXTINGUISHER', price = 1200 },
	  { name = 'WEAPON_CARBINERIFLE',	  price = 2000 },
	  { name = 'WEAPON_STUNGUN', 		  price = 1200 },
    },

	  AuthorizedVehicles = {
		  { name = 'stretch',  label = 'Sortie VIP' },
		  { name = 'kuruma2',    label = 'Escorte Ville' },
		  { name = 'baller6',   label = 'Escorte Montagne' },
		  { name = 'volatus',      label = 'Transporte Hélico' },
		  { name = 'swift',   label = 'Transporte Hélico 2' },
		  { name = 'whitehawk',   label = 'Transporte Hélico Gouvernemental' },
		  { name = 'dubsta2',       label = 'Sortie Ville/Montagne' },
	  },

    Cloakrooms = {
      { x = -436.17388916016, y = 1066.8254394531, z = 339.74572753906 },
	  Heading    = 357.10,
    },

    Armories = {
      { x = -441.5500793457, y = 1080.7164306641, z = 332.52856445313 },
	  Heading    = 17.57,
    },

    Vehicles = {
      {
        Spawner    = { x = -403.71447753906, y = 1075.6196289063, z = 323.85595703125 },
        SpawnPoint = { x = -409.88946533203, y = 1062.6798095703, z = 323.84124755859 },
        Heading    = 90.0,
      }
    },

    Helicopters = {
      {
        Spawner    = { x = -442.9741210937, y = 1140.3918457031, z = 324.85589599609 },
        SpawnPoint = { x = -453.64053344727, y = 1143.3168945313, z = 327.68872070313 },
        Heading    = 0.0,
      }
    },

    VehicleDeleters = {
      { x = -421.29168701172, y = 1063.5286865234, z = 323.84097290039 },
	  { x = -453.64053344727, y = 1143.3168945313, z = 326.68872070313 },
    },

    BossActions = {
      { x = -444.17593383789, y = -1067.9079589844, z = 339.7453918457 },
	  Heading    = 0.0,
    },

  },
  
}

Config.PublicZones = {
--   EnterBuilding = {
--     Pos       = { x = -429.612, y = 1109.584, z = 326.682 },
--     Size      = { x = 3.0, y = 3.0, z = 0.2 },
--     Color     = { r = 203, g = 8, b = 8 },
--     Marker    = 1,
--     Blip      = false,
--     Name      = "Le Maclerait Libéré",
--     Type      = "teleport",
--     Hint      = "Appuyez sur ~INPUT_PICKUP~ pour entrer dans l'immeuble.",
--     Teleport  = { -435.33, y = 1080.5919, z = 333 },
--   },

--   ExitBuilding = {
--     Pos       = { x = -433.8380, y = 1083.0319, z = 332.5283 },
--     Size      = { x = 3.0, y = 3.0, z = 0.2 },
--     Color     = { r = 64, g = 0, b = 74 },
--     Marker    = 1,
--     Blip      = false,
--     Name      = "Le Maclerait Libéré",
--     Type      = "teleport",
--     Hint      = "Appuyez sur ~INPUT_PICKUP~ pour aller à l'entrée de l'immeuble.",
--     Teleport  = { x = -429.612, y = 1109.584, z = 327.682},
--   },
--    ----
--   EnterBuilding2 = {
--     Pos       = { x = -1389.1787109378, y = -585.46215820313, z = 29.219924926758},
--     Size      = { x = 3.0, y = 3.0, z = 0.2 },
--     Color     = { r = 64, g = 0, b = 74 },
--     Marker    = 1,
--     Blip      = false,
--     Name      = "Le Maclerait Libéré",
--     Type      = "teleport",
--     Hint      = "Appuyez sur ~INPUT_PICKUP~ pour entrer dans l'immeuble.",
--     Teleport  = { x = -1386.8133544922, y =  -589.45202636719, z = 29.319534301758 }
--   },

--   ExitBuilding2 = {
--     Pos       = { x = -1386.8133544922, y = -589.45202636719, z = 29.319534301758 },
--     Size      = { x = 3.0, y = 3.0, z = 0.2 },
--     Color     = { r = 64, g = 0, b = 74 },
--     Marker    = 1,
--     Blip      = false,
--     Name      = "Le Maclerait Libéré",
--     Type      = "teleport",
--     Hint      = "Appuyez sur ~INPUT_PICKUP~ pour aller à l'entrée de l'immeuble.",
--     Teleport  = { x =-1389.1787109378, y = -585.46215820313, z = 29.219924926758},
--   }, 
--  ---------
--   EnterBuilding3 = {
--     Pos       = { x = 14.081891059875, y = -1105.6704101563, z = 28.797004699707},
--     Size      = { x = 1.5, y = 1.5, z = 0.2 },
--     Color     = { r = 64, g = 0, b = 74 },
--     Marker    = 1,
--     Blip      = false,
--     Name      = "Le Maclerait Libéré",
--     Type      = "teleport",
--     Hint      = "Appuyez sur ~INPUT_PICKUP~ pour entrer dans l'immeuble.",
--     Teleport  = { x = 12.944341659546, y =  -1109.8620605469, z = 28.797010421753 }
--   },

--   ExitBuilding3 = {
--     Pos       = { x = 13.325618743896, y = -1107.7855224609, z = 28.797010421753 },
--     Size      = { x = 1.5, y = 1.5, z = 0.2 },
--     Color     = { r = 64, g = 0, b = 74 },
--     Marker    = 1,
--     Blip      = false,
--     Name      = "Le Maclerait Libéré",
--     Type      = "teleport",
--     Hint      = "Appuyez sur ~INPUT_PICKUP~ pour aller à l'entrée de l'immeuble.",
--     Teleport  = { x =15.142413139343, y = -1105.2983398438, z = 28.797008514404},
--   },  
  
}
