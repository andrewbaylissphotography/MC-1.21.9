say minecraft:overworld
execute in minecraft:overworld as @e[type=marker] run data get entity @s UUID
execute in minecraft:overworld as @e[type=marker] run data get entity @s Pos
execute in minecraft:overworld as @e[type=marker] run data get entity @s Tags

say ph1:home
execute in ph1:home as @e[type=marker] run data get entity @s UUID
execute in ph1:home as @e[type=marker] run data get entity @s Pos
execute in ph1:home as @e[type=marker] run data get entity @s Tags

say ph2:home
execute in ph2:home as @e[type=marker] run data get entity @s UUID
execute in ph2:home as @e[type=marker] run data get entity @s Pos
execute in ph2:home as @e[type=marker] run data get entity @s Tags
