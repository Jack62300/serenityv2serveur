INTERIORS = {
    -- HOPITAL
    [1] = {id = 1, x = 275.46, y = -1361.22, z = 24.53, h = 50.37, name = "Hopîtal", destination = {2,3}},
    [2] = {id = 2, x = 343.47, y = -1398.81, z = 32.51, h = 49.13, name = "Sortie principale", destination = {1,3}},
    [3] = {id = 3, x = 335.16, y = -1432.06, z = 46.51, h = 141.75, name = "Sortie de service", destination = {1,2}},

    -- GARAGE POLICE
    [4] = {id = 4, x = 459.2547, y = -1007.9265, z = 28.2573, h = 161.11303710938, name = "Sortie Garage", destination = {5}},
    [5] = {id = 5, x = 445.8365, y = -996.8284, z = 30.6896, h = 160.31993103027, name = "Entrer dans le Commissariat", destination = {4}},

    -- Traitement weed
    [8] = {id = 8, x = 1557.5073, y = 2162.2851, z = 78.6714, h = 35.407787322998, name = "Sortir du hangar", destination = {9}},
    [9] = {id = 9, x = 1066.3045, y = -3183.5986, z = -39.1636, h = 205.4248046875, name = "Entrer dans le hanger", destination = {8}},

    -- HUMANE LABS
    [10] = {id = 10, x = 3540.859375, y = 3675.7958984375, z = 28.121143341064, h = 166.72660827637, name = "Etage n°-1", destination = {11}},
    [11] = {id = 11, x = 3540.8566894531, y = 3676.0424804688, z = 20.991781234741, h = 173.42085266113, name = "Etage n°-3", destination = {10}},

    -- Meth Traitement
    [12] = {id = 12, x = 767.3706, y = -1690.6677, z = 37.5450, h = 93.3, name = "Sortir de l'entrepot", destination = {13}},
    [13] = {id = 13, x = 996.8307, y = -3200.3781, z = -36.3937, h = 342.2, name = "Entrer dans l'entrepot", destination = {12}},

    -- Cocaine
    [14] = {id = 14, x = -55.1798, y = 6392.3657, z = 31.6200, h = 311.184, name = "Sortir de l'entrepot", destination = {15}},
    [15] = {id = 15, x = 1088.5632, y = -3187.5576, z = -38.9934, h = 133.451, name = "Entrer dans l'entrepot", destination = {14}},

    -- Mechano
    [16] = {id = 16, x = -345.5111, y = -122.9928, z = 39.0096, h = 85.047, name = "Sortir du Bureau", destination = {17}},
    [17] = {id = 17, x = -350.2976, y = -142.9193, z = 52.4538, h = 326.03, name = "Entrer dans le Bureau", destination = {16}},

    -- Bunker
    [18] = {id = 18, x = 1446.26, y = 1180.82, z = 116.89, h = 87, name = "Sortir", destination = {19}},
    [19] = {id = 19, x = 902.521, y = -3182.464, z = -97.056, h = 270.048, name = "Entrer", destination = {18}},

    -- Blanchisseur
    [20] = {id = 20, x = 1118.811, y = -3193.967, z = -40.395, h = 357.045, name = "Entrer", destination = {21}},
    [21] = {id = 21, x = -1099.990, y = -1225.461, z = 10.541, h = 122.0, name = "Sortir", destination = {20}},

    -- entrer armee
    [22] = {id = 22, x = -2282.495, y = 3371.776, z = 31.722, h = 53.229, name = "Entrer", destination = {23}},
    [23] = {id = 23, x = -2302.156, y = 3386.726, z = 31.257, h = 322.521, name = "Sortir", destination = {22}},

    -- accesenseur armee
    [24] = {id = 24, x = -2361.125, y = 3249.279, z = 92.904, h = 148.868, name = "Monter", destination = {25}},
    [25] = {id = 25, x = -2360.818, y = 3249.469, z = 32.811, h = 329.645, name = "Descendre", destination = {24}},

    -- Biker Hell's Angels
    [26] = {id = 26, x =  996.9757, y = -3157.9099, z = -38.9071, h = 270.026, name = "Entree Bar Hells Angels Mc", destination = {27}},
    [27] = {id = 27, x =  -1134.8914, y = -1568.8131, z = 4.4088, h = 183.453, name = "Sortir du Bar", destination = {26}},

    -- biker
    --[28] = {id = 28, x =  997.033, y = -3158.174, z = -38.907, h = 273.479, name = "Entrer", destination = {29}},
    --[29] = {id = 29, x =  94.967, y = -1809.882, z = 27.083, h = 252.684, name = "Sortir", destination = {28}},

    -- entrer  accueil tribunal
	[30] = {id = 30, x =  235.829, y = -413.173, z = -118.163, h = 336.288, name = "Entrer", destination = {31}},
	[31] = {id = 31, x =  233.518, y = -410.005, z = 48.112, h = 159.5, name = "Sortir", destination = {30}},

	-- entre tribunal
	[32] = {id = 32, x =  238.634, y = -334.346, z = -118.773, h = 338.942, name = "Entrer", destination = {33}},
	[33] = {id = 33, x =  224.796, y = -419.288, z = -118.2, h = 74.762, name = "Sortir", destination = {32}},

	-- entre judge
	[34] = {id = 34, x =  239.873, y = -306.806, z = -118.8, h = 245.306, name = "Entrer", destination = {35}},
	[35] = {id = 35, x =  246.651, y = -337.466, z = -118.8, h = 243.844, name = "Sortir", destination = {34}},

	--entre prison
	[36] = {id = 36, x= 1848.977, y= 3689.838, z= 34.267, h = 33.761, name = "Entrer", destination = {37}},
	[37] = {id = 37, x= 1849.688, y= 3682.354, z= -118.762, h = 312.276, name = "Sortir", destination = {36}},
	
    --entre service secret
	[40] = {id = 40, x= 133.84, y= -732.97, z= 42.15, h = 159.8, name = "Sortir", destination = {41}},
	[41] = {id = 41, x= 2155.28, y= 2920.87, z= -61.9, h = 84.9, name = "Entrer", destination = {40}},
	
	 --entre salle interrogation
	[44] = {id = 44, x= 462.08, y= -1009.67, z= 25.56, h = 92.9, name = "Sortir", destination = {45}},
	[45] = {id = 45, x= 2047.67, y= 2964.75, z= -67.3, h = 322.1, name = "Entrer", destination = {44}},
	
	 --entre ranch
	--[46] = {id = 46, x= 1394.95, y= 1152.66, z= 114.39, h = 270, name = "Sortir", destination = {47}},
	--[47] = {id = 47, x= 1396.39, y= 1141.77, z= 114.33, h = 87.7, name = "Entrer", destination = {46}},
	
	 -- entre bureau cinema
	[48] = {id = 48, x = -1007.19, y = -486.58, z = 39.97, h = 301.3, name = "Entrer", destination = {49}},
    [49] = {id = 49, x = -1002.88, y = -477.75, z = 50.03, h = 116.7, name = "Sortir", destination = {48}},
			
	[60] = {id = 60, x = 826.43, y = -3247.66, z = -98.99, h = 136.9, name = "Sortir", destination = {61}},
    [61] = {id = 61, x = -692.97, y = 918.61, z = 231.98, h = 189.7, name = "Entrer", destination = {60}},
	
	-- -- Maison Michael
    --[62] = {id = 62, x = -817.19, y = 178.01, z = 72.23, h = 284.08, name = "Sortir de la propriété", destination = {63}},
    --[63] = {id = 63, x = -813.77, y = 179.28, z = 72.16 , h = 286.12, name = "Entrer dans la propriété", destination = {62}},
	--
	--[64] = {id = 64, x = -794.54, y = 181.2, z = 72.83, h = 109.52, name = "Entrer dans la propriété", destination = {65}},
    --[65] = {id = 65, x = -792.9, y = 181.85, z = 72.84 , h = 286.12, name = "Sortir dans le jardin", destination = {64}},
	
	 -- Maison Franklin Vinewood
    --[66] = {id = 66, x = 9.52, y = 542.63, z = 175.83, h = 152.07, name = "Sortir de la propriété", destination = {67}},
    --[67] = {id = 67, x = 6.6, y = 535.7, z = 176.03 , h = 153.6, name = "Entrer dans la propriété", destination = {66}},
	
	    -- police paletobay iaa
    [66] = {id = 66, x =  2060.393, y = 2982.796, z = -61.902, h = 146.303, name = "Entrer", destination = {67}},
    [67] = {id = 67, x =  -442.498, y = 6012.074, z = 31.716, h = 49.537, name = "Sortir", destination = {66}},

	-- Police paletobay
    [68] = {id = 68, x =  1172.536, y = -3196.732, z = -39.008, h = 2.616, name = "Entrer", destination = {69}},
    [69] = {id = 69, x = -449.793, y = 6016.444, z = 31.716, h = 308.163, name = "Sortir", destination = {68}},	

	-- garage paletobay
    [70] = {id = 70, x =  1110.25, y = -3166.726, z = -37.519, h = 359.527, name = "Entrer", destination = {71}},
    [71] = {id = 71, x = -428.144, y = 6162.304, z = 31.478, h = 36.396, name = "Sortir", destination = {70}},
		
	-- Fort Zankudo
    [74] = {id = 74, x = -1596.87, y = 2808.89, z = 17.12, h = 45.88, name = "Sortir du fort Zankudo", destination = {75}},
    [75] = {id = 75, x = -1891.56 , y = 2919.59, z = 32.81, h = 335.74, name = "Entrer dans le fort Zankudo", destination = {74}},	
	
	-- PoliceStation
    [76] = {id = 76, x = 446.4260 , y = -986.4047, z = 26.6743, h = 180.38, name = "Sortir de la salle d'interrogatoire", destination = {77}},
    [77] = {id = 77, x = 442.06, y = -997.17, z = 4.8, h = 180.38, name = "Entrer dans la salle d'interrogatoire", destination = {76}},
	
	[78] = {id = 78, x = 456.7556 , y = -986.2661, z = 26.6443, h = 87.88, name = "Sortir de la salle des saisies", destination = {79}},
    [79] = {id = 79, x = 456.33, y = -1000.72, z = 4.8, h = 268.83, name = "Entrer dans la salle des saisies", destination = {78}},
	
	[80] = {id = 80, x = 452.07 , y = -984.22, z = 26.67, h = 0.09, name = "Sortir de la salle du SWAT", destination = {81}},
    [81] = {id = 81, x = 442.14, y = -986.86, z = 4.8, h = 358.48, name = "Entrer dans la salle du SWAT", destination = {80}},
	
			-- Villa Hôpital
    [82] = {id = 82, x = -447.06 , y = -310.92, z = 78.4, h = 25.53, name = "Sortir de la villa", destination = {83}},
    [83] = {id = 83, x = -448.03, y = -308.42, z = 78.62, h = 25.4, name = "Entrer dans la villa", destination = {82}},	
	
			-- Villa Paleto Bay
    [84] = {id = 84, x = -8.53 , y = 6817.52, z = 16.31, h = 273.73, name = "Sortir du salon", destination = {85}},
    [85] = {id = 85, x = -8.07, y = 6802.27, z = 19.61, h = 69.27, name = "Entrer dans le salon", destination = {84}},	
	
	[86] = {id = 86, x = -9.04 , y = 6819.15, z = 19.8, h = 3.75, name = "Sortir de la salle de bain", destination = {87}},
    [87] = {id = 87, x = -9.31, y = 6820.1, z = 19.57, h = 357.74, name = "Entrer dans la salle de bain", destination = {86}},	
	
	[88] = {id = 88, x = -8.52 , y = 6798.36, z = 19.61, h = 271.16, name = "Sortir du bureau", destination = {89}},
    [89] = {id = 89, x = -8.44, y = 6813.48, z = 22.89, h = 90.84, name = "Entrer dans le bureau", destination = {88}},	
	
	[90] = {id = 90, x = -10.61 , y = 6797.13, z = 19.61, h = 180.39, name = "Sortir de la chambre", destination = {91}},
    [91] = {id = 91, x = -8.32, y = 6801.94, z = 22.89, h = 88.13, name = "Entrer dans la chambre", destination = {90}},

			-- Studio Paleto Bay
    [92] = {id = 92, x = -173.79 , y = 6140.98, z = 42.64, h = 40.57, name = "Monter à l'étage", destination = {93}},
    [93] = {id = 93, x = -192.58, y = 6148.9, z = 36.91, h = 220.01, name = "Descendre à l'étage", destination = {92}},		

				-- Hotel Golf
    [96] = {id = 96, x = -1129.99 , y = 141.53, z = 66.24, h = 171.48, name = "Entrer dans la chambre 1", destination = {97}},
    [97] = {id = 97, x = -1129.64, y = 144.51, z = 66.279, h = 168.83, name = "Sortir de la chambre 1", destination = {96}},
    
	[98] = {id = 98, x = -1125.61 , y = 146.67, z = 66.28, h = 118.04, name = "Sortir de la chambre 2", destination = {99}},
    [99] = {id = 99, x = -1124.54, y = 146.99, z = 66.24, h = 292.93, name = "Entrer dans la chambre 2", destination = {98}},	

	[100] = {id = 100, x = -1120.44 , y = 142.14, z = 66.31, h = 351.5, name = "Sortir de la chambre 3", destination = {101}},
    [101] = {id = 101, x = -1120.58, y = 141.11, z = 66.24, h = 169.51, name = "Entrer dans la chambre 3", destination = {100}},
	
	-- Hôpital
	
	[102] = {id = 102, x = 247.34 , y = -1371.67, z = 24.54, h = 327.91, name = "Descendre à l'acceuil", destination = {103}},
    [103] = {id = 103, x = 251.76, y = -1366.43, z = 39.53, h = 137.8, name = "Monter dans les bureaux", destination = {102}},
	
	[104] = {id = 104, x = 391.01 , y = -1432.58, z = 29.43, h = 229.57, name = "Sortir sur le parking", destination = {105}},
    [105] = {id = 105, x = 254.42, y = -1372.49, z = 24.54, h = 48.93, name = "Entrer dans l'hôpital", destination = {104}},
	
	-- Eglise 
	[106] = {id = 106, x = -1667.58 , y = -290.43, z = 51.88, h = 229.57, name = "Entrer dans l'Eglise", destination = {107}},
    [107] = {id = 107, x = -1684.42, y = -291.49, z = 51.89, h = 48.93, name = "Sortir sur le parking", destination = {106}},
    
    -- Gouvernement
	[110] = {id = 110, x = -429.612, y = 1109.584, z = 327.682, h = 229.57, name = "Sortir du Gouvernement", destination = {111}},
	[111] = {id = 111, x = -433.80, y = 1083.5378, z = 332.52835083008, h = 229.57, name = "Entrer dans le gourvernement", destination = {110}},

}
