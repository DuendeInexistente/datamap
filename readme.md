How To Make Things Happen:

 - Dialogue:

  1. Give villager a nametag
  2. To load.mcfunction:
```MCFunction
scoreboard objectives add ClickVillager minecraft.custom:minecraft.talked_to_villager
scoreboard objectives setdisplay sidebar ClickVillager
```
Not necesary to repeat it.
To main.mcfunction:
```MCFunction
execute as @a[scores={ClickVillager=1..}] at @s if entity @e[type=villager,limit=1,sort=nearest,name=[NAME],distance=..5] run function camchat:[NAME]/init
```
