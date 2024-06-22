local QBCore = exports['qb-core']:GetCoreObject()
----- | CREATING COOK MENU LOCATION | ----- 
exports['qb-target']:AddBoxZone("TacoJobCookMenu", vector3(10.9, -1598.95, 29.38), 0.9, 0.9, {
	name = "TacoJobCookMenu",
	heading = 347.27,
	debugPoly = false,
	minZ = 29.38 - 2,
	maxZ = 29.38 + 2,
}, {
	options = {
		{
            type = "client",
            event = "bd-tacojob:client:OpenCookMenu",
			icon = "fa-solid fa-fire-burner",
			label = "Cook Menu",
			job = "taco",
		},
	},
	distance = 2.5
})

----- | CREATING MENU | -----
lib.registerContext({
	id = 'taco_cook_menu',
	title = 'Cook Menu',
	options = {
	  {
		title = '2x Beef Burritos',
		description = 'You need 2x Tortillas',
		icon = 'utensils',
		iconColor = 'Salmon',
		serverEvent = 'bd-tacojob:server:makeBeefBurrito'
	  },
	  {
		title = '2x Beef Enchilada',
		description = 'You need 2x Tortillas',
		icon = 'utensils',
		iconColor = 'Salmon',
		serverEvent = 'bd-tacojob:server:makeBeefEnchilada'
	  },
	  {
		title = '2x Beef Taco',
		description = 'You need 2x Raw Ground Beef',
		icon = 'utensils',
		iconColor = 'Salmon',
		serverEvent = 'bd-tacojob:server:makeBeefTaco'
	  },
	  {
		title = '2x Chicken Burrito',
		description = 'You need 2x Tortillas',
		icon = 'utensils',
		iconColor = 'Salmon',
		serverEvent = 'bd-tacojob:server:makeChickenBurrito'
	  },
	  {
		title = '2x Chicken Caesar Wrap',
		description = 'You need 2x Tortillas',
		icon = 'utensils',
		iconColor = 'Salmon',
		serverEvent = 'bd-tacojob:server:makeChickenCaesarWrap'
	  },
	  {
		title = '2x Chicken Taco',
		description = 'You need 2x Raw Chicken',
		icon = 'utensils',
		iconColor = 'Salmon',
		serverEvent = 'bd-tacojob:server:makeChickenTaco'
	  },
	  {
		title = '2x Greek Veggie Wrap',
		description = 'You need 2x Tortillas',
		icon = 'utensils',
		iconColor = 'Salmon',
		serverEvent = 'bd-tacojob:server:makeVeggieWrap'
	  },
	  {
		title = '2x Nachos',
		description = 'You need 2x Tortilla Chips',
		icon = 'utensils',
		iconColor = 'Salmon',
		serverEvent = 'bd-tacojob:server:makeNachos'
	  },
	  {
		title = '2x Quesadilla',
		description = 'You need 4x Tortillas',
		icon = 'utensils',
		iconColor = 'Salmon',
		serverEvent = 'bd-tacojob:server:makeQuesadilla'
	  },
	}
  })
----- | REGISTERING MENU TO 'OpenCookMenu' | -----
RegisterNetEvent('bd-tacojob:client:OpenCookMenu', function()
    lib.showContext('taco_cook_menu')
end)