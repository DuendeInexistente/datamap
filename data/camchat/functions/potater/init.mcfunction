execute as @a[scores={potatombs=2..}] at @s if entity @e[type=villager,limit=1,sort=nearest,name=enpotater,distance=..5] run function camchat:potater/thank



execute as @a[scores={potatombs=0}] at @s if entity @e[type=villager,limit=1,sort=nearest,name=enpotater,distance=..5] run function camchat:potater/attack