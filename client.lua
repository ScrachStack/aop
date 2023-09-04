Citizen.CreateThread(function()
    SetNuiFocus(false, false)
  
    SendNUIMessage({
      action = "updateAOP",
      aop = "Area Of Patrol Has Not Been Set. Use /setaop"
    })
  end)
  
  RegisterNetEvent('aop:update')
  AddEventHandler('aop:update', function(aop)
    SendNUIMessage({
      action = "updateAOP",
      aop = aop
    })
  end)
  
AddEventHandler("playerSpawned", function()
  TriggerEvent("aop:update", currentAOP)
end)
