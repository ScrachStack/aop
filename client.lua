RegisterNetEvent('aop:update')
AddEventHandler('aop:update', function(aop)
  SendNUIMessage({
    action = "updateAOP",
    aop = aop
  })
        BeginTextCommandDisplayHelp("STRING")
    AddTextComponentSubstringPlayerName("AOP: " .. aop .. 'Has been changed!')
    EndTextCommandDisplayHelp(0, false, true, -1)
end)

AddEventHandler('playerSpawned', function()
  TriggerServerEvent('requestCurrentAOP')
end)

SendNUIMessage({
  action = "updateAOP",
  aop = "Area Of Patrol Has Not Been Set. Use /setaop"
})
