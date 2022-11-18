scoreboard objectives add flymeter trigger
execute as @a[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{flightspell:1b}}}] at @s run scoreboard players add @s flymeter 20000





execute as @p[scores={flymeter=1..}] at @s run function magic:spell/fly
#Jumpboost 255 adds fall immunity but doesn't boost jump
execute as @p[scores={flymeter=1..}] at @p[scores={flymeter=1..}] run effect give @s minecraft:jump_boost 255 255 true
execute as @p[scores={flymeter=..0}] at @p[scores={flymeter=..0}] run effect clear @s minecraft:jump_boost
execute as @p[scores={flymeter=..0}] at @p[scores={flymeter=..0}] run bossbar set util:fly visible false
execute as @p[scores={flymeter=..0}] at @p[scores={flymeter=..0}] run scoreboard objectives remove flyamount
execute as @p[scores={flymeter=..0}] at @p[scores={flymeter=..0}] run scoreboard objectives remove flymeter
execute as @p[scores={flymeter=..0}] at @p[scores={flymeter=..0}] run scoreboard players reset @s flymeter
