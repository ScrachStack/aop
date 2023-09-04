local PATROL 

RegisterCommand("setaop", function(source, args, rawCommand)
  local newAOP = table.concat(args, " ")
  PATROL = newAOP
  TriggerClientEvent("aop:update", -1, PATROL)
end, true)  

AddEventHandler("playerSpawned", function()
  TriggerClientEvent("aop:update", source, currentAOP)
end)
