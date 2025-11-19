# --- Initialize absorpCycle for new players ---
execute as @a unless score @s absorpCycle matches 0.. run scoreboard players set @s absorpCycle 0

# increase max health limit based on hostile mob kills
execute as @a[scores={hostilekills=10..}] run effect give @s minecraft:health_boost infinite 0 true
execute as @a[scores={hostilekills=20..}] run effect give @s minecraft:health_boost infinite 1 true
execute as @a[scores={hostilekills=30..}] run effect give @s minecraft:health_boost infinite 2 true
execute as @a[scores={hostilekills=40..}] run effect give @s minecraft:health_boost infinite 3 true
execute as @a[scores={hostilekills=50..}] run effect give @s minecraft:health_boost infinite 4 true

# give absorption (consumable shield) based on hostile mob kills
execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 110 run effect give @s minecraft:absorption infinite 0 true
execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 120 run effect give @s minecraft:absorption infinite 1 true
execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 130 run effect give @s minecraft:absorption infinite 2 true
execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 140 run effect give @s minecraft:absorption infinite 3 true
execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 150 run effect give @s minecraft:absorption infinite 4 true
execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 160 run effect give @s minecraft:absorption infinite 5 true
execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 170 run effect give @s minecraft:absorption infinite 6 true
execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 180 run effect give @s minecraft:absorption infinite 7 true
execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 190 run effect give @s minecraft:absorption infinite 8 true
execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 200 run effect give @s minecraft:absorption infinite 9 true


# reapply shield every 1000 kills (warrior of the 3 kingdoms)
# --- Reapply Absorption every 1000 kills (hardcoded) ---
execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 1000 run effect give @s minecraft:absorption infinite 9 true
execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 1000 run effect give @s minecraft:regeneration 10 4 true
execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 1000 run effect give @s minecraft:saturation 10 4 true

execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 2000 run effect give @s minecraft:absorption infinite 9 true
execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 2000 run effect give @s minecraft:regeneration 10 4 true
execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 2000 run effect give @s minecraft:saturation 10 4 true

execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 3000 run effect give @s minecraft:absorption infinite 9 true
execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 3000 run effect give @s minecraft:regeneration 10 4 true
execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 3000 run effect give @s minecraft:saturation 10 4 true

execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 4000 run effect give @s minecraft:absorption infinite 9 true
execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 4000 run effect give @s minecraft:regeneration 10 4 true
execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 4000 run effect give @s minecraft:saturation 10 4 true

execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 5000 run effect give @s minecraft:absorption infinite 9 true
execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 5000 run effect give @s minecraft:regeneration 10 4 true
execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 5000 run effect give @s minecraft:saturation 10 4 true

execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 6000 run effect give @s minecraft:absorption infinite 9 true
execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 6000 run effect give @s minecraft:regeneration 10 4 true
execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 6000 run effect give @s minecraft:saturation 10 4 true

execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 7000 run effect give @s minecraft:absorption infinite 9 true
execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 7000 run effect give @s minecraft:regeneration 10 4 true
execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 7000 run effect give @s minecraft:saturation 10 4 true

execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 8000 run effect give @s minecraft:absorption infinite 9 true
execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 8000 run effect give @s minecraft:regeneration 10 4 true
execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 8000 run effect give @s minecraft:saturation 10 4 true

execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 9000 run effect give @s minecraft:absorption infinite 9 true
execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 9000 run effect give @s minecraft:regeneration 10 4 true
execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 9000 run effect give @s minecraft:saturation 10 4 true

execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 10000 run effect give @s minecraft:absorption infinite 9 true
execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 10000 run effect give @s minecraft:regeneration 10 4 true
execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 10000 run effect give @s minecraft:saturation 10 4 true

# --- Update absorpCycle milestone after applying absorption ---
execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 0.. run scoreboard players operation @s absorpCycle = @s hostilekills

# --- Reschedule self ---
schedule function totalkills_healthboost:tick 1t

