tellraw @s ["","Добро пожалывать в выживание с барьером! Чтобы расширить виполняйте достижение, а каждые 5 дней они будут обнулятся.","\nУдачи!\n",{"obfuscated":true,"text":"Помогите срочно, я нахожусь в "}]
schedule function namespace:spawn_structures 20t
worldborder set 3 40t
execute in minecraft:the_nether run worldborder set 3 40t
execute in minecraft:the_end run worldborder set 3 40t
teleport @s ~ ~ ~
scoreboard players set @a advancement_count 0