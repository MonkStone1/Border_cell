worldborder center ~ ~

scoreboard objectives add advancement_count dummy "Выполненые достижения"
scoreboard objectives add old_count dummy "Старое количество достижений"

scoreboard objectives add timer_seconds dummy "Таймер до сброса ачивок"
scoreboard objectives add timer_seconds_v2 dummy "Таймер до сброса"
scoreboard objectives add need_timer_seconds dummy "Сколько надо секунд до сброса ачивок"
scoreboard objectives add need_timer_seconds_v2 dummy "Сколько надо секунд"
scoreboard objectives add timer_tick dummy "timer"
scoreboard objectives add need_timer_ticks dummy "timer_need"

scoreboard objectives add buy_border_count dummy "Сколько куплено барьеров"
scoreboard objectives add buy_loot_count dummy "Сколько куплено лута"
scoreboard objectives add buy_border_count_need dummy "Сколько надо купить барьеров"
scoreboard objectives add buy_loot_count_need dummy "Сколько наодо купить лута"
scoreboard objectives add days_lived dummy "Количество прожитых дней"

scoreboard objectives add not_launched dummy "не был запущен"
scoreboard objectives add launched dummy "Запущен"
scoreboard players set @a not_launched 0
execute as @a unless score @s launched matches 1.. run function namespace:first_launched
scoreboard players set @a launched 1

scoreboard objectives setdisplay sidebar advancement_count
scoreboard objectives setdisplay list timer_seconds

scoreboard players set @a need_timer_ticks 20
scoreboard players set @a need_timer_seconds 6000
scoreboard players set @a need_timer_seconds_v2 500
scoreboard players set @a buy_border_count_need 64
scoreboard players set @a buy_loot_count_need 64