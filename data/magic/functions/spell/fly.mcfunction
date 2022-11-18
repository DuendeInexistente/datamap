#TODO: Add better version of the spell that doesn't clear the jump_boost when it ends?

scoreboard objectives add flyamount trigger
scoreboard players enable @p[scores={flymeter=1..}] flyamount
scoreboard players enable @p[scores={flymeter=1..}] flymeter
execute if entity @s[predicate=camchat:creative] at @s run scoreboard objectives setdisplay sidebar flyamount

execute if entity @p[scores={flymeter=1..},x_rotation=90..] at @s run scoreboard players set @s flyamount 1
execute if entity @p[scores={flymeter=1..},x_rotation=20..80] at @s run scoreboard players set @s flyamount 2
execute if entity @p[scores={flymeter=1..},x_rotation=-20..20] at @s run scoreboard players set @s flyamount 3
execute if entity @p[scores={flymeter=1..},x_rotation=-80..-20] at @s run scoreboard players set @s flyamount 4
execute if entity @p[scores={flymeter=1..},x_rotation=-90..-80] at @s run scoreboard players set @s flyamount 5
execute if entity @s[scores={flymeter=1..},predicate=camchat:sneaking] at @s run scoreboard players set @s flyamount 3





execute if entity @p[scores={flymeter=1..}] at @p[scores={flymeter=1..}] run effect clear @s minecraft:levitation
execute if entity @p[scores={flymeter=1..,flyamount=2}] at @p[scores={flymeter=1..,flyamount=2}] run effect give @s minecraft:slow_falling 1 1 true
execute if entity @p[scores={flymeter=1..,flyamount=4}] at @p[scores={flymeter=1..,flyamount=4}] run effect give @s minecraft:levitation 1 10 true
execute if entity @p[scores={flymeter=1..,flyamount=5}] at @p[scores={flymeter=1..,flyamount=5}] run effect give @s minecraft:levitation 1 30 true
execute if entity @p[scores={flymeter=1..,flyamount=3}] at @p[scores={flymeter=1..,flyamount=3}] run effect give @s minecraft:levitation 1 255 true





execute as @p[scores={flyamount=1}] at @s run scoreboard players remove @s flymeter 0
execute as @p[scores={flyamount=2}] at @s run scoreboard players remove @s flymeter 5
execute as @p[scores={flyamount=3}] at @s run scoreboard players remove @s flymeter 20
execute as @p[scores={flyamount=4}] at @s run scoreboard players remove @s flymeter 60
execute as @p[scores={flyamount=5}] at @s run scoreboard players remove @s flymeter 200


bossbar add util:fly "Flight"
bossbar set util:fly players @p[scores={flymeter=1..}]
bossbar set util:fly visible true
bossbar set util:fly max 40000
execute store result bossbar util:fly value run scoreboard players get @p[scores={flymeter=1..}] flymeter

