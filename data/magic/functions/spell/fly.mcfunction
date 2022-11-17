scoreboard objectives add flyamount trigger
scoreboard players enable @s flyamount
scoreboard players enable @s flymeter

execute if entity @s[predicate=camchat:creative] at @s run scoreboard objectives setdisplay sidebar flyamount


execute if entity @p[x_rotation=-90..90] at @s run effect clear @s minecraft:levitation
#execute if entity @p[x_rotation=-90..90] at @s run effect clear @s minecraft:slow_falling


execute if entity @p[x_rotation=-20..20] at @s run effect give @s minecraft:levitation 1 255
execute if entity @p[x_rotation=-80..-20] at @s run effect give @s minecraft:levitation 1 10
execute if entity @p[x_rotation=-90..-80] at @s run effect give @s minecraft:levitation 1 30

#execute if entity @s[predicate=camchat:sneaking] at @s run effect clear @s minecraft:slow_falling

execute if entity @p[x_rotation=-90..85] at @s run effect give @s minecraft:slow_falling 1 1

execute if entity @s[predicate=camchat:sneaking] at @s run effect give @s minecraft:levitation 1 255


execute if entity @p[x_rotation=90..] at @s run scoreboard players set @s flyamount 1
execute if entity @p[x_rotation=20..80] at @s run scoreboard players set @s flyamount 2
execute if entity @p[x_rotation=-20..20] at @s run scoreboard players set @s flyamount 3
execute if entity @p[x_rotation=-80..-20] at @s run scoreboard players set @s flyamount 4
execute if entity @p[x_rotation=-90..-80] at @s run scoreboard players set @s flyamount 5
execute if entity @s[predicate=camchat:sneaking] at @s run scoreboard players set @s flyamount 3


execute as @a[scores={flyamount=1}] at @s run scoreboard players remove @s flymeter 0
execute as @a[scores={flyamount=2}] at @s run scoreboard players remove @s flymeter 5
execute as @a[scores={flyamount=3}] at @s run scoreboard players remove @s flymeter 20
execute as @a[scores={flyamount=4}] at @s run scoreboard players remove @s flymeter 60
execute as @a[scores={flyamount=5}] at @s run scoreboard players remove @s flymeter 200


bossbar add util:fly "Flight"
bossbar set util:fly players @p
bossbar set util:fly visible true
bossbar set util:fly max 20000
execute store result bossbar util:fly value run scoreboard players get @p flymeter

