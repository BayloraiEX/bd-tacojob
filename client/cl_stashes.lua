local QBCore = exports['qb-core']:GetCoreObject()

----- | CREATING INVENTORIES | -----
-- 1 --
exports['qb-target']:AddBoxZone("TacoJobFrontTray1", vector3(10.44, -1605.16, 29.37), 0.9, 0.9, {
	name = "TacoJobFrontTray1",
	heading = 347.27,
	debugPoly = false,
	minZ = 29.37 - 2,
	maxZ = 29.37 + 2,
}, {
	options = {
		{
            type = "client",
            event = "bd-tacojob:client:frontTray1",
			icon = "fa-solid fa-equals",
			label = "Counter",
		},
	},
	distance = 2.5
})

RegisterNetEvent("bd-tacojob:client:frontTray1", function()
    TriggerServerEvent('bd-tacojob:server:frontTray1')
end)

-- FRIDGE --
exports['qb-target']:AddBoxZone("TacoJobJobFridge", vector3(12.39, -1600.8, 29.38), 0.9, 0.9, {
	name = "TacoJobJobFridge",
	heading = 347.27,
	debugPoly = false,
	minZ = 29.38 - 2,
	maxZ = 29.38 + 2,
}, {
	options = {
		{
            type = "client",
            event = "bd-tacojob:client:jobFridge",
			icon = "fa-solid fa-temperature-empty",
			label = "Fridge",
			job = "taco",
		},
	},
	distance = 2.5
})

RegisterNetEvent("bd-tacojob:client:jobFridge", function()
    TriggerServerEvent('bd-tacojob:server:jobFridge')
end)

-- STORAGE --
exports['qb-target']:AddBoxZone("TacoJobJobStorage", vector3(20.75, -1601.4, 29.38), 0.9, 0.9, {
	name = "TacoJobJobStorage",
	heading = 347.27,
	debugPoly = false,
	minZ = 29.38 - 2,
	maxZ = 29.38 + 2,
}, {
	options = {
		{
            type = "client",
            event = "bd-tacojob:client:jobStorage",
			icon = "fa-solid fa-box",
			label = "Storage",
			job = "taco",
		},
	},
	distance = 2.5
})

RegisterNetEvent("bd-tacojob:client:jobStorage", function()
    TriggerServerEvent('bd-tacojob:server:jobStorage')
end)

-- SHOP --
exports['qb-target']:AddBoxZone("TacoJobShop", vector3(17.23, -1599.24, 29.38), 0.9, 0.9, {
	name = "TacoJobShop",
	heading = 347.27,
	debugPoly = false,
	minZ = 29.38 - 2,
	maxZ = 29.38 + 2,
}, {
	options = {
		{
            type = "client",
            event = "bd-tacojob:client:ingredientShop",
			icon = "fa-solid fa-basket-shopping",
			label = "Ingredients",
			job = "taco",
		},
	},
	distance = 2.5
})

RegisterNetEvent("bd-tacojob:client:ingredientShop", function()
    TriggerServerEvent('bd-tacojob:server:ingredientShop')
end)