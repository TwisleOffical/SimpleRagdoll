Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlJustPressed(1, 39) then -- Keybind To ragdoll (change 39) Check readme for numbers
            ragdoll = 1 end 
            if ragdoll == 1 then
                SetPedToRagdoll(PlayerPedId(), 5000, 0, 0, true, true, false)
                ping("~h~~r~Press ] to stand up")
        end 
    end
end)
Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        if IsControlJustPressed(1, 40) then -- Keybind To un-ragdoll (change 40) Check readme for numbers
            ragdoll = 0 end 
            if ragdoll == 1 then 
                SetPedToRagdoll(PlayerPedId(), 0, 0, 0, true, true, false)
        end
    end
end)

function ping(msg)
        SetTextComponentFormat("STRING")
        AddTextComponentString(msg)
        EndTextCommandDisplayHelp(2, false, true ,1)
end