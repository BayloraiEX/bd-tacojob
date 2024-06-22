local QBCore = exports['qb-core']:GetCoreObject()

----- | CREATING INVENTORYS | -----
----- | FRONT COUNTER | -----
RegisterNetEvent('bd-tacojob:server:frontTray1', function(frontTray1)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local stashName = 'TacoHuts Counter'

    if Player then
        exports['qb-inventory']:OpenInventory(src, stashName, {
            maxweight = 50000,
            slots = 15,
        })
    end
end)

----- | JOB FRIDGE | -----
RegisterNetEvent('bd-tacojob:server:jobFridge', function(jobFridge)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local stashName = 'TacoHuts Fridge'

    if Player then
        exports['qb-inventory']:OpenInventory(src, stashName, {
            maxweight = 750000,
            slots = 50,
        })
    end
end)

----- | JOB FRIDGE2 | -----
RegisterNetEvent('bd-tacojob:server:jobStorage', function(jobFridge)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local stashName = 'TacoHuts Storage'

    if Player then
        exports['qb-inventory']:OpenInventory(src, stashName, {
            maxweight = 1000000,
            slots = 75,
        })
    end
end)

----- | CREATING SHOP | ---- 
RegisterNetEvent('bd-tacojob:server:ingredientShop', function(name)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local playerCoords = GetEntityCoords(playerPed)
    exports['qb-inventory']:CreateShop({
        name = 'ingredientShop',
        label = 'Taco Huts Shop',
        --coords = vector3(8.19, -1607.27, 29.38), -- match where the target is on client side 
        slots = 20,
        items = Config.Items
    })

    if Player then
        exports['qb-inventory']:OpenShop(source, 'ingredientShop')
    end
end)

