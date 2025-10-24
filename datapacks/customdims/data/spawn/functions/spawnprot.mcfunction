#customdims/data/spawn/dimension/functions/spawnprot.mcfunction
#execute in spawn:spawn_overworld run gamemode adventure @p[gamemode=survival]
#execute in spawn:spawn_overworld run tp @a[y=-100,distance=..132] 0 66 0
#execute in spawn:spawn_overworld run execute as @a[y=-100,distance=..132] run function spawn:tpfromspawn

time set day
weather clear

schedule function spawn:spawnprot 1t