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
```mcfunction
execute as @a[scores={ClickVillager=1..}] at @s if entity @e[type=villager,limit=1,sort=nearest,name=[NAME],distance=..5] run function camchat:[NAME]/init
```
Replacing the name as appropriate. Create data/camchat/functions/[NAME]/init.mcfunction to start their interaction.

TODO: Use biome-specific scripts to reduce the amount of ifs; Only check if the player is talking with an NPC in the current biome

 - Biome predicates:

``/execute if predicate camchat:biome/[dimension]/[biome] as @a at @a run w @a asd``


 - Check for mob kills:

Create loottable in camchat/loot_tables/[LOOTTABLE] with

```json
{
  "type": "minecraft:entity",
  "pools": [
    {
      "rolls": 1,
      "entries": [
        {
          "type": "minecraft:item",
          "name": "structure_block",
          "functions": [
            {
              "function": "minecraft:set_nbt",
              "tag": "{mob_death_marker:1b,dead_mob:\"zombie\"}"
            }
          ]
        }
      ]
    }
  ]
}
```

Add to main.mcfunction:

```mcfunction
execute as @e[type=item,nbt={Item:{tag:{mob_death_marker:1b}}}] run tellraw @a ["a ",{"nbt":"Item.tag.dead_mob","entity":"@s"}," has died."]
kill @e[type=item,nbt={Item:{tag:{mob_death_marker:1b}}}]
```

TODO: Also split in biomes


fill -144 -54 375 -136 -60 375 minecraft:air replace minecraft:oak_fence
