#TODO: Add better version of the spell that doesn't clear the jump_boost when it ends?

scoreboard objectives add flyamount trigger
scoreboard players enable @p[scores={flymeter=1..}] flyamount
scoreboard players enable @p[scores={flymeter=1..}] flymeter
execute if entity @s[predicate=camchat:creative] at @s run scoreboard objectives setdisplay sidebar flymeter
scoreboard objectives setdisplay belowName flymeter
scoreboard objectives setdisplay sidebar flyamount

#Basic angles
scoreboard players set @p[scores={flymeter=1..},x_rotation=90..] flyamount 1
scoreboard players set @p[scores={flymeter=1..},x_rotation=20..80] flyamount 2
scoreboard players set @p[scores={flymeter=1..},x_rotation=-20..20] flyamount 3
scoreboard players set @p[scores={flymeter=1..},x_rotation=-80..-20] flyamount 4
scoreboard players set @p[scores={flymeter=1..},x_rotation=-90..-80] flyamount 5
#sneaking
scoreboard players set @s[scores={flymeter=1..},predicate=camchat:sneaking] flyamount 3


##Solid block check
execute unless block ~ ~ ~ #taglib:walk_through run scoreboard players set @p[scores={flymeter=1..,flyamount=..4},nbt={OnGround:1b}] flyamount 1
execute if block ~ ~-2 ~ #taglib:non_full run scoreboard players set @p[scores={flymeter=1..,flyamount=..4}] flyamount 1
execute if block ~ ~-1 ~ #taglib:non_full run scoreboard players set @p[scores={flymeter=1..,flyamount=..4}] flyamount 1
execute unless block ~ ~-0.5 ~ #taglib:air run scoreboard players set @p[scores={flymeter=1..,flyamount=..4}] flyamount 1
##Player can fly up by jumping and looking up. Is this intuitive?
execute unless block ~ ~-2 ~ #taglib:air run scoreboard players set @p[scores={flymeter=1..,flyamount=..3}] flyamount 1


effect clear @p[scores={flymeter=1..}] minecraft:levitation
effect clear @p[scores={flymeter=1..}] minecraft:slow_falling
effect give @p[scores={flymeter=1..,flyamount=2}] minecraft:slow_falling 1 1 true
effect give @p[scores={flymeter=1..,flyamount=4}] minecraft:levitation 1 10 true
effect give @p[scores={flymeter=1..,flyamount=5}] minecraft:levitation 1 30 true
effect give @p[scores={flymeter=1..,flyamount=3}] minecraft:levitation 1 255 true
effect give @p[scores={flymeter=1..,flyamount=3},predicate=camchat:sneaking] minecraft:speed 1 6 true





scoreboard players remove @p[scores={flyamount=1}] flymeter 0
scoreboard players remove @p[scores={flyamount=2}] flymeter 5
scoreboard players remove @p[scores={flyamount=3}] flymeter 20
scoreboard players remove @p[scores={flyamount=4}] flymeter 60
scoreboard players remove @p[scores={flyamount=5}] flymeter 200


bossbar add util:fly "Flight"
bossbar set util:fly players @p[scores={flymeter=1..}]
bossbar set util:fly visible true
bossbar set util:fly max 40000
execute store result bossbar util:fly value run scoreboard players get @p[scores={flymeter=1..}] flymeter

