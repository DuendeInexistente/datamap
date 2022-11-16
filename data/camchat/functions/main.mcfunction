execute as @a[scores={ClickVillager=1..}] at @s if entity @e[type=villager,limit=1,sort=nearest,name=Gatekeeper,distance=..5] run function camchat:gatekeeper/init
execute as @a[scores={ClickVillager=1..}] at @s if entity @e[type=villager,limit=1,sort=nearest,name=enpotater,distance=..5] run function camchat:potater/init







scoreboard players reset @a ClickVillager

scoreboard players enable @a potatombs
execute as @e[type=item,nbt={Item:{tag:{mob_death_marker:1b}}}] as @p run trigger potatombs
kill @e[type=item,nbt={Item:{tag:{mob_death_marker:1b}}}]




