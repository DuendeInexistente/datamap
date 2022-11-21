execute at @e[tag=wall,limit=1] run fill ~1 ~1 ~ ~-1 ~-1 ~ air replace ice
scoreboard players reset @p[scores={icewall=2..}] icewall
kill @e[tag=wall,limit=40]