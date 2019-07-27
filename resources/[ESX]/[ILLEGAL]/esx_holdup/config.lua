Config = {}
Config.Locale = 'fr'

Config.PoliceNumberRequired = 2
Config.TimerBeforeNewRob = 3600 -- seconds


-- Change secondsRemaining if you want another timer
Stores = {
      ["paleto_twentyfourseven"] = {
        position = { ['x'] = 1736.32092285156, ['y'] = 6419.4970703125, ['z'] = 35.037223815918 },
        reward = math.random(5000,15000),
        nameofstore = "24/7. (Paleto Bay)",
        secondsRemaining = 600, -- seconds
        lastrobbed = 0
    },
    ["sandyshores_twentyfoursever"] = {
        position = { ['x'] = 1961.24682617188, ['y'] = 3749.46069335938, ['z'] = 32.3437461853027 },
        reward = math.random(5000,15000),
        nameofstore = "24/7. (Sandy Shores)",
        secondsRemaining = 500, -- seconds
        lastrobbed = 0
    },
    ["bar_one"] = {
        position = { ['x'] = 1990.579, ['y'] = 3044.957, ['z'] = 47.215171813965 },
        reward = math.random(5000,15000),
        nameofstore = "Yellow Jack. (Sandy Shores)",
        secondsRemaining = 500, -- seconds
        lastrobbed = 0
    },
    ["ocean_liquor"] = {
        position = { ['x'] = -2959.33715820313, ['y'] = 388.214172363281, ['z'] = 14.0432071685791 },
        reward = math.random(8000,20000),
        nameofstore = "Robs Liquor. (Great Ocean Higway)",
        secondsRemaining = 400, -- seconds
        lastrobbed = 0
    },
    ["sanandreas_liquor"] = {
        position = { ['x'] = -1219.85607910156, ['y'] = -916.276550292969, ['z'] = 11.3262157440186 },
        reward = math.random(8000,20000),
        nameofstore = "Robs Liquor. (San andreas Avenue)",
        secondsRemaining = 300, -- seconds
        lastrobbed = 0
    },
    ["grove_ltd"] = {
        position = { ['x'] = -43.4035377502441, ['y'] = -1749.20922851563, ['z'] = 29.421012878418 },
        reward = math.random(8000,20000),
        nameofstore = "LTD Gasoline. (Grove Street)",
        secondsRemaining = 300, -- seconds
        lastrobbed = 0
    },
    ["mirror_ltd"] = {
        position = { ['x'] = 1160.67578125, ['y'] = -314.400451660156, ['z'] = 69.2050552368164 },
        reward = math.random(8000,20000),
        nameofstore = "LTD Gasoline. (Mirror Park Boulevard)",
        secondsRemaining = 300, -- seconds
        lastrobbed = 0
    },
}
