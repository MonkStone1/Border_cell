#execute as @a if score @s advancement_count > @s old_count run function namespace:barrier_upper

# Синхронизируем старый счет с новым
#execute as @a run scoreboard players operation @s old_count = @s advancement_count
scoreboard players add @a timer_tick 1
execute as @a if score @s timer_tick >= @s need_timer_ticks run function namespace:add_second
execute as @a if score @s timer_seconds >= @s need_timer_seconds run function namespace:reset_advancements
execute as @a if score @s timer_seconds_v2 = @s need_timer_seconds_v2 run function namespace:random_loot_from_skies
execute as @a at @s if entity @e[tag=portal_marker, distance=..10] run advancement grant @s only namespace:middle/end_structure
execute as @a run execute store result score @s days_lived run time query day

execute as @a[scores={days_lived=1..}] run advancement grant @s only namespace:time/survivor_1
execute as @a[scores={days_lived=5..}] run advancement grant @s only namespace:time/survivor_5
execute as @a[scores={days_lived=10..}] run advancement grant @s only namespace:time/survivor_10
execute as @a[scores={days_lived=50..}] run advancement grant @s only namespace:time/survivor_50
execute as @a[scores={days_lived=100..}] run advancement grant @s only namespace:time/survivor_100
execute as @a[scores={days_lived=250..}] run advancement grant @s only namespace:time/survivor_250
execute as @a[scores={days_lived=500..}] run advancement grant @s only namespace:time/survivor_500
execute as @a[scores={days_lived=1000..}] run advancement grant @s only namespace:time/survivor_1000