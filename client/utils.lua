local QBCore = exports['qb-core']:GetCoreObject()
PlayerJob = {}

----- | CREATING BLIP | -----
CreateThread(function()
    Taco = AddBlipForCoord(13.02, -1604.21, 29.38)
    SetBlipSprite (Taco, 208)
    SetBlipDisplay(Taco, 4)
    SetBlipScale  (Taco, 0.5)
    SetBlipAsShortRange(Taco, true)
    SetBlipColour(Taco, 51)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("Taco Hut")
    EndTextCommandSetBlipName(Taco)
end)

----- | CREATING MODEL SPAWN | -----
local function FetchModel(model)
    RequestModel(GetHashKey(model))
    while not HasModelLoaded(model) do 
        Wait(100)
    end
  end

local LocalNPCs = {}

local function GetLocalNPC(index)
    return LocalNPCs[index]
end

local function CreateLocalNPC(index)
    if (LocalNPCs[index]) then 
        DestroyLocalNPC(index)
    end
      
    LocalNPCs[index] = {}
    local cfg = Config.tacoGaragePed[index]
  
    FetchModel(cfg.tacoGaragePedModel)

    ------| CREATING PED |------
    local tacoGaragePed = CreatePed(1, cfg.tacoGaragePedModel, cfg.tacoGaragePedLocation, false, true)
        FreezeEntityPosition(tacoGaragePed, true)
        SetEntityInvincible(tacoGaragePed, true)
        SetBlockingOfNonTemporaryEvents(tacoGaragePed, true)
        ----- | CREATING TARGET FOR PED | -----
        exports['qb-target']:AddTargetEntity(tacoGaragePed, { 
            options = {
            { 
                type = "client",
                event = "bd-tacojob:client:jobGarage",
                icon = "fa-solid fa-warehouse",
                label = "Garage",
                job = "taco"
            },
            { 
                type = "client",
                event = "bd-tacojob:client:storeGarage",
                icon = "fa-solid fa-square-parking",
                label = "Store Vehicle",
                job = "taco"
            },
            }, 
            distance = 1.5, 
        })
    LocalNPCs[index].tacoGaragePed = tacoGaragePed
end

local function DestroyLocalNPC(index)
    if (LocalNPCs[index]) then 
        DeleteEntity(LocalNPCs[index].tacoGaragePed)
        LocalNPCs[index] = nill
    end 
end

-----| CHECKS TO SEE IF PLAYER IS CERTAIN DISTANCE FROM THE PED |-----
Citizen.CreateThread(function()
    while true do
        local wait = 1000
        local ped = PlayerPedId() 
        local pcoords = GetEntityCoords(ped)
        for i=1, 1 do 
            local cfg = Config.tacoGaragePed[i]
            local coords = vector3(cfg.tacoGaragePedLocation)
            local dist = #(pcoords - coords)
            local weedProccessPed = GetLocalNPC(i)
            if dist < cfg.tacoGarageRenderDistance then 
                if (GetLocalNPC(i) == nill) then 
                  CreateLocalNPC(i)
                end 
            else 
                DestroyLocalNPC(i)
            end 
        end
      Wait(wait)
    end
end)

CreateThread(function()
    DecorRegister("t_vehicle", 1)
end)

----- | SETTING THE CLOCK IN/OUT TARGET | -----
exports['qb-target']:AddBoxZone("TacoHutClock", vector3(8.2, -1607.38, 29.38), 1.0, 1.0, {
	name = "TacoHutClock",
	heading = 347.27,
	debugPoly = false,
	minZ = 29.38 - 2,
	maxZ = 29.38 + 2,
}, {
	options = {
		{
            type = "client",
            event = "bd-tacojob:client:ToggleDuty",
			icon = "fa-solid fa-clipboard-user",
			label = "Clock In/Out",
			job = "taco",
		},
			{
            type = "client",
            event = "qb-bossmenu:client:OpenMenu",
			icon = "fa-solid fa-right-to-bracket",
			label = "Boss Menu",
			job = {["taco"] = 4},
		},
	},
	distance = 2.5
})

----- | REGISTERING THE EVENT TO TOGGLE DUTY ON/OFF | -----
RegisterNetEvent('bd-tacojob:client:ToggleDuty', function()
    TriggerServerEvent("QBCore:ToggleDuty")
end)
