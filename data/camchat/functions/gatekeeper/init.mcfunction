tellraw @a[distance=0..10] ["",{"text":"Hi!"}]

execute as @a[scores={potatombs=2..}] at @s if entity @e[type=villager,limit=1,sort=nearest,name=Gatekeeper,distance=..5] run function camchat:gatekeeper/potatsaved

execute as @a[scores={potatombs=0}] at @s if entity @e[type=villager,limit=1,sort=nearest,name=Gatekeeper,distance=..5] run function camchat:gatekeeper/first




