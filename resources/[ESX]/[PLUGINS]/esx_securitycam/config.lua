Config                            = {}
Config.DrawDistance               = 100.0

-- Hide HUD
Config.HideRadar       		  = true

-- Animation for the hacking in seconds. 60 = 1 minute / 60 seconds!
Config.AnimTime = 60

-- Language (sv/en)
Config.Locale 			  = 'en'

-- Only enable this if you have pNotify (https://github.com/Nick78111/pNotify)
Config.pNotify = true

-- Only enable if you have mhacking (https://github.com/GHMatti/FiveM-Scripts/tree/master/mhacking)
Config.Hacking = false

-- Connect to the cameras
-- Place: In the polices armory room
Config.Zones = {
	Cameras = {
		Pos   = {x = 454.1393737793, y = -979.16284179688, z = 29.689588546753},
		Size  = {x = 1.7, y = 1.7, z = 0.5},
		Color = {r = 26, g = 55, b = 186},
		Type = 1,
	}
}

Config.Zones2 = {
	Cameras2 = {
		Pos   = {x = -473.38, y = -351.35, z = -187.69},
		Size  = {x = 1.7, y = 1.7, z = 0.5},
		Color = {r = 26, g = 55, b = 186},
		Type = 1,
	}
}


-- Keep these the same
-- Place: Behind the polices desk in the policestation
-- Screenshot: https://i.imgur.com/f5WNrRj.jpg
Config.HackingPolice = {
	HackingPolice = {
		Pos   = {x = 440.17, y = -978.74, z = 29.69},
		Size  = {x = 1.7, y = 1.7, z = 0.5},
		Color = {r = 26, g = 55, b = 186},
		Type = 1,
	}
}

Config.UnHackPolice = {
	UnHackPolice = {
		Pos   = {x = 440.17, y = -978.74, z = 29.69},
		Size  = {x = 1.7, y = 1.7, z = 0.5},
		Color = {r = 26, g = 55, b = 186},
		Type = 1,
	}
}
--

-- Keep these the same
-- Place: Down at the bank vault
-- Screenshot: https://i.imgur.com/nvcFUhu.jpg
Config.HackingBank = {
	HackingBank = {
		Pos   = {x = 264.87, y = 219.93, z = 100.68},
		Size  = {x = 1.7, y = 1.7, z = 0.5},
		Color = {r = 26, g = 55, b = 186},
		Type = 1,
	}
}

Config.UnHackBank = {
	UnHackBank = {
		Pos   = {x = 264.87, y = 219.93, z = 100.68},
		Size  = {x = 1.7, y = 1.7, z = 0.5},
		Color = {r = 26, g = 55, b = 186},
		Type = 1,
	}
}
--

-- Cameras. You could add more cameras for other banks, apartments, houses, buildings etc. (Remember the "," after each row, but not on the last row)
Config.Locations = {
    {
	bankCamLabel = {label = ('Pacific Standard Bank')},
        bankCameras = {
			{label = ('bcam'), x = 232.86, y = 221.46, z = 107.83, r = {x = -25.0, y = 0.0, z = -140.91}, canRotate = true},
            {label = ('bcam2'), x = 257.45, y = 210.07, z = 109.08, r = {x = -25.0, y = 0.0, z = 28.05}, canRotate = true},
            {label = ('bcam3'), x = 261.50, y = 218.08, z = 107.95, r = {x = -25.0, y = 0.0, z = -149.49}, canRotate = true},
			{label = ('bcam4'), x = 241.64, y = 233.83, z = 111.48, r = {x = -35.0, y = 0.0, z = 120.46}, canRotate = true},
			{label = ('bcam5'), x = 269.66, y = 223.67, z = 113.23, r = {x = -30.0, y = 0.0, z = 111.29}, canRotate = true},
            {label = ('bcam6'), x = 261.98, y = 217.92, z = 113.25, r = {x = -40.0, y = 0.0, z = -159.49}, canRotate = true},
            {label = ('bcam7'), x = 258.44, y = 204.97, z = 113.25, r = {x = -30.0, y = 0.0, z = 10.50}, canRotate = true},
            {label = ('bcam8'), x = 235.53, y = 227.37, z = 113.23, r = {x = -35.0, y = 0.0, z = -160.29}, canRotate = true},
            {label = ('bcam9'), x = 254.72, y = 206.06, z = 113.28, r = {x = -35.0, y = 0.0, z = 44.70}, canRotate = true},
            {label = ('bcam10'), x = 269.89, y = 223.76, z = 106.48, r = {x = -35.0, y = 0.0, z = 112.62}, canRotate = true},
            {label = ('bcam11'), x = 252.27, y = 225.52, z = 103.99, r = {x = -35.0, y = 0.0, z = -74.87}, canRotate = true}
        },

	policeCamLabel = {label = ('police station')},
        policeCameras = {
			{label = ('Exterieur'), x = 416.744, y = -1009.270, z = 34.08, r = {x = -25.0, y = 0.0, z = 28.05}, canRotate = true},
            {label = ('Cellule 1'), x = 465.151, y = -994.266, z = 27.23, r = {x = -30.0, y = 0.0, z = 100.29}, canRotate = true},
            {label = ('Cellule 2'), x = 465.631, y = -997.777, z = 27.48, r = {x = -35.0, y = 0.0, z = 90.46}, canRotate = true},
            {label = ('Cellule 3'), x = 465.544, y = -1001.583, z = 27.1, r = {x = -25.0, y = 0.0, z = 90.01}, canRotate = true},
            {label = ('Parking'), x = 420.241, y = -1009.010, z = 34.95, r = {x = -25.0, y = 0.0, z = 230.95}, canRotate = true},
            {label = ('Entrée'), x = 433.249, y = -977.786, z = 33.456, r = {x = -40.0, y = 0.0, z = 100.49}, canRotate = true},
            {label = ('Interieur'), x = 449.440, y = -987.639, z = 33.25, r = {x = -30.0, y = 0.0, z = 50.50}, canRotate = true}
        },
		
	emsLabel = {label = ('Hopital')},
		emsCamera = {
			{label = ('Entrée'), x = 305.870, y = -1455.475, z = 32.08, r = {x = -25.0, y = 0.0, z = 28.05}, canRotate = true},
			{label = ('Couloir boutique'), x = -455.36, y = -335.67, z = -184.90, r = {x = -25.0, y = 0.0, z = -200.05}, canRotate = true},
			{label = ('Salle Operation'), x = -469.88, y = -376.53, z = -184.46, r = {x = -25.0, y = 0.0, z = -56.05}, canRotate = true},
			{label = ('Chambre 2'), x = -454.07, y = -354.16, z = -185.47, r = {x = -25.0, y = 0.0, z = -30.05}, canRotate = true},
			{label = ('Chambre 3'), x = -453.31, y = -335.78 , z = -184.47, r = {x = -25.0, y = 0.0, z = 200.05}, canRotate = true},
			{label = ('Salle Biologie'), x = -464.68, y = -343.04, z = -184.47, r = {x = -25.0, y = 0.0, z = 28.05}, canRotate = true},
			{label = ('Cuisine'), x = -471.45, y = -359.46, z = -184.47, r = {x = -25.0, y = 0.0, z = -20.05}, canRotate = true},
			{label = ('Reserve'), x = -464.94, y = -353.62, z = -184.47, r = {x = -25.0, y = 0.0, z = 180.05}, canRotate = true},
            {label = ('Salle attente'), x = -447.18, y = -365.20, z = -184.47, r = {x = -30.0, y = 0.0, z = 100.29}, canRotate = true},
            {label = ('Sécurité'), x = -477.39, y = -360.03, z = -184.47, r = {x = -35.0, y = 0.0, z = -40.46}, canRotate = true},
            {label = ('Vestaires'), x = -472.90, y = -335.64, z = -184.47, r = {x = -25.0, y = 0.0, z = 120.91}, canRotate = true}
		},
		
		
	villeLabel = {label = ('Ville')},
		villecamera = {
			{label = ('parking central'), x = 233.00909423828, y = -812.38275146484, z = 37.337703704834, r = {x = -25.0, y = 0.0, z = -200.05}, canRotate = true},
            {label = ('Pole emploi'), x = -296.594, y = -994.192, z = 42.851, r = {x = -30.0, y = 0.0, z = 250.0}, canRotate = true},
            {label = ('epicerie'), x = -713.33569335938, y = -930.74652099609, z = 24.863535834717, r = {x = -35.0, y = 0.0, z = -6.46}, canRotate = true}
			
            
		},

    casinoLabel = {label = ('Casino')},
		villecamera = {
			{label = ('Pièce Centrale'), x = 924.86, y = -941.13, z = 46.93, r = {x = -25.0, y = 0.0, z = -200.05}, canRotate = true},
            {label = ('Bar'), x = 909.98, y = -963.45, z = 47.63, r = {x = -30.0, y = 0.0, z = 250.0}, canRotate = true},
            {label = ('coffre'), x = 951.97, y = -960.49, z = 64.13, r = {x = -35.0, y = 0.0, z = -6.46}, canRotate = true}
			
            
		},	
		
	}
}
