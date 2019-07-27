------------------------------------
--- Police Backup, Made by FAXES ---
------------------------------------

--- CONFIG ---
local leoPeds = {
    "11",
    "s_m_y_sheriff_01",
    "s_m_y_swat_01",
    "s_m_m_ciasec_01",
    "s_m_y_hwaycop_01",
    "s_m_m_snowcop_01",
    "s_m_y_marine_01",
}

--------------------------------------------------------------------------------------------------------
local PlayerData              = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	PlayerData = ESX.GetPlayerData()
end)

function checkPed(ped, PedList)
	for i = 1, #PedList do
		if GetHashKey(PedList[i]) == GetEntityModel(ped) then
			return true
		end
	end
	return false
end

function ShowInfo(text)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(false, false)
end

function playCode99Sound()
    PlaySoundFrontend(-1, "TIMER_STOP", "HUD_MINI_GAME_SOUNDSET", 1)
    Wait(900)
    PlaySoundFrontend(-1, "TIMER_STOP", "HUD_MINI_GAME_SOUNDSET", 1)
    Wait(900)
    PlaySoundFrontend(-1, "TIMER_STOP", "HUD_MINI_GAME_SOUNDSET", 1)
end

RegisterNetEvent('Fax:ShowInfo')
AddEventHandler('Fax:ShowInfo', function(notetext)
	ShowInfo(notetext)
end)

RegisterNetEvent('Fax:BackupReq')
AddEventHandler('Fax:BackupReq', function(bk, s)
    local src = s
    local bkLvl = bk
    local bkLvlTxt = "N/A"
    local coords = GetEntityCoords(GetPlayerPed(GetPlayerFromServerId(src)))
    local street1 = GetStreetNameAtCoord(coords.x, coords.y, coords.z, Citizen.ResultAsInteger(), Citizen.ResultAsInteger())
    local streetName = (GetStreetNameFromHashKey(street1))
	local playerPed = GetPlayerName(GetPlayerFromServerId(src))

    if PlayerData.job ~= nil and PlayerData.job.name == 'police' then
        if bkLvl == "1024" then
            bkLvlTxt = "~b~code 10-24"
        elseif bkLvl == "1029a" then
            bkLvlTxt = "~y~code 10-29a"
        elseif bkLvl == "1029b" then
            bkLvlTxt = "~r~CODE 10-29b"
        elseif bkLvl == "1030" then
            bkLvlTxt = "~r~CODE 10-30"
        elseif bkLvl == "1031" then
            bkLvlTxt = "~r~CODE 10-31"
        elseif bkLvl == "1032" then
            bkLvlTxt = "~r~CODE 10-32"
        elseif bkLvl == "1034" then
            bkLvlTxt = "~r~CODE 10-34"
        elseif bkLvl == "1035" then
            bkLvlTxt = "~r~CODE 10-35"
        elseif bkLvl == "1036" then
            bkLvlTxt = "~r~CODE 10-36"
        elseif bkLvl == "1040" then
            bkLvlTxt = "~r~CODE 10-40"
        elseif bkLvl == "1041" then
            bkLvlTxt = "~r~CODE 10-41"
        elseif bkLvl == "1042" then
            bkLvlTxt = "~r~CODE 10-42"
        elseif bkLvl == "1050" then
            bkLvlTxt = "~r~CODE 10-50"
        elseif bkLvl == "1051" then
            bkLvlTxt = "~r~CODE 10-51"
        elseif bkLvl == "1019" then
            bkLvlTxt = "~r~CODE 10-19"
            PlaySoundFrontend(-1, "Mission_Pass_Notify", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS", 1)
        elseif bkLvl == "911" then
            bkLvlTxt = "~r~~h~CODE 911"
        end

        ShowInfo("L'agent "..playerPed.." annonce un " .. bkLvlTxt .. "~s~. ~o~Location: ~s~" .. streetName .. ".")
        SetNewWaypoint(coords.x, coords.y)

        if bkLvl == "911" then
            playCode99Sound()
        end
    end
end)