execute as @a[scores={ClickVillager=1..}] at @s if entity @e[type=villager,limit=1,sort=nearest,name=Gatekeeper,distance=..5] run function camchat:gatekeeper/init
execute as @a[scores={ClickVillager=1..}] at @s if entity @e[type=villager,limit=1,sort=nearest,name=enpotater,distance=..5] run function camchat:potater/init
scoreboard players reset @a ClickVillager
