
#execute at @p[scores={icewall=3..}] run kill @e[tag=wall,limit=1]
scoreboard players reset @p[scores={icewall=5..}] icewall
scoreboard objectives add icewall trigger
scoreboard players enable @p[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{icewall:1b}}}] icewall
#scoreboard objectives enable @p[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{icewall:1b}}}] icewall
scoreboard players add @p[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{icewall:1b}}}] icewall 1
scoreboard objectives setdisplay sidebar icewall

scoreboard players set @p[scores={icewall=1},x_rotation=-90..-20] facingl 5
scoreboard players set @p[nbt={OnGround:0b},scores={icewall=1},x_rotation=20..90] facingl 6
scoreboard players set @p[nbt={OnGround:0b},scores={icewall=1},x_rotation=20..90] facingl 6
scoreboard players set @p[scores={flymeter=1..,flyamount=2..,icewall=1}] facingl 7

##Facing
execute anchored eyes at @p[scores={icewall=1,facingl=1}] run summon marker ^ ^2 ^2 {Tags:["wall","NS"]}
execute anchored eyes at @p[scores={icewall=1,facingl=2}] run summon marker ^ ^2 ^2 {Tags:["wall","WE"]}
execute anchored eyes at @p[scores={icewall=1,facingl=3}] run summon marker ^ ^2 ^2 {Tags:["wall","NESW"]}
execute anchored eyes at @p[scores={icewall=1,facingl=4}] run summon marker ^ ^2 ^2 {Tags:["wall","NWSE"]}
execute anchored eyes at @p[scores={icewall=1,facingl=5}] run summon marker ~ ~1.6 ~ {Tags:["wall","UD"]}
execute anchored eyes at @p[scores={icewall=1,facingl=6}] run summon marker ~ ~-3 ~ {Tags:["wall","UD"]}
execute anchored eyes at @p[scores={icewall=1,facingl=7}] run summon marker ^ ^-1 ^1 {Tags:["wall","UD"]}


execute at @p[scores={icewall=1}] run schedule function magic:spell/breakwall 70t

##Create wall
execute at @e[tag=wall,tag=NS,limit=1] run fill ~1 ~1 ~ ~-1 ~-1 ~ ice keep 

execute at @e[tag=wall,tag=WE,limit=1] run fill ~ ~1 ~1 ~ ~-1 ~-1 ice keep 

execute at @e[tag=wall,tag=NESW,limit=1] run fill ~ ~1 ~1 ~ ~-1 ~1 ice keep
execute at @e[tag=wall,tag=NESW,limit=1] run fill ~1 ~1 ~2 ~1 ~-1 ~2 ice keep
execute at @e[tag=wall,tag=NESW,limit=1] run fill ~-1 ~1 ~ ~-1 ~-1 ~ ice keep 

execute at @e[tag=wall,tag=NWSE,limit=1] run fill ~ ~1 ~-1 ~ ~-1 ~-1 ice keep
execute at @e[tag=wall,tag=NWSE,limit=1] run fill ~-1 ~1 ~ ~-1 ~-1 ~ ice keep
execute at @e[tag=wall,tag=NWSE,limit=1] run fill ~-2 ~1 ~ ~2 ~-1 ~ ice keep

execute at @e[tag=wall,tag=UD,limit=1] run fill ~1 ~1 ~1 ~-1 ~1 ~-1 powder_snow keep 


execute positioned as @p[scores={icewall=1}] run 
playsound minecraft:block.amethyst_block.place master @p[scores={icewall=1}]
playsound minecraft:block.amethyst_block.place master @p



scoreboard players add @p[scores={icewall=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{icewall:1b}}}] icewall 1




