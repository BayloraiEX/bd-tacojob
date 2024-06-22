# bd-tacojob
# QBCORE Taco Hut Job Using ox_lib

 Join the Discord for support or questions!
 DISCORD https://discord.gg/hya9t8XfH8
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Simple and eazy setup!
 Drag bd-tacojob into your resource folder and ensure bd-tacojob

LOAD AFTER QB-TARGET & INVENTORY
EXAMPLE:
- ensure [qb]
- ensure bd-tacojob

Copy and paste this into your qb-core --> shared --> jobs.lua
```
taco = {
		label = 'Taco Hut',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Janitor', payment = 30 },
			['1'] = { name = 'Employee', payment = 40 },
			['2'] = { name = 'Sr-Employee', payment = 50 },
			['3'] = { name = 'Ast-Manager', payment = 60 },
			['4'] = { name = 'Manager', isboss = true, payment = 75 },
			['5'] = { name = 'CEO', isboss = true, payment = 90 },
		},
	},
```
Copy and paste this into your qb-core --> shared --> items.lua
```
-- TacoHut --
    th_beef_burrito                 = { name = 'th_beef_burrito',          label = 'Beef Burrito',         weight = 200,       type = 'item',      image = 'th_beef_burrito.png',      unique = false,  useable = true,  shouldClose = true,   description = 'Stuffed Full Of Beef'},
    th_beef_enchilada               = { name = 'th_beef_enchilada',        label = 'Beef Enchilada',       weight = 200,       type = 'item',      image = 'th_beef_enchilada.png',    unique = false,  useable = true,  shouldClose = true,   description = 'Stuffed Full Of Beef'},
    th_beef_taco                    = { name = 'th_beef_taco',             label = 'Beef Taco',            weight = 200,       type = 'item',      image = 'th_beef_taco.png',         unique = false,  useable = true,  shouldClose = true,   description = 'Classic Beef Taco'},
    th_chicken_burrito              = { name = 'th_chicken_burrito',       label = 'Chicken Burrito',      weight = 200,       type = 'item',      image = 'th_chicken_burrito.png',   unique = false,  useable = true,  shouldClose = true,   description = 'Stuffed Full Of Chicken'},
    th_chicken_caesar_wrap          = { name = 'th_chicken_caesar_wrap',   label = 'Chicken Caesar Wrap',  weight = 200,       type = 'item',      image = 'th_chicken_caesar_wrap.png',unique = false,  useable = true,  shouldClose = true,   description = 'Salad In A Wrap!'},
    th_chicken_taco                 = { name = 'th_chicken_taco',          label = 'Chicken Taco',         weight = 200,       type = 'item',      image = 'th_chicken_taco.png',      unique = false,  useable = true,  shouldClose = true,   description = 'Classic Chicken Taco'},
    th_greek_veggie_wrap            = { name = 'th_greek_veggie_wrap',     label = 'Greek Veggie Wrap',    weight = 200,       type = 'item',      image = 'th_greek_veggie_wrap.png', unique = false,  useable = true,  shouldClose = true,   description = 'Vegetables In A Wrap...Greek Style'},
    th_nachos                       = { name = 'th_nachos',                label = 'Nachos',               weight = 200,       type = 'item',      image = 'th_nachos.png',            unique = false,  useable = true,  shouldClose = true,   description = 'Fully Loaded Nacho Plate!'},
    th_quesadilla                   = { name = 'th_quesadilla',            label = 'Quesadilla',           weight = 200,       type = 'item',      image = 'th_quesadilla.png',        unique = false,  useable = true,  shouldClose = true,   description = 'Classic Cheese Quesadilla'},
    -- Drinks --
    th_ecola                        = { name = 'th_ecola',                 label = 'Ecola',                weight = 100,       type = 'item',      image = 'th_ecola.png',             unique = false,  useable = true,  shouldClose = true,   description = 'Ice Cold Cola'},
    th_sprunk                       = { name = 'th_sprunk',                label = 'Sprunk',               weight = 100,       type = 'item',      image = 'th_sprunk.png',            unique = false,  useable = true,  shouldClose = true,   description = 'Ice Cold Sprunk'},
    th_orangotang                   = { name = 'th_orangotang',            label = 'Orang-O-Tang',         weight = 100,       type = 'item',      image = 'th_orangotang.png',        unique = false,  useable = true,  shouldClose = true,   description = 'Ice Cold Orang-O-Tang'},
    -- Ingredients --
    th_carbonated_water     	     = { name = 'th_carbonated_water', 	 label = 'Carbonated Water', 	 weight = 100, 		 type = 'item', 	 image = 'th_carbonated_water.png',  unique = false,  useable = false, shouldClose = true,  description = 'Ingredient'},
    th_oranges     	             = { name = 'th_oranges', 	             label = 'Oranges', 	         weight = 100, 		 type = 'item', 	 image = 'th_oranges.png',           unique = false,  useable = false, shouldClose = true,  description = 'Ingredient'},
    th_raw_chicken     	         = { name = 'th_raw_chicken', 	         label = 'Raw Chicken', 	     weight = 100, 		 type = 'item', 	 image = 'th_raw_chicken.png',       unique = false,  useable = false, shouldClose = true,  description = 'Ingredient'},
    th_raw_ground_beef    	         = { name = 'th_raw_ground_beef', 	     label = 'Raw Ground Beef',      weight = 100, 		 type = 'item', 	 image = 'th_raw_ground_beef.png',   unique = false,  useable = false, shouldClose = true,  description = 'Ingredient'},
    th_tortilla_chips     	         = { name = 'th_tortilla_chips', 	     label = 'Tortilla Chips', 	     weight = 100, 		 type = 'item', 	 image = 'th_tortilla_chips.png',    unique = false,  useable = false, shouldClose = true,  description = 'Ingredient'},
    th_tortillas    	             = { name = 'th_tortillas', 	         label = 'Tortillas', 	         weight = 100, 		 type = 'item', 	 image = 'th_tortillas.png',         unique = false,  useable = false, shouldClose = true,  description = 'Ingredient'},
    th_cheddar_cheese   	             = { name = 'th_cheddar_cheese', 	         label = 'Cheddar Cheese', 	         weight = 100, 		 type = 'item', 	 image = 'th_cheddar_cheese.png',         unique = false,  useable = false, shouldClose = true,  description = 'Ingredient'},
```
Copy and Paste this into your qb-smallresources --> config.lua
```
Config.Consumables = {
    eat = {
        --TACO HUT ITEMS --
        ['th_beef_burrito'] = math.random(40, 60),
        ['th_beef_enchilada'] = math.random(65, 80),
        ['th_beef_taco'] = math.random(35, 55),
        ['th_chicken_burrito'] = math.random(40, 60),
        ['th_chicken_caaesar_wrap'] = math.random(40, 60),
        ['th_chicken_taco'] = math.random(35, 55),
        ['th_greek_veggie_wrap'] = math.random(35, 55),
        ['th_nachos'] = math.random(30, 50),
        ['th_quesadilla'] = math.random(30, 50),
    },
    drink = {
        -- TACO HUT ITEMS --
        ['th_ecola'] = math.random(45, 65),
        ['th_sprunk'] = math.random(45, 65),
        ['th_orangotang'] = math.random(45, 65),
    },
}
```

Take the images out of the images file and put them into your qb-inventory --> html --> images
And you are all set :D

MLO - https://www.gta5-mods.com/maps/taco-restaurant-mlo-add-on-fivem-pablitomamutopaputo
