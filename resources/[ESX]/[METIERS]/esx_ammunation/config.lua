Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 21
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 0, g = 255, b = 255 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale = 'fr'

Config.AmmuStations = {

  Ammu = {

    Blip = {
      Pos     = { x = 811.5668, y = -2149.4265, z = 29.6313 },
      Sprite  = 150,
      Display = 4,
      Scale   = 1.2,
      Colour  = 75,
    },

    AuthorizedWeapons = {

      { name = 'WEAPON_KNIFE',                     price = 0 },
      { name = 'WEAPON_PISTOL',                    price = 0 },
      { name = 'WEAPON_PISTOL50',                  price = 0 },
      { name = 'WEAPON_APPISTOL',                  price = 0 },
      { name = 'WEAPON_BAT',                       price = 0 },
      { name = 'WEAPON_COMPACTRIFLE',              price = 0 },
      { name = 'WEAPON_ASSAULTRIFLE',              price = 0 },
      { name = 'WEAPON_FLASHLIGHT',                price = 0 },
      { name = 'WEAPON_PUMPSHOTGUN',               price = 0 },
      { name = 'WEAPON_FLAREGUN',                  price = 0 },
      { name = 'GADGET_PARACHUTE',                 price = 0 },
      { name = 'WEAPON_COMBATPISTOL',              price = 0 },
      { name = 'WEAPON_MICROSMG',                  price = 0 },
      { name = 'WEAPON_SNIPERRIFLE',               price = 0 },
      { name = 'WEAPON_SMG',                       price = 0 },
      { name = 'WEAPON_ASSAULTSMG',                price = 0 },
      { name = 'WEAPON_PUMPSHOTGUN',               price = 0 },
      { name = 'WEAPON_SAWNOFFSHOTGUN',            price = 0 },
      { name = 'WEAPON_CARBINERIFLE',              price = 0 },
      { name = 'WEAPON_HEAVYSNIPER',               price = 0 },
      { name = 'WEAPON_BULLPUPSHOTGUN',            price = 0 },
      { name = 'WEAPON_SNIPERRIFLE',               price = 0 },
      { name = 'WEAPON_FIREEXTINGUISHER',          price = 0 },
      { name = 'WEAPON_FLARE',                     price = 0 },
      { name = 'WEAPON_GUSENBERG',                     price = 0 },
      { name = 'WEAPON_MACHETE',                     price = 0 },
      { name = 'WEAPON_BZGAS',                     price = 0 },
      { name = 'WEAPON_SWITCHBLADE',                     price = 0 },
      { name = 'WEAPON_KNUCKLE',                     price = 0 },
      { name = 'WEAPON_STUNGUN',                     price = 0 },
      { name = 'WEAPON_REVOLVER',                     price = 0 },

    },

	  AuthorizedVehicles = {
		  { name = 'MULE3',  label = 'Camion' },
		  { name = 'h6',    label = 'Hummer' },
		  { name = 'guardian',      label = 'Guardian' },
	  },

    Armories = {
      { x = 810.68, y = -2159.53, z = 29.61 },
    },

    Cloakrooms = {
      { x = 826.1278, y = -2149.1542, z = 29.6190},
    },
  
  
    Vehicles = {
      {
        Spawner    = { x = 812.5718, y = -2115.4370, z = 29.3632 },
        SpawnPoint = { x = 812.4766, y = -2119.1074, z = 29.3382 },
        Heading    = 150.36,
      }
    },

    Helicopters = {
      {
        Spawner    = { x = 856.4698, y = -2032.3556, z = 47.6175 },
        SpawnPoint = { x = 856.4698, y = -2032.3556, z = 47.6175 },
        Heading    = 0.0,
      }
    },

    VehicleDeleters = {
      { x = 820.5170, y = -2119.7058, z = 29.3271 },
      
    },

    BossActions = {
      { x = 820.85, y = -2159.53, z = 29.61 },
    },

  },

}
