ESX = nil
ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('esx:showNotification')
AddEventHandler('esx:showNotification', function(message)
    ESX.ShowNotification(message)
end)