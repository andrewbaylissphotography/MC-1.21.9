# datapacks\customdims\data\dimfun\function\load.mcfunction
scoreboard objectives add sbhome trigger SkyblockHome

scoreboard players enable @a[scores={sbhome=0}] sbhome

tellraw @a {"text":"[SkyblockHome]","color":"green"}

schedule function dimfun:tick 1t