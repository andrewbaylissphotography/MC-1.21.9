# Magnet effect: pulls nearby items when holding an Echo Shard
execute as @a[nbt={SelectedItem:{id:"minecraft:echo_shard"}},gamemode=!spectator] at @s run tp @e[type=minecraft:item, distance=..5] @s
execute as @a[nbt={SelectedItem:{id:"minecraft:echo_shard"}},gamemode=!spectator] at @s run tp @e[type=minecraft:experience_orb, distance=..10] @s

# Reschedule self
schedule function magnet:tick 1t