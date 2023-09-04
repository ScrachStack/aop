RegisterNetEvent('aop:update')
AddEventHandler('aop:update', function(aop)
  SendNUIMessage({
    action = "updateAOP",
    aop = aop
  })
end)

AddEventHandler('playerSpawned', function()
  TriggerServerEvent('requestCurrentAOP')
end)

SendNUIMessage({
  action = "updateAOP",
  aop = "Area Of Patrol Has Not Been Set. Use /setaop"
})
