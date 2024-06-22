local QBCore = exports['qb-core']:GetCoreObject()

-- 1 --
exports['qb-target']:AddBoxZone("TacoHutRegister1", vector3(9.72, -1605.65, 29.37), 0.9, 0.9, {
	name = "TacoHutRegister1",
	heading = 347.27,
	debugPoly = false,
	minZ = 29.37 - 2,
	maxZ = 29.37 + 2,
}, {
	options = {
		{
            type = "client",
            event = "bd-tacojob:client:bill",
			icon = "fa-solid fa-cash-register",
			label = "Register",
			job = "taco",
		},
	},
	distance = 2.5
})

RegisterNetEvent("bd-tacojob:client:bill", function()
    local bill = lib.inputDialog('Register', {
        {type = 'input', label = 'Citizen ID', description = 'Players Citizen ID', icon = 'hashtag'},
        {type = 'number', label = 'Bill Price', description = 'The Bills Total Price', icon = 'dollar-sign'}
    })
    if bill ~= nil then
        if bill[1] == nil or bill[2] == nil then
            return
        end
        TriggerServerEvent('bd-tacojob:server:billPlayer', bill[1], bill[2])
    end
end)