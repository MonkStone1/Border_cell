tellraw @s {translate:"namespace.message.welcome"}
schedule function namespace:spawn_structures 20t
worldborder set 3 40t
execute in minecraft:the_nether run worldborder set 3 40t
execute in minecraft:the_end run worldborder set 3 40t
teleport @s ~ ~ ~
scoreboard players set @a advancement_count 0