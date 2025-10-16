# datapacks\test\data\altar\function\reset.mcfunction
# called by:
#   datapacks\test\data\altar\function\check_completion.mcfunction

# Called when the altar reaches full contribution (1000 points)

# All players
title @a title {"text":"The Altar is Awakened!","color":"gold","bold":true}
title @a subtitle {"text":"Your offerings have been accepted.","color":"aqua"}
#playsound minecraft:entity.evoker.prepare_wololo ambient @a
execute as @a at @s run playsound minecraft:entity.evoker.prepare_wololo ambient @s
effect give @a minecraft:regeneration 10 1

#Local (contributing player) rewards
# A. XP reward
#experience add @a[distance=..12] 30 levels
execute as @a[x=-65,y=59,z=21,distance=..12] run experience add @s 30 levels
# A. Random roll + reward
#execute as @a[distance=..12] run execute store result score @s AltarRewardRoll run random value 1..5
#execute as @a[distance=..12] run function altar:give_reward
execute as @a[x=-65,y=59,z=21,distance=..12] run execute store result score @s AltarRewardRoll run random value 1..5
execute as @a[x=-65,y=59,z=21,distance=..12] run function altar:give_reward

# 5. Reset altar state
scoreboard players set AltarTotal Contribution 0
bossbar set altar:contribution value 0
# 6. Reset altar visuals (e.g., back to inactive)
fill -65 58 20 -66 58 21 minecraft:tinted_glass

# 7. Reset phase tracker (if used)
scoreboard players set AltarPhase dummy 0


