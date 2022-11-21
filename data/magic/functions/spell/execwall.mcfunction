
scoreboard players reset @p[scores={icewall=5..}] icewall
scoreboard objectives add icewall trigger
scoreboard players enable @p[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{icewall:1b}}}] icewall
scoreboard players add @p[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{icewall:1b}}}] icewall 1
scoreboard objectives setdisplay sidebar icewall

execute align xyz anchored eyes at @p[scores={icewall=1}] run summon marker ^1 ^0.5 ^3 {Tags:["wall","CR"]}
execute align xyz anchored eyes at @p[scores={icewall=1}] run summon marker ^-1 ^0.5 ^3 {Tags:["wall","CR"]}
execute align xyz anchored eyes at @p[scores={icewall=1}] run summon marker ^ ^0.5 ^3 {Tags:["wall","CR"]}

execute align xyz anchored eyes at @p[scores={icewall=1}] run summon marker ^1 ^1.5 ^3 {Tags:["wall","CR"]}
execute align xyz anchored eyes at @p[scores={icewall=1}] run summon marker ^-1 ^1.5 ^3 {Tags:["wall","CR"]}
execute align xyz anchored eyes at @p[scores={icewall=1}] run summon marker ^ ^1.5 ^3 {Tags:["wall","CR"]}

execute align xyz anchored eyes at @p[scores={icewall=1}] run summon marker ^1 ^2.5 ^3 {Tags:["wall","CR"]}
execute align xyz anchored eyes at @p[scores={icewall=1}] run summon marker ^-1 ^2.5 ^3 {Tags:["wall","CR"]}
execute align xyz anchored eyes at @p[scores={icewall=1}] run summon marker ^ ^2.5 ^3 {Tags:["wall","CR"]}

execute at @p[scores={icewall=1}] run schedule function magic:spell/breakwall 10t




execute at @p[scores={icewall=1}] positioned ~ ~3 ~ run tag @e[tag=wall,tag=CR,limit=9,distance=..2] add CRPS
execute anchored feet at @p[scores={icewall=1}] positioned ~ ~-3 ~ run tag @e[tag=wall,tag=CR,limit=9,distance=..4] add CRPS



execute at @e[tag=wall,tag=CRPS,limit=9] run fill ~ ~ ~ ~ ~ ~ powder_snow keep
execute at @e[tag=wall,tag=CR,limit=9] run fill ~ ~ ~ ~ ~ ~ ice keep

execute positioned as @p[scores={icewall=1}] run 
playsound minecraft:block.amethyst_block.place master @p[scores={icewall=1}]
playsound minecraft:block.amethyst_block.place master @p



scoreboard players add @p[scores={icewall=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{icewall:1b}}}] icewall 1




