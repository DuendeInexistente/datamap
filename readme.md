How To Make Things Happen:

 - Dialogue:

  1. Give villager a nametag
  2. To load.mcfunction (Once):
```MCFunction
scoreboard objectives add ClickVillager minecraft.custom:minecraft.talked_to_villager
```
```MCFunction
scoreboard objectives setdisplay sidebar ClickVillager
```
To main.mcfunction (Per villager):
```MCFunction
execute as @a[scores={ClickVillager=1..}] at @s if entity @e[type=villager,limit=1,sort=nearest,name=[NAME],distance=..5] run function camchat:[NAME]/init
```
Replacing the name as appropriate. Create data/camchat/functions/[NAME]/init.mcfunction to start their interaction.

TODO: Use biome-specific scripts to reduce the amount of ifs; Only check if the player is talking with an NPC in the current biome

 - Biome predicates:

``/execute if predicate camchat:biome/[dimension]/[biome] as @a at @a run w @a asd``
