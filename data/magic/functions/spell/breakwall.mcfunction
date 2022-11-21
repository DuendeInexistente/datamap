execute at @e[tag=wall,tag=CR,limit=9] run fill ~ ~ ~ ~ ~ ~ air replace ice
execute at @e[tag=wall,tag=CR,limit=9] run fill ~ ~ ~ ~ ~ ~ air replace powder_snow

scoreboard players reset @p[scores={icewall=2..}] icewall
kill @e[tag=wall,limit=30]