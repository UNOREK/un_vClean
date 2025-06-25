RegisterNetEvent("usun:nieuzywane")
AddEventHandler("usun:nieuzywane", function()
    print("Otrzymano event usun:nieuzywane")
    local vehicles = GetGamePool("CVehicle")
    local iloscUsunietych = 0

    for _, veh in ipairs(vehicles) do
        if DoesEntityExist(veh) and not IsPedInVehicle(PlayerPedId(), veh, true) and GetPedInVehicleSeat(veh, -1) == -1 then
            DeleteEntity(veh)
            iloscUsunietych = iloscUsunietych + 1
        end
    end

    TriggerEvent("chat:addMessage", {
        color = {255, 0, 0},
        multiline = true,
        args = {"SYSTEM", "Usunięto nieużywane pojazdy z mapy (" .. iloscUsunietych .. ")"}
    })

    print("Usunięto " .. iloscUsunietych .. " pojazdów.")
end)