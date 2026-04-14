execute as @s[level=..0] run tellraw @s {"text":"Мало опыта!","color":"red"}
execute as @s[level=3..] run loot give @s loot namespace:second_loot
execute as @s[level=3..] run advancement grant @s only namespace:start/buy_loot
execute as @s[level=3..] run scoreboard players add @s buy_loot_count 1
execute as @s[level=3..] run xp add @s -3 levels
execute if score @s buy_loot_count >= @s buy_loot_count_need run advancement grant @s only namespace:start/cool_buy_loot