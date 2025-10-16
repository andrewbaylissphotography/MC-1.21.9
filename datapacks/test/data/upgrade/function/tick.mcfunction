# upgrade:tick.mcfunction
scoreboard players enable @a[scores={upgrade=0}] upgrade

execute as @a[scores={upgrade=1}] run function upgrade:sword_uncommon
execute as @a[scores={upgrade=1}] run function upgrade:sword_rare
execute as @a[scores={upgrade=1}] run function upgrade:sword_epic

scoreboard players set @a[scores={upgrade=1}] upgrade 0

schedule function upgrade:tick 1t