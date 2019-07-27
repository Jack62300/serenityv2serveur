Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerColor                = { r = 102, g = 0, b = 102 }
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.ReviveReward               = 0  -- revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = true -- enable anti-combat logging?
Config.MaxInService               = 10
local second = 1000
local minute = 60 * second

-- How much time before auto respawn at hospital
Config.RespawnDelayAfterRPDeath   = 10 * minute

-- How much time before a menu opens to ask the player if he wants to respawn at hospital now
-- The player is not obliged to select YES, but he will be auto respawn
-- at the end of RespawnDelayAfterRPDeath just above.
Config.RespawnToHospitalMenuTimer   = true
Config.MenuRespawnToHospitalDelay   = 10 * minute

Config.EnablePlayerManagement       = true
Config.EnableSocietyOwnedVehicles   = false

Config.RemoveWeaponsAfterRPDeath    = true
Config.RemoveCashAfterRPDeath       = true
Config.RemoveItemsAfterRPDeath      = true

-- Will display a timer that shows RespawnDelayAfterRPDeath time remaining
Config.ShowDeathTimer               = true

-- Will allow to respawn at any time, don't use RespawnToHospitalMenuTimer at the same time !
Config.EarlyRespawn                 = false
-- The player can have a fine (on bank account)
Config.RespawnFine                  = true
Config.RespawnFineAmount            = 300
Config.NPCJobEarnings               = {min = 15, max = 30}

Config.Locale                       = 'fr'

Config.Blip = {
  Pos     = { x = -492.21, y = -336.77, z = 34.37 },
  Sprite  = 61,
  Display = 4,
  Scale   = 1.2,
  Colour  = 2,
}

Config.HelicopterSpawner = {
  SpawnPoint  = { x = -491.6224, y = -333.9864, z = 94.6681 },
  Heading     = 0.0
}

Config.Zones = {


  HospitalInteriorEntering1 = {
    Pos  = { x = -497.6654, y = -336.0709, z = 33.5017 },
    Size = {x = 1.5, y = 1.5, z = 1.0},
    Type = 1
  },

  HospitalInteriorInside1 = {
    Pos  = { x = -457.8755, y = -365.0806, z = -186.4800 },
    Size = {x = 1.5, y = 1.5, z = 1.0},
    Type = -1
  },

  HospitalInteriorOutside1 = {
    Pos  = { x = -497.5831, y = -339.2927, z = 34.5017 },
    Size = {x = 1.5, y = 1.5, z = 1.0},
    Type = -1
  },

  HospitalInteriorExit1 = {
    Pos  = { x = -456.0635, y = -367.7442, z = -187.4613 },
    Size = {x = 1.5, y = 1.5, z = 1.0},
    Type = 1
  },






  AmbulanceActions = {
    Pos  = { x = -473.9231, y = -338.9656, z = -187.4871 },
    Size = {x = 1.5, y = 1.5, z = 1.0},
    Type  = 27
  },

  VehicleSpawner = {
    Pos  = { x = -498.5905, y = -345.4745, z = 34.5017 },
    Size = {x = 1.5, y = 1.5, z = 1.0},
    Type  = 36
  },

  VehicleSpawnPoint = {
    Pos  = { x = -529.5972, y = -327.3752, z = 35.0331 },
    Size = {x = 1.5, y = 1.5, z = 1.0},
    Type  = -1
  },

  VehicleDeleter = {
    Pos  = { x = -529.5972, y = -327.3752, z = 34.0331 },
    Size = { x = 3.0, y = 3.0, z = 0.4 },
    Type  = 27
  },

  Pharmacy = {
    Pos  = { x = -470.9494, y = -341.4039, z = -187.4672 },
    Size = { x = 1.5, y = 1.5, z = 0.4 },
    Type = 1
  },

}