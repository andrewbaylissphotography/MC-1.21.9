#tellraw @s {"text":"Teleporting to world spawn...","color":"gold"}
#tellraw changed to actionbar because of chat spam

title @s actionbar {"text":"Teleporting to world spawn...","color":"gold"}
scoreboard players operation @s spawn.delay = #delay spawn.config

# default code
#execute store result score @s spawn.x run data get entity @s Pos[0] 10
#execute store result score @s spawn.y run data get entity @s Pos[1] 10
#execute store result score @s spawn.z run data get entity @s Pos[2] 10

# altered to work with summon marker
#execute in spawn:spawn_overworld run execute store result score @s spawn.x run data get entity @e[type=marker,tag=worldspawn,limit=1] Pos[0] 10
#execute in spawn:spawn_overworld run execute store result score @s spawn.y run data get entity @e[type=marker,tag=worldspawn,limit=1] Pos[1] 10
#execute in spawn:spawn_overworld run execute store result score @s spawn.z run data get entity @e[type=marker,tag=worldspawn,limit=1] Pos[2] 10

execute in spawn:spawn_overworld run tp @s @e[type=marker,tag=worldspawn,limit=1]
