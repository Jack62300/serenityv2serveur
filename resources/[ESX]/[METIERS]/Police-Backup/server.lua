------------------------------------
--- Police Backup, Made by FAXES ---
------------------------------------

RegisterCommand("bk", function(source, args, rawCommand)
    local s = source
    local bkLvl = args[1]
	
		if not bkLvl then
			TriggerClientEvent("Fax:ShowInfo", source, "~y~Please specify a code level ~n~~s~1, 2, 3")
		elseif bkLvl == "1024" then
			TriggerClientEvent("Fax:BackupReq", -1, bkLvl, s)
		elseif bkLvl == "1029a" then
			TriggerClientEvent("Fax:BackupReq", -1, bkLvl, s)
		elseif bkLvl == "1029b" then
			TriggerClientEvent("Fax:BackupReq", -1, bkLvl, s)
		elseif bkLvl == "1030" then
			TriggerClientEvent("Fax:BackupReq", -1, bkLvl, s)
		elseif bkLvl == "1031" then
			TriggerClientEvent("Fax:BackupReq", -1, bkLvl, s)
		elseif bkLvl == "1032" then
			TriggerClientEvent("Fax:BackupReq", -1, bkLvl, s)
		elseif bkLvl == "1034" then
			TriggerClientEvent("Fax:BackupReq", -1, bkLvl, s)
		elseif bkLvl == "1035" then
			TriggerClientEvent("Fax:BackupReq", -1, bkLvl, s)
		elseif bkLvl == "1036" then
			TriggerClientEvent("Fax:BackupReq", -1, bkLvl, s)
		elseif bkLvl == "1040" then
			TriggerClientEvent("Fax:BackupReq", -1, bkLvl, s)
		elseif bkLvl == "1041" then
			TriggerClientEvent("Fax:BackupReq", -1, bkLvl, s)
		elseif bkLvl == "1042" then
			TriggerClientEvent("Fax:BackupReq", -1, bkLvl, s)
		elseif bkLvl == "1050" then
			TriggerClientEvent("Fax:BackupReq", -1, bkLvl, s)
		elseif bkLvl == "1051" then
			TriggerClientEvent("Fax:BackupReq", -1, bkLvl, s)
		elseif bkLvl == "1019" then
			TriggerClientEvent("Fax:BackupReq", -1, bkLvl, s)
		elseif bkLvl == "911" then
			TriggerClientEvent("Fax:BackupReq", -1, bkLvl, s)
		elseif bkLvl ~= "1024" or bkLvl ~= "1029a" or bkLvl ~= "1029b" or bkLvl ~= "1030" or bkLvl ~= "1031" or bkLvl ~= "1032" or bkLvl ~= "1034" or bkLvl ~= "1035" or bkLvl ~= "1036" or bkLvl ~= "1040" or bkLvl ~= "1041" or bkLvl ~= "1042" or bkLvl ~= "1050" or bkLvl ~= "1051" or bkLvl ~= "1019" or bkLvl ~= "911" then
			TriggerClientEvent("Fax:ShowInfo", source, "~y~Code Invalide")
		end
end)