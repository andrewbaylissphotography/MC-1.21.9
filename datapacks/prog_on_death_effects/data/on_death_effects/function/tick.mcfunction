# Detect new deaths and mark players
execute as @a unless score @s lastDeath matches 0.. run scoreboard players set @s lastDeath 0

execute as @a if score @s deaths > @s lastDeath run scoreboard players set @s justDied 1

# Update last known death count
execute as @a if score @s deaths > @s lastDeath run scoreboard players operation @s lastDeath = @s deaths

# Wait until the player is alive again, then apply 10 second temp buffs and clear the flag
execute as @a[scores={justDied=1}] unless entity @s[nbt={Health:0.0f}] run effect give @s minecraft:resistance 10 1
execute as @a[scores={justDied=1}] unless entity @s[nbt={Health:0.0f}] run effect give @s minecraft:strength 10 1
execute as @a[scores={justDied=1}] unless entity @s[nbt={Health:0.0f}] run effect give @s minecraft:regeneration 10 1
execute as @a[scores={justDied=1}] unless entity @s[nbt={Health:0.0f}] run effect give @s minecraft:fire_resistance 10 1
execute as @a[scores={justDied=1}] unless entity @s[nbt={Health:0.0f}] run effect give @s minecraft:invisibility 10 1
execute as @a[scores={justDied=1}] unless entity @s[nbt={Health:0.0f}] run effect give @s minecraft:absorption 10 1

execute as @a[scores={justDied=1}] unless entity @s[nbt={Health:0.0f}] run scoreboard players set @s justDied 0


# Reschedule self
schedule function on_death_effects:tick 1t