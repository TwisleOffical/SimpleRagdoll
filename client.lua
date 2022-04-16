local ragdoll = false
Citizen.CreateThread(function()
   while true do
      if ragdoll then
         SetPedToRagdoll(PlayerPedId(), 1000, 1000, 0, 0, 0, 0)
      else
         Citizen.Wait(800)
      end
      Citizen.Wait(0)
   end
end)

RegisterCommand('ragdoll', function()
   ragdoll = not ragdoll
end)

RegisterKeyMapping('ragdoll', 'Toggle ragdoll mode', 'keyboard', 'U')