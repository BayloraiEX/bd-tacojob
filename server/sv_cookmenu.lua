local QBCore = exports['qb-core']:GetCoreObject()

----- | MAKE BEEF BURRITO | -----
RegisterNetEvent('bd-tacojob:server:makeBeefBurrito', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'th_tortillas', 2, false) then
      lib.notify(source, {
        id = 'taco_job',
        title = 'Taco Hut',
        description = 'You need Tortillas to make Beef Burritos.',
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
      }) return end
    exports['qb-inventory']:AddItem(src, 'th_beef_burrito', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['th_beef_burrito'], 'add', 2)
    lib.notify(source, {
      id = 'taco_jobs',
      title = 'Taco Hut',
      description = 'You have cooked Beef Burrito',
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
end)

----- | MAKE BEEF ENCHILADA | -----
RegisterNetEvent('bd-tacojob:server:makeBeefEnchilada', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'th_tortillas', 2, false) then
      lib.notify(source, {
        id = 'taco_job',
        title = 'Taco Hut',
        description = 'You need Tortillas to make Beef Enchiladas.',
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
      }) return end
    exports['qb-inventory']:AddItem(src, 'th_beef_enchilada', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['th_beef_enchilada'], 'add', 2)
    lib.notify(source, {
      id = 'taco_jobs',
      title = 'Taco Hut',
      description = 'You have cooked Beef Enchiladas',
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
end)

----- | MAKE BEEF TACO | -----
RegisterNetEvent('bd-tacojob:server:makeBeefTaco', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'th_raw_ground_beef', 2, false) then
      lib.notify(source, {
        id = 'taco_job',
        title = 'Taco Hut',
        description = 'You need Raw Ground Beef to make Beef Tacos.',
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
      }) return end
    exports['qb-inventory']:AddItem(src, 'th_beef_taco', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['th_beef_taco'], 'add', 2)
    lib.notify(source, {
      id = 'taco_jobs',
      title = 'Taco Hut',
      description = 'You have cooked Beef Tacos',
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
end)

----- | MAKE CHICKEN BURRITO | -----
RegisterNetEvent('bd-tacojob:server:makeChickenBurrito', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'th_tortillas', 2, false) then
      lib.notify(source, {
        id = 'taco_job',
        title = 'Taco Hut',
        description = 'You need Tortillas to make Chicken Burritos.',
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
      }) return end
    exports['qb-inventory']:AddItem(src, 'th_chicken_burrito', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['th_chicken_burrito'], 'add', 2)
    lib.notify(source, {
      id = 'taco_jobs',
      title = 'Taco Hut',
      description = 'You have cooked Chicken Burrito',
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
end)

----- | MAKE CHICKEN CAESAR WRAP | -----
RegisterNetEvent('bd-tacojob:server:makeChickenCaesarWrap', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'th_tortillas', 2, false) then
      lib.notify(source, {
        id = 'taco_job',
        title = 'Taco Hut',
        description = 'You need Tortillas to make Chicken Caesar Wraps.',
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
      }) return end
    exports['qb-inventory']:AddItem(src, 'th_chicken_caesar_wrap', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['th_chicken_caesar_wrap'], 'add', 2)
    lib.notify(source, {
      id = 'taco_jobs',
      title = 'Taco Hut',
      description = 'You have cooked Chicken Caesar Wraps',
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
end)

----- | MAKE CHICKEN TACOS | -----
RegisterNetEvent('bd-tacojob:server:makeChickenTaco', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'th_raw_chicken', 2, false) then
      lib.notify(source, {
        id = 'taco_job',
        title = 'Taco Hut',
        description = 'You need Raw Chicken to make Chicken Tacos.',
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
      }) return end
    exports['qb-inventory']:AddItem(src, 'th_chicken_taco', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['th_chicken_taco'], 'add', 2)
    lib.notify(source, {
      id = 'taco_jobs',
      title = 'Taco Hut',
      description = 'You have cooked Chicken Tacos',
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
end)

----- | MAKE GREEK VEGGIE WRAP | -----
RegisterNetEvent('bd-tacojob:server:makeVeggieWrap', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'th_tortillas', 2, false) then
      lib.notify(source, {
        id = 'taco_job',
        title = 'Taco Hut',
        description = 'You need Tortillas to make Greek Veggie Wraps.',
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
      }) return end
    exports['qb-inventory']:AddItem(src, 'th_greek_veggie_wrap', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['th_greek_veggie_wrap'], 'add', 2)
    lib.notify(source, {
      id = 'taco_jobs',
      title = 'Taco Hut',
      description = 'You have made Greek Veggie Wraps',
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
end)

----- | MAKE NACHOS | -----
RegisterNetEvent('bd-tacojob:server:makeNachos', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'th_tortilla_chips', 2, false) then
      lib.notify(source, {
        id = 'taco_job',
        title = 'Taco Hut',
        description = 'You need Tortilla Chips to make Nachos.',
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
      }) return end
    exports['qb-inventory']:AddItem(src, 'th_nachos', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['th_nachos'], 'add', 2)
    lib.notify(source, {
      id = 'taco_jobs',
      title = 'Taco Hut',
      description = 'You have cooked Nachos',
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
end)

----- | MAKE QUESADILLAS | -----
RegisterNetEvent('bd-tacojob:server:makeQuesadilla', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'th_tortillas', 4, false) then
      lib.notify(source, {
        id = 'taco_job',
        title = 'Taco Hut',
        description = 'You need Tortillas to make Quesadillas.',
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
      }) return end
    exports['qb-inventory']:AddItem(src, 'th_quesadilla', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['th_quesadilla'], 'add', 2)
    lib.notify(source, {
      id = 'taco_jobs',
      title = 'Taco Hut',
      description = 'You have cooked Quesadillas',
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
end)