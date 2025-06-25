RegisterCommand("vclear", function(source, args, raw)
    if source == 0 or IsPlayerAceAllowed(source, "command.vclear") then
        local vehicles = GetAllVehicles()
        local deleted = 0

        for _, veh in ipairs(vehicles) do
            if DoesEntityExist(veh) and not IsPedAPlayer(GetPedInVehicleSeat(veh, -1)) then
                DeleteEntity(veh)
                deleted = deleted + 1
            end
        end

        print("[vclear] Usunięto " .. deleted .. " pojazdów.")
        TriggerClientEvent("chat:addMessage", -1, {
            color = {255, 0, 0},
            args = {"SYSTEM", "Usunięto nieużywane pojazdy z mapy (" .. deleted .. ")"}
        })
    else
        print("Brak uprawnień do /vclear")
    end
end, true)