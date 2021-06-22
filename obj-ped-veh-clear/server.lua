--[[
    JokerLeak : disocrd.gg/jokerleak
]]
DM = nil TriggerEvent('esx:getSharedObject', function(object) DM = object end)

RegisterCommand(Config.objectCommand, function(src, args, user) if DM.GetPlayerFromId(src).permission_level >= Config.perm then TriggerClientEvent('veh:ped:obj:clear', 'object') else TriggerClientEvent('show:notif', src, '~r~insufficient permission') end end)
RegisterCommand(Config.pedCommand, function(src, args, user) if DM.GetPlayerFromId(src).permission_level >= Config.perm then TriggerClientEvent('veh:ped:obj:clear', 'ped') else TriggerClientEvent('show:notif', src, '~r~insufficient permission') end end)
RegisterCommand(Config.vehCommand, function(src, args, user) if DM.GetPlayerFromId(src).permission_level >= Config.perm then TriggerClientEvent('veh:ped:obj:clear', 'veh') else TriggerClientEvent('show:notif', src, '~r~insufficient permission') end end)