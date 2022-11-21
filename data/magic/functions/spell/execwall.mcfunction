
#execute at @p[scores={icewall=3..}] run kill @e[tag=wall,limit=1]
scoreboard players reset @p[scores={icewall=5..}] icewall
scoreboard objectives add icewall trigger
scoreboard players enable @p[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{icewall:1b}}}] icewall
#scoreboard objectives enable @p[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{icewall:1b}}}] icewall
scoreboard players add @p[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{icewall:1b}}}] icewall 1
scoreboard objectives setdisplay sidebar icewall


execute anchored eyes at @p[scores={icewall=1}] run summon marker ^ ^2 ^2 {Tags:["wall"]}
#execute anchored eyes at @p[scores={icewall=1}] run say icewall





execute at @p[scores={icewall=1}] run schedule function magic:spell/breakwall 1s
execute at @e[tag=wall,limit=1] run fill ^1 ^1 ^ ^-1 ^-1 ^ ice keep 
execute positioned as @p[scores={icewall=1}] run playsound minecraft:block.amethyst_block.place master @s



scoreboard players add @p[scores={icewall=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{icewall:1b}}}] icewall 1




