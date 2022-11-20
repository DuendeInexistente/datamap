execute at @p run summon armor_stand ^ ^ ^1 {NoGravity:1b,CustomName:gonzo}

scoreboard objectives add x trigger
scoreboard players enable @a x
scoreboard objectives add y trigger
scoreboard players enable @a y
scoreboard objectives add z trigger
scoreboard players enable @a z

scoreboard objectives setdisplay sidebar x


execute at @p store result score @s x run data get entity @s Pos[0] 10
execute at @p store result score @s y run data get entity @s Pos[1] 10
execute at @p store result score @s z run data get entity @s Pos[2] 10

tellraw @a [{"score":{"name":"*","objective":"x"}}]
tellraw @a [{"score":{"name":"*","objective":"y"}}]
tellraw @a [{"score":{"name":"*","objective":"z"}}]


execute as @e[type=armor_stand,name=gonzo] store result score @s x run data get entity @s Pos[0] 10
execute as @e[type=armor_stand,name=gonzo] store result score @s y run data get entity @s Pos[1] 10
execute as @e[type=armor_stand,name=gonzo] store result score @s z run data get entity @s Pos[2] 10
scoreboard players operation @e[type=armor_stand,name=gonzo] x -= @p x
scoreboard players operation @e[type=armor_stand,name=gonzo] y -= @p y
scoreboard players operation @e[type=armor_stand,name=gonzo] z -= @p z
say


tellraw @a [{"score":{"name":"gonzo","objective":"x"}}]
tellraw @a [{"score":{"name":"gonzo","objective":"y"}}]
tellraw @a [{"score":{"name":"gonzo","objective":"z"}}]

tellraw @a [{"score":{"name":"*","objective":"x"}}]
tellraw @a [{"score":{"name":"*","objective":"y"}}]
tellraw @a [{"score":{"name":"*","objective":"z"}}]


execute at @p run summon arrow ^ ^ ^1 {tag:gonzoni}
execute as @e[type=arrow,tag=gonzoni] store result entity @s Motion[0] double 0.1 run scoreboard players get @e[type=armor_stand,tag=gonzo,limit=1] x
execute as @e[type=arrow,tag=gonzoni] store result entity @s Motion[1] double 0.1 run scoreboard players get @e[type=armor_stand,tag=gonzo,limit=1] y
execute as @e[type=arrow,tag=gonzoni] store result entity @s Motion[2] double 0.1 run scoreboard players get @e[type=armor_stand,tag=gonzo,limit=1] z