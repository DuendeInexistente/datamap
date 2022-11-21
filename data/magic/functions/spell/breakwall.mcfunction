execute at @e[tag=wall,tag=CR,limit=9] run fill ~ ~ ~ ~ ~ ~ air replace ice
execute at @e[tag=wall,tag=CR,limit=9] run fill ~ ~ ~ ~ ~ ~ air replace powder_snow

execute at @p[scores={icewall=1..}] run playsound minecraft:block.sand.place master @p ~ ~ ~
scoreboard players reset @p[scores={icewall=2..}] icewall
kill @e[tag=wall,limit=30]