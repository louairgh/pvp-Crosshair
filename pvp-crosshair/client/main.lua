Citizen.CreateThread(function()
  local ready = false
  RegisterNUICallback("ready", function() ready = true end)

  while not ready do
    Citizen.Wait(100)
    SendNUIMessage({ type = "ready" })
  end

  local crossData = GetResourceKvpString("crosshairData")

  if crossData then
    SendNUIMessage({ type = "setCrosshair", crosshair = json.decode(crossData) })
  end

  SendNUIMessage({ type = "setLang", lang = config })
end)

RegisterNUICallback("saveCrosshair", function(crossData)
  SetResourceKvp("crosshairData", json.encode(crossData))
  SetNuiFocus(false, false)
end)

RegisterNetEvent("crosshair:start")
AddEventHandler("crosshair:start", function()
  SendNUIMessage({ type = "show", show = true })  -- Show the crosshair menu
  SetNuiFocus(true, true)  -- Enable focus on the NUI
end)

RegisterKeyMapping('crosshair', 'Toggle Crosshair Menu', 'keyboard', config.keybind)

RegisterCommand("crosshair", function()
  SendNUIMessage({ type = "show", show = true })
  SetNuiFocus(true, true)
end, false)