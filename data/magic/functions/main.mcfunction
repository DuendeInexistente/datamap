scoreboard objectives add flymeter trigger
scoreboard objectives add example minecraft.used:minecraft.carrot_on_a_stick

execute as @a[scores={example=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{exampletag:1b}}}] at @s run scoreboard players add @s flymeter 20000

scoreboard players remove @a[scores={example=1..}] example 1



execute as @a[scores={flymeter=1..}] at @s run function magic:spell/fly

execute as @a[scores={flymeter=..0}] at @s run scoreboard players reset @s flymeter