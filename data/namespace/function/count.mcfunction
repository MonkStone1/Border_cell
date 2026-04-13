scoreboard players add @s advancement_count 1
loot give @s loot namespace:main_loot
tellraw @s "Награда за достижение"
tellraw @s ["","Барьер расширился на ",{"color":"#ffff55","text":"пару блоков!"}]
worldborder add 5 40t
execute in minecraft:the_nether run worldborder add 5 40t
execute in minecraft:the_end run worldborder add 5 40t