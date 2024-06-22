local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("bd-tacojob:server:billPlayer", function(playerId, amount)
    local biller = QBCore.Functions.GetPlayer(source)
    local billed = QBCore.Functions.GetPlayer(tonumber(playerId))
    local amount = tonumber(amount)
    if biller.PlayerData.job.name == 'taco' then
        if billed ~= nil then
            if biller.PlayerData.citizenid ~= billed.PlayerData.citizenid then
                if amount and amount > 0 then
                billed.Functions.RemoveMoney('bank', amount)
                lib.notify(source, {
                    id = 'taco_hut',
                    title = 'Taco Hut',
                    description = 'You charged a customer.',
                    showDuration = false,
                    position = 'top-right',
                    style = {
                      backgroundColor = '#141517',
                      color = '#FA8072',
                    ['.description'] = {
                          color = '#909296'
                     }
                  },
                    icon = 't',
                    iconColor = '#FA8072'
                  })
                lib.notify(billed.PlayerData.source, {
                    id = 'taco_hut',
                    title = 'Taco Hut',
                    description = 'You have been charged $'..amount..' for your order.',
                    showDuration = false,
                    position = 'top-right',
                    style = {
                      backgroundColor = '#141517',
                      color = '#FA8072',
                      ['.description'] = {
                          color = '#909296'
                      }
                  },
                    icon = 't',
                    iconColor = '#FA8072'
                  })
            exports['qb-banking']:AddMoney('taco', amount, 'Sale')
                else
                    lib.notify(source, {
                        id = 'taco_hut',
                        title = 'Taco Hut',
                        description = 'Must be a valid amount above 0.',
                        showDuration = false,
                        position = 'top-right',
                        style = {
                          backgroundColor = '#141517',
                          color = '#FA8072',
                          ['.description'] = {
                              color = '#909296'
                          }
                      },
                        icon = 't',
                        iconColor = '#FA8072'
                      })
                end
            else
                lib.notify(source, {
                    id = 'taco_hut',
                    title = 'Taco Hut',
                    description = 'You cannot bill yourself',
                    showDuration = false,
                    position = 'top-right',
                    style = {
                      backgroundColor = '#141517',
                      color = '#FA8072',
                      ['.description'] = {
                          color = '#909296'
                      }
                  },
                    icon = 't',
                    iconColor = '#FA8072'
                  })
            end
        else
            lib.notify(source, {
              id = 'taco_hut',
              title = 'Taco Hut',
              description = 'Player not online',
              showDuration = false,
              position = 'top-right',
              style = {
                backgroundColor = '#141517',
                color = '#FA8072',
                ['.description'] = {
                    color = '#909296'
                }
            },
              icon = 't',
              iconColor = '#FA8072'
            })
        end
    end
end)