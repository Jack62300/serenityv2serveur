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

Config.BikerStations = {

  Biker = {

    Blip = {
--      Pos     = { x = 425.130, y = -979.558, z = 30.711 },
      Sprite  = 60,
      Display = 4,
      Scale   = 1.2,
      Colour  = 29,
    },

    AuthorizedWeapons = {
      { name = 'WEAPON_COMBATPISTOL',     price = 4000 },
      { name = 'WEAPON_REVOLVER',         price = 6000 },
      { name = 'WEAPON_POOLCUE',          price = 100 },
      { name = 'WEAPON_ASSAULTSMG',       price = 15000 },
      { name = 'WEAPON_ASSAULTRIFLE',     price = 25000 },
      { name = 'WEAPON_PUMPSHOTGUN',      price = 9000 },
      { name = 'WEAPON_STUNGUN',          price = 250 },
      { name = 'WEAPON_FLASHLIGHT',       price = 50 },
      { name = 'WEAPON_FIREEXTINGUISHER', price = 50 },
      { name = 'WEAPON_FLAREGUN',         price = 3000 },
      { name = 'GADGET_PARACHUTE',        price = 2000 },
      { name = 'WEAPON_SNIPERRIFLE',      price = 50000 },
      { name = 'WEAPON_FIREWORK',         price = 5000 },
      { name = 'WEAPON_BZGAS',            price = 8000 },
      { name = 'WEAPON_GRENADE',          price = 18000 },
      { name = 'WEAPON_STICKYBOMB',       price = 120000 },
      { name = 'WEAPON_SMOKEGRENADE',     price = 8000 },
      { name = 'WEAPON_APPISTOL',         price = 12000 },
      { name = 'WEAPON_CARBINERIFLE',     price = 25000 },
      { name = 'WEAPON_HEAVYSNIPER',      price = 100000 },
      { name = 'WEAPON_FLARE',            price = 8000 },
      { name = 'WEAPON_SWITCHBLADE',      price = 500 },
    },

	  AuthorizedVehicles = {
		  { name = 'g65amg',  label = '4x4 Mercedes' },
		  { name = 's500w222',    label = 'Mercedes S500' },
		  { name = 'mule3',   label = 'Camion' },
		  { name = 'guardian',      label = '4x4' },
	  },

    Cloakrooms = {
      --{ x = 986.94677734375, y = -92.968696594238, z = 73.84593963623 },
    },

    Armories = {
      { x = -813.87854003906, y = 180.38806152344, z = 75.745391845703 },
    },

    Vehicles = {
      {
        Spawner    = { x = -819.5022, y = 190.9310, z = 71.8512 },
        SpawnPoint = { x = -822.2373, y = 182.4256, z = 71.8650},
        Heading    = 331.298,
      }
    },

    Helicopters = {
      {
        Spawner    = { x = -825.90570068359, y = 178.92065429688, z = 20.336616516113 },
        SpawnPoint = { x = -831.41021728516, y = 167.9341583252, z = 20.588165283203 },
        Heading    = 133.9498748,
      }
    },

    VehicleDeleters = {
      { x = -810.2678, y = 187.9057, z = 71.4787 },
    },

    BossActions = {
      { x = -811.51861572266, y = 175.08679199219, z = 75.74536895752 }
    },

  },

}
