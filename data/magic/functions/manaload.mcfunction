#effect give @a minecraft:saturation 1 1
execute if entity @p[nbt={foodLevel:0}] run function magic:feed
execute if entity @p[nbt={foodLevel:1}] run function magic:feed
execute if entity @p[nbt={foodLevel:2}] run function magic:feed
execute if entity @p[nbt={foodLevel:3}] run function magic:feed
execute if entity @p[nbt={foodLevel:4}] run function magic:feed
execute if entity @p[nbt={foodLevel:5}] run function magic:feed
execute if entity @p[nbt={foodLevel:6}] run function magic:feed

schedule function magic:manaload 50t