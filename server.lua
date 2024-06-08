ESX = nil
ESX = exports["es_extended"]:getSharedObject()

local function getRandomReward()
    local randomNumber = math.random(1, 100)
    local cumulativeChance = 0

    for _, reward in ipairs(Config.Rewards) do
        cumulativeChance = cumulativeChance + reward.chance
        if randomNumber <= cumulativeChance then
            return reward.item
        end
    end

    return nil
end

local function givePlayerReward(xPlayer)
    local rewardItem = getRandomReward()
    if rewardItem == "money" then
        local amount = math.random(100, 500) -- Zufälliger Geldbetrag
        xPlayer.addMoney(amount)
        TriggerClientEvent('esx:showNotification', xPlayer.source, "Du hast ~g~$" .. amount .. "~s~ erhalten!")
    else
        exports.ox_inventory:AddItem(xPlayer.source, rewardItem, 1)
        TriggerClientEvent('esx:showNotification', xPlayer.source, "Du hast ein ~b~" .. rewardItem .. "~s~ erhalten!")
    end
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(Config.RewardInterval)
        for _, playerId in ipairs(GetPlayers()) do
            local xPlayer = ESX.GetPlayerFromId(playerId)
            if xPlayer then
                givePlayerReward(xPlayer)
            end
        end
    end
end)
