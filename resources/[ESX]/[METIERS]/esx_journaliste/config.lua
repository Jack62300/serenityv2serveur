Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerColor                = { r = 102, g = 0, b = 102 }
Config.EnablePlayerManagement     = true
Config.EnableVaultManagement      = true
Config.EnableSocietyOwnedVehicles = false
Config.EnableHelicopters          = true
Config.EnableMoneyWash            = true
Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.AuthorizedVehicles = {
    { name = 'rumpo3', label = 'Van Facebook', location = 'garage1' },
	{ name = 'Kamacho', label = '4x4', location = 'garage1' },
	{ name = 'Baller', label = 'SUV', location = 'garage1' },
	{ name = 'Volatus', label = 'Hélicoptère', location = 'roof1' },
} 

Config.Blips = {

	Blip = {	
		Pos              = { x = -1083.098, y = -245.834, z = 37.0},
		Sprite           = 184,
		Display          = 3,
		Scale            = 1.2,
		Colour           = 0,
	}
}
	
Config.SpawnPoints = {
	['garage1']      	 = { x = -1099.2, y = -257.6, z = 37.0, o = 160.43},
	['roof1']        	 = { x = -1046.7, y = -233.1, z = 53.0, o = 116.87},
}


Config.Zones = {
    BossActions = {
        Pos              = { x = -1067.74, y = -239.78, z = 43.10 },
        Size             = { x = 1.5, y = 1.5, z = 1.0 },
        Color            = { r = 230, g = 30, b = 0 },
        Type             = 27,
    },
	
	Cloakrooms = {
		Pos              = { x = -1060.151, y = -238.836, z = 38.763},
		Size             = { x = 1.5, y = 1.5, z = 1.0 },
        Color            = { r = 255, g = 255, b = 0 },		
		Type             = 27,
	},

    Vehicles = {
        Pos              = { x = -1085.6, y = -259.9, z = 36.86 },
		SpawnPoint       = { x = -1099.2, y = -257.6, z = 37.0, o = 160.43},
        Size             = { x = 1.8, y = 1.8, z = 1.0 },
        Color            = { r = 0, g = 255, b = 128 },
        Type             = 27,
        Heading          = 160.43,
    },	

	VehicleDeleters = {
		Pos              = { x = -1099.2, y = -257.600, z = 36.792},
		Size             = { x = 4.0, y = 4.0, z = 0.5 },
        Color            = { r = 255, g = 255, b = 0 },		
		Type             = 1
	},	

	VehicleDeletersHelico = {
		Pos             = { x = -1048.9, y = -234.160, z = 52.74},
		Size            = { x = 5.0, y = 6.0, z = 0.5 },
		Color           = { r = 0, g = 0, b = 0 },		
		Type            = 1
	},	

    Vaults = {
        Pos              = { x = -1051.591, y = -232.954, z = 43.050 },
        Size             = { x = 1.3, y = 1.3, z = 1.0 },
        Color            = { r = 0, g = 190, b = 255 },
        Type             = 27,
    },	
	
	-- Teleporters
	FromInToBossDesk = {
	 	Pos   			 = { x = -1056.69, y = -237.73, z = 43.02 }, -- couloir devant bureau boss
	 	Size  			 = { x = 1.5, y = 1.5, z = 0.2 },
	 	Color 			 = { r = 102, g = 102, b = 204 },
	 	Type  			 = 1
	},
	FromBossDeskToIn = {
	 	Pos   			 = { x = -1057.60, y = -236.11, z = 43.02 }, -- bureau boss
	 	Size  			 = { x = 1.5, y = 1.5, z = 0.2},
	 	Color 			 = { r = 102, g = 102, b = 204},
	 	Type  			 = 1
	},
	
	FromInToReunion = {
	 	Pos   			 = { x = -1048.15, y = -238.19, z = 43.02 }, -- couloir devant reunion
	 	Size  			 = { x = 1.5, y = 1.5, z = 0.2 },
	 	Color 			 = { r = 102, g = 102, b = 204 },
	 	Type  			 = 1
	},
	FromReunionToIn = {
	 	Pos   			 = { x = -1047.04, y = -237.60, z = 43.02 }, -- reunion
	 	Size  			 = { x = 1.5, y = 1.5, z = 0.2 },
	 	Color 			 = { r = 102, g = 102, b = 204 },
	 	Type  			 = 1
	},
	
	FromFloorToRoof = {
	 	Pos   			 = { x = -1077.93, y = -254.81, z = 36.76 }, -- rdc droite
	 	Size  			 = { x = 1.5, y = 1.5, z = 0.2 },
	 	Color 			 = { r = 202, g = 102, b = 204 },
	 	Type  			 = 1
	},
	FromRoofToFloor = {
	 	Pos   			 = { x = -1072.86, y = -246.71, z = 53.01 }, -- toit gauche
	 	Size  			 = { x = 1.5, y = 1.5, z = 0.2 },
	 	Color 			 = { r = 102, g = 102, b = 204 },
	 	Type  			 = 1
	},
	
	FromFirstToRoof = {
	 	Pos   			 = { x = -1077.86, y = -254.78, z = 43.02 }, -- premier droite
	 	Size  			 = { x = 1.5, y = 1.5, z = 0.2},
	 	Color 			 = { r = 202, g = 102, b = 204},
	 	Type  			 = 1
	},
	FromRoofToFirst = {
	 	Pos   			 = { x = -1073.53, y = -245.16, z = 53.01 }, -- toit droite
	 	Size  			 = { x = 1.5, y = 1.5, z = 0.2},
	 	Color 			 = { r = 102, g = 102, b = 204},
	 	Type  			 = 1
	},
	
	FromFloorToFirst = {
	 	Pos   			 = { x = -1075.34, y = -253.47, z = 36.76 }, -- rdc gauche
	 	Size  			 = { x = 1.5, y = 1.5, z = 0.2},
	 	Color 			 = { r = 102, g = 102, b = 204},
	 	Type  			 = 1
	},
	FromFirstToFloor = {
	 	Pos   			 = { x = -1075.38, y = -253.39, z = 43.02 }, -- premier gauche
	 	Size  			 = { x = 1.5, y = 1.5, z = 0.2},
	 	Color 			 = { r = 102, g = 102, b = 204},
	 	Type  			 = 1
	},
	
	FromRoofToPhoto = {
	 	Pos   			 = { x = -1058.01, y = -240.93, z = 53.00 }, -- toit devant salle LAN
	 	Size  			 = { x = 1.5, y = 1.5, z = 0.2},
	 	Color 			 = { r = 102, g = 102, b = 204},
	 	Type  			 = 1
	},
	FromPhotoToRoof = {
	 	Pos   			 = { x = -1056.26, y = -237.35, z = 52.95 }, -- salle LAN
	 	Size  			 = { x = 1.5, y = 1.5, z = 0.2},
	 	Color 			 = { r = 202, g = 102, b = 204},
	 	Type  			 = 1
	},

}

