execute as @s[level=..0] run tellraw @s {"text":"Мало опыта!","color":"red"}
execute as @s[level=1..] run worldborder add 2 40
execute as @s[level=1..] run advancement grant @s only namespace:start/buy_border
execute as @s[level=1..] run scoreboard players add @s buy_border_count 1
execute as @s[level=1..] run xp add @s -1 levels
execute if score @s buy_border_count >= @s buy_border_count_need run advancement grant @s only namespace:start/cool_buy_border