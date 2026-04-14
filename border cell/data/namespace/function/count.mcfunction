scoreboard players add @s advancement_count 1
loot give @s loot namespace:main_loot
tellraw @s {translate: "namespace.message.reward"}
tellraw @a {translate: "namespace.message.count", "with": [{"translate": "namespace.message.count.plus", "color": "#ffff55"}]}
worldborder add 5 40t
execute in minecraft:the_nether run worldborder add 5 40t
execute in minecraft:the_end run worldborder add 5 40t