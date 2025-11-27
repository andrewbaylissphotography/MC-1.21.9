# Add tag hitByPlayer to mobs recently hurt by a player
execute as @e[type=zombie] at @s if entity @p[distance=..5] run tag @s add hitByPlayer
execute as @e[type=skeleton] at @s if entity @p[distance=..5] run tag @s add hitByPlayer
execute as @e[type=spider] at @s if entity @p[distance=..5] run tag @s add hitByPlayer
execute as @e[type=cave_spider] at @s if entity @p[distance=..5] run tag @s add hitByPlayer
execute as @e[type=silverfish] at @s if entity @p[distance=..5] run tag @s add hitByPlayer
execute as @e[type=blaze] at @s if entity @p[distance=..5] run tag @s add hitByPlayer
execute as @e[type=magma_cube] at @s if entity @p[distance=..5] run tag @s add hitByPlayer
