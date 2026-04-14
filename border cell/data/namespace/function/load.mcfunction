worldborder center ~ ~

scoreboard objectives add advancement_count dummy {translate:"namespace.scoreboard.advancements"}
scoreboard objectives add old_count dummy {translate:"namespace.scoreboard.old_advancements"}

scoreboard objectives add timer_seconds dummy {translate:"namespace.scoreboard.need_timer_seconds"}
scoreboard objectives add timer_seconds_v2 dummy {translate:"namespace.scoreboard.need_timer_secondsv2"}
scoreboard objectives add need_timer_seconds dummy {translate:"namespace.scoreboard.need_timer_seconds"}
scoreboard objectives add need_timer_seconds_v2 dummy {translate:"namespace.scoreboard.need_timer_secondsv2"}
scoreboard objectives add timer_tick dummy "timer"
scoreboard objectives add need_timer_ticks dummy "timer_need"

scoreboard objectives add buy_border_count dummy {translate:"namespace.scoreboard.buy_border_count"}
scoreboard objectives add buy_loot_count dummy {translate:"namespace.scoreboard.buy_loot_count"}
scoreboard objectives add buy_border_count_need dummy {translate:"namespace.scoreboard.need_buy_border_count"}
scoreboard objectives add buy_loot_count_need dummy {translate:"namespace.scoreboard.need_buy_loot_count"}
scoreboard objectives add days_lived dummy {translate:"namespace.scoreboard.days_lived"}

scoreboard objectives add not_launched dummy {translate:"namespace.scoreboard.not_launched"}
scoreboard objectives add launched dummy {translate:"namespace.scoreboard.launched"}
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