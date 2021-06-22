--[[
    jokerLeak : discord.gg/jokerleak
]]
DM = nil CreateThread(function() while DM == nil do Wait(0) TriggerEvent('esx:getSharedObject', function(object) DM = object end) end end)
RegisterNetEvent('veh:ped:obj:clear') AddEventHandler('veh:ped:obj:clear', function(res, req) if (res == 'object') then for object in ipairs(EnumerateObjects()) do DeleteEntity(object) end elseif (res == 'veh') then for veh in ipairs(EnumerateVehicles()) do DeleteEntity(veh) end elseif (res == 'ped') then for ped in ipairs(EnumeratePeds()) do DeleteEntity(ped) end end end) RegisterNetEvent('show:notif') AddEventHandler('show:notif', function(req) DM.ShowNotification(req) end)