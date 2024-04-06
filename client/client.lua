Citizen.CreateThread(function()
    while true do
        local ped = PlayerPedId()
        local players = GetActivePlayers()

        local playerPeds = {}
        for _, player in ipairs(players) do
            playerPeds[player] = GetPlayerPed(player)
        end

        for player, playerPed in pairs(playerPeds) do
            local veh = GetVehiclePedIsUsing(playerPed)
            SetEntityNoCollisionEntity(ped, veh, true)
        end

        N_0x4757f00bc6323cfe(-1553120962, 0.0) 

        Wait(25)
    end
end)