scoreboard objectives add carrot minecraft.used:minecraft.carrot_on_a_stick
function magic:spell/execfly
execute as @p[scores={flymeter=..0}] at @p[scores={flymeter=..0}] run scoreboard objectives remove flyamount
execute as @p[scores={flymeter=..0}] at @p[scores={flymeter=..0}] run scoreboard objectives remove flymeter
execute as @p[scores={flymeter=..0}] at @p[scores={flymeter=..0}] run scoreboard players reset @s flymeter












scoreboard players remove @a[scores={carrot=1..}] carrot 1
