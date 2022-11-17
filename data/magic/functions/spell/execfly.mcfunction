scoreboard objectives add flymeter trigger
execute as @a[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{flightspell:1b}}}] at @s run scoreboard players add @s flymeter 20000





execute as @a[scores={flymeter=1..}] at @s run function magic:spell/fly
execute as @a[scores={flymeter=..0}] at @s run bossbar set util:fly visible false
execute as @a[scores={flymeter=..0}] at @s run scoreboard objectives remove flyamount
execute as @a[scores={flymeter=..0}] at @s run scoreboard objectives remove flymeter
execute as @a[scores={flymeter=..0}] at @s run scoreboard players reset @s flymeter