Config.Uniforms = {
	journaliste_outfit = {
		male = {
			['tshirt_1'] = 47,  ['tshirt_2'] = 3,
			['torso_1'] = 7,   ['torso_2'] = 15,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 4,
			['pants_1'] = 1,   ['pants_2'] = 0,
			['shoes_1'] = 7,   ['shoes_2'] = 11,
			['chain_1'] = 0,  ['chain_2'] = 0
		},
		female = {
			['tshirt_1'] = 14,   ['tshirt_2'] = 0,
			['torso_1'] = 27,    ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 0,   ['pants_2'] = 8,
			['shoes_1'] = 3,    ['shoes_2'] = 2,
			['chain_1'] = 2,    ['chain_2'] = 1
		}
	},
  journaliste_outfit_1 = {
		male = {
			['tshirt_1'] = 115,  ['tshirt_2'] = 0,
			['torso_1'] = 142,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 4,
			['pants_1'] = 20,   ['pants_2'] = 0,
			['shoes_1'] = 3,   ['shoes_2'] = 0,
			['chain_1'] = 0,  ['chain_2'] = 0
		},
		female = {
			['glasses_1'] = 5,	['glasses_2'] = 0,
			['tshirt_1'] = 24,   ['tshirt_2'] = 0,
			['torso_1'] = 28,   ['torso_2'] = 4,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 6,   ['pants_2'] = 0,
			['shoes_1'] = 13,   ['shoes_2'] = 0,
			['chain_1'] = 0,   ['chain_2'] = 0
		}	
	},
  journaliste_outfit_2 = {
		male = {
			['tshirt_1'] = 69,  ['tshirt_2'] = 0,
			['torso_1'] = 77,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 4,
			['pants_1'] = 10,   ['pants_2'] = 1,
			['shoes_1'] = 15,   ['shoes_2'] = 1,
			['chain_1'] = 12,  ['chain_2'] = 2
		},
		female = {
			['glasses_1'] = 5,	['glasses_2'] = 0,
			['tshirt_1'] = 40,   ['tshirt_2'] = 7,
			['torso_1'] = 64,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['pants_1'] = 6,   ['pants_2'] = 0,
			['shoes_1'] = 13,   ['shoes_2'] = 0,
			['chain_1'] = 0,   ['chain_2'] = 0
		}	
	},
  journaliste_outfit_3 = {
		male = {
			['tshirt_1'] = 31,  ['tshirt_2'] = 0,
			['torso_1'] = 32,   ['torso_2'] = 5,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 4,
			['pants_1'] = 20,   ['pants_2'] = 0,
			['shoes_1'] = 10,   ['shoes_2'] = 0,
			['chain_1'] = 28,  ['chain_2'] = 2
		},
		female = {
			['glasses_1'] = 5,	['glasses_2'] = 0,
			['tshirt_1'] = 20,   ['tshirt_2'] = 2,
			['torso_1'] = 24,   ['torso_2'] = 3,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 5,
			['pants_1'] = 6,   ['pants_2'] = 0,
			['shoes_1'] = 13,   ['shoes_2'] = 0,
			['chain_1'] = 0,   ['chain_2'] = 0
		}	
	}
}