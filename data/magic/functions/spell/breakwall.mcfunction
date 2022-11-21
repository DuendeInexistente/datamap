#execute at @e[tag=wall,limit=1] run fill ~1 ~1 ~ ~-1 ~-1 ~ air replace ice


execute at @e[tag=wall,tag=NS,limit=1] run fill ~1 ~1 ~ ~-1 ~-1 ~ air replace ice 

execute at @e[tag=wall,tag=WE,limit=1] run fill ~ ~1 ~1 ~ ~-1 ~-1 air replace ice 

execute at @e[tag=wall,tag=NESW,limit=1] run fill ~ ~1 ~1 ~ ~-1 ~1 air replace ice
execute at @e[tag=wall,tag=NESW,limit=1] run fill ~1 ~1 ~2 ~1 ~-1 ~2 air replace ice
execute at @e[tag=wall,tag=NESW,limit=1] run fill ~-1 ~1 ~ ~-1 ~-1 ~ air replace ice 

execute at @e[tag=wall,tag=NWSE,limit=1] run fill ~ ~1 ~-1 ~ ~-1 ~-1 air replace ice
execute at @e[tag=wall,tag=NWSE,limit=1] run fill ~-1 ~1 ~ ~-1 ~-1 ~ air replace ice
execute at @e[tag=wall,tag=NWSE,limit=1] run fill ~-2 ~1 ~ ~2 ~-1 ~ air replace ice


execute at @e[tag=wall,tag=UD,limit=1] run fill ~1 ~1 ~1 ~-1 ~1 ~-1 air replace powder_snow  

scoreboard players reset @p[scores={icewall=2..}] icewall
kill @e[tag=wall,limit=30]