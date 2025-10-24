# datapacks\test\data\verbose\function\tick.mcfunction
# called by:
#   datapacks\test\data\verbose\function\load.mcfunction
#   datapacks\test\data\verbose\function\tick.mcfunction

# Spectator night vision
tag @e[gamemode=spectator] add has_night_vision 
effect give @e[tag=has_night_vision] night_vision infinite
effect clear @e[tag=has_night_vision,gamemode=!spectator] night_vision
tag @e[gamemode=!spectator] remove has_night_vision

# Assign all players currently in your spawn dimension to the "spawn" team
execute in spawn:spawn_overworld run team join worldspawn @a[team=!worldspawn]
# Force Adventure mode in spawn dimension
execute as @a[team=worldspawn,tag=!trusted] at @s if dimension spawn:spawn_overworld run gamemode adventure @s

# Prevent block breaking with Mining Fatigue
execute as @a[team=worldspawn,tag=!trusted] at @s if dimension spawn:spawn_overworld run effect give @s minecraft:mining_fatigue 3 4 true

# Restore Survival outside that dimension
execute as @a[gamemode=adventure] at @s unless dimension spawn:spawn_overworld run gamemode survival @s
execute as @a[team=worldspawn] at @s unless dimension spawn:spawn_overworld run team leave @s


# spawn yeet - go to stafftown:stafftown_overworld run tp
execute as @a at @s if entity @s[y=40,dy=-1000, distance=..1000] if dimension spawn:spawn_overworld run function verbose:yeet

# Reschedule this function every tick
schedule function verbose:tick 1t


