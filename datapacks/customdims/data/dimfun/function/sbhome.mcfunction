# datapacks\customdims\data\dimfun\function\sbhome.mcfunction

# Only run for players who actually triggered the sbhome trigger
execute as @a[scores={sbhome=1}] at @s run function dimfun:tp_player

# Reset trigger after teleport
scoreboard players set @a[scores={sbhome=1}] sbhome 0
scoreboard players enable @a[scores={sbhome=0}] sbhome