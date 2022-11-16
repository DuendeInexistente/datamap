execute if entity @p[x_rotation=-90..90] at @s run effect clear @s minecraft:levitation
execute if entity @p[x_rotation=-90..90] at @s run effect clear @s minecraft:slow_falling



execute if entity @p[x_rotation=-20..20] at @s run effect give @s minecraft:levitation 1 255
execute if entity @p[x_rotation=-80..-20] at @s run effect give @s minecraft:levitation 1 10
execute if entity @p[x_rotation=-90..-80] at @s run effect give @s minecraft:levitation 1 30
execute if entity @p[x_rotation=20..80] at @s run effect give @s minecraft:slow_falling 1 1
