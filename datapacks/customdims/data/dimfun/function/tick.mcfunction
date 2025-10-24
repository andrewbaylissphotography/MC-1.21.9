# datapacks\customdims\data\dimfun\function\tick.mcfunction
execute as @a[scores={sbhome=1..}] run function dimfun:sbhome
# DEBUG-say dimfun:tick active
schedule function dimfun:tick 1t