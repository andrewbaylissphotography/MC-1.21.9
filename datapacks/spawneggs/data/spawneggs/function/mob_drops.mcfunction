# -------------------------------
# RANDOM 0.5% DROP — PLAYER-HIT ONLY
# -------------------------------

# Assign random 0–199 per mob
execute as @e[nbt={DeathTime:1s},tag=hitByPlayer,tag=!eggChecked] store result score @s rand run random roll 0..199

# ZOMBIE
execute as @e[type=zombie,nbt={DeathTime:1s},tag=hitByPlayer,tag=!eggChecked] if score @s rand matches 0 run summon item ~ ~ ~ {Item:{id:"minecraft:zombie_spawn_egg",Count:1}}
# SKELETON
execute as @e[type=skeleton,nbt={DeathTime:1s},tag=hitByPlayer,tag=!eggChecked] if score @s rand matches 0 run summon item ~ ~ ~ {Item:{id:"minecraft:skeleton_spawn_egg",Count:1}}
# SPIDER
execute as @e[type=spider,nbt={DeathTime:1s},tag=hitByPlayer,tag=!eggChecked] if score @s rand matches 0 run summon item ~ ~ ~ {Item:{id:"minecraft:spider_spawn_egg",Count:1}}
# CAVE SPIDER
execute as @e[type=cave_spider,nbt={DeathTime:1s},tag=hitByPlayer,tag=!eggChecked] if score @s rand matches 0 run summon item ~ ~ ~ {Item:{id:"minecraft:cave_spider_spawn_egg",Count:1}}
# SILVERFISH
execute as @e[type=silverfish,nbt={DeathTime:1s},tag=hitByPlayer,tag=!eggChecked] if score @s rand matches 0 run summon item ~ ~ ~ {Item:{id:"minecraft:silverfish_spawn_egg",Count:1}}
# BLAZE
execute as @e[type=blaze,nbt={DeathTime:1s},tag=hitByPlayer,tag=!eggChecked] if score @s rand matches 0 run summon item ~ ~ ~ {Item:{id:"minecraft:blaze_spawn_egg",Count:1}}
# MAGMA CUBE
execute as @e[type=magma_cube,nbt={DeathTime:1s},tag=hitByPlayer,tag=!eggChecked] if score @s rand matches 0 run summon item ~ ~ ~ {Item:{id:"minecraft:magma_cube_spawn_egg",Count:1}}

# Mark mobs as processed
tag @e[nbt={DeathTime:1s},tag=hitByPlayer] add eggChecked

# -------------------------------
# GUARANTEED DROP — every 200 player kills
# -------------------------------

# ZOMBIE
execute as @e[type=zombie,nbt={DeathTime:1s},tag=hitByPlayer] run scoreboard players add @p zombieKills 1
execute as @a[scores={zombieKills=200..}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:zombie_spawn_egg",Count:1}}
execute as @a[scores={zombieKills=200..}] run scoreboard players set @s zombieKills 0

# SKELETON
execute as @e[type=skeleton,nbt={DeathTime:1s},tag=hitByPlayer] run scoreboard players add @p skeletonKills 1
execute as @a[scores={skeletonKills=200..}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:skeleton_spawn_egg",Count:1}}
execute as @a[scores={skeletonKills=200..}] run scoreboard players set @s skeletonKills 0

# SPIDER
execute as @e[type=spider,nbt={DeathTime:1s},tag=hitByPlayer] run scoreboard players add @p spiderKills 1
execute as @a[scores={spiderKills=200..}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:spider_spawn_egg",Count:1}}
execute as @a[scores={spiderKills=200..}] run scoreboard players set @s spiderKills 0

# CAVE SPIDER
execute as @e[type=cave_spider,nbt={DeathTime:1s},tag=hitByPlayer] run scoreboard players add @p caveSpiderKills 1
execute as @a[scores={caveSpiderKills=200..}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:cave_spider_spawn_egg",Count:1}}
execute as @a[scores={caveSpiderKills=200..}] run scoreboard players set @s caveSpiderKills 0

# SILVERFISH
execute as @e[type=silverfish,nbt={DeathTime:1s},tag=hitByPlayer] run scoreboard players add @p silverfishKills 1
execute as @a[scores={silverfishKills=200..}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:silverfish_spawn_egg",Count:1}}
execute as @a[scores={silverfishKills=200..}] run scoreboard players set @s silverfishKills 0

# BLAZE
execute as @e[type=blaze,nbt={DeathTime:1s},tag=hitByPlayer] run scoreboard players add @p blazeKills 1
execute as @a[scores={blazeKills=200..}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:blaze_spawn_egg",Count:1}}
execute as @a[scores={blazeKills=200..}] run scoreboard players set @s blazeKills 0

# MAGMA CUBE
execute as @e[type=magma_cube,nbt={DeathTime:1s},tag=hitByPlayer] run scoreboard players add @p magmaCubeKills 1
execute as @a[scores={magmaCubeKills=200..}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:magma_cube_spawn_egg",Count:1}}
execute as @a[scores={magmaCubeKills=200..}] run scoreboard players set @s magmaCubeKills 0

# -------------------------------
# Cleanup hitByPlayer tags after death
# -------------------------------
tag @e[nbt={DeathTime:1s}] remove hitByPlayer
