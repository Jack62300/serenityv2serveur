Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = false -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.GangStations = {

  Gang = {

    Blip = {
      Pos     = { x = 965.0622, y = -133.2966, z = 74.3530 },
      Sprite  = 226,
      Display = 4,
      Scale   = 1.2,
      Colour  = 40,
    },

    AuthorizedWeapons = {
      --{ name = 'WEAPON_COMBATPISTOL',     price = 4000 },
      --{ name = 'WEAPON_ASSAULTSMG',       price = 15000 },
      --{ name = 'WEAPON_ASSAULTRIFLE',     price = 25000 },
      --{ name = 'WEAPON_PUMPSHOTGUN',      price = 9000 },
      --{ name = 'WEAPON_STUNGUN',          price = 250 },
      --{ name = 'WEAPON_FLASHLIGHT',       price = 50 },
      --{ name = 'WEAPON_FIREEXTINGUISHER', price = 50 },
      --{ name = 'WEAPON_FLAREGUN',         price = 3000 },
      --{ name = 'GADGET_PARACHUTE',        price = 2000 },
      --{ name = 'WEAPON_SNIPERRIFLE',      price = 50000 },
      --{ name = 'WEAPON_FIREWORK',         price = 5000 },
      --{ name = 'WEAPON_BZGAS',            price = 8000 },
      --{ name = 'WEAPON_SMOKEGRENADE',     price = 8000 },
      --{ name = 'WEAPON_APPISTOL',         price = 12000 },
      --{ name = 'WEAPON_CARBINERIFLE',     price = 25000 },
      --{ name = 'WEAPON_HEAVYSNIPER',      price = 100000 },
      --{ name = 'WEAPON_FLARE',            price = 8000 },
      --{ name = 'WEAPON_SWITCHBLADE',      price = 500 },
	  --{ name = 'WEAPON_REVOLVER',         price = 6000 },
	  --{ name = 'WEAPON_POOLCUE',          price = 100 },
	  --{ name = 'WEAPON_GUSENBERG',        price = 17500 },
	  
    },

	AuthorizedVehicles = {
		  { name = 'sandking',   label = '4X4' },
		  { name = 'mule3',      label = 'Camion de Transport' },
		  { name = 'guardian',   label = 'Grand 4x4' },
		  { name = 'burrito',   label = 'Fourgonnette' },
		  { name = 'mesa',       label = 'Tout-Terrain' },
	  },

    --[[Cloakrooms = {
      { x = 972.4580, y = -97.9285, z = 73.8701 },
    },]]--

    Armories = {
      { x = -799.6370, y = 177.1020, z = 72.8347 },
    },

    Vehicles = {
      {
        Spawner    = { x = -809.4271, y = 190.0721, z = 72.4787 },
        SpawnPoint = { x = -822.0661, y = 182.7040, z = 71.8980 },
        Heading    = 0.0,
      }
    },

    --[[Helicopters = {
      {
        Spawner    = { x = 1995.0560, y = 3036.3647, z = 46.0267 },
        SpawnPoint = { x = 1993.7333, y = 3034.6401, z = 47.0305 },
        Heading    = 0.0,]]--
      }
    },

    VehicleDeleters = {
      { x = -812.1332, y = 186.9567, z = 72.4725 },
    },

    BossActions = {
      { x = -811.3770, y = 181.1695, z = 76.7407 }
    },

  },

}
