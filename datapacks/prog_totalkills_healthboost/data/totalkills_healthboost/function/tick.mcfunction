# --- Initialize absorpCycle for new players ---
execute as @a unless score @s absorpCycle matches 0.. run scoreboard players set @s absorpCycle 0
execute as @a unless score @s EffectReapply matches 0.. run scoreboard players set @s EffectReapply 0

# increase max health limit based on hostile mob kills
execute as @a[scores={hostilekills=10..}] run effect give @s minecraft:health_boost infinite 0 true
execute as @a[scores={hostilekills=10}] run title @s actionbar [{"text":"Killed 10 hostile mobs:","color":"gold"}," ",{"text":"Max Health increased to","color":"yellow"}," ",{"text":"24","color":"aqua"}]

execute as @a[scores={hostilekills=20..}] run effect give @s minecraft:health_boost infinite 1 true
execute as @a[scores={hostilekills=20}] run title @s actionbar [{"text":"Killed 20 hostile mobs:","color":"gold"}," ",{"text":"Max Health increased to","color":"yellow"}," ",{"text":"28","color":"aqua"}]

execute as @a[scores={hostilekills=30..}] run effect give @s minecraft:health_boost infinite 2 true
execute as @a[scores={hostilekills=30}] run title @s actionbar [{"text":"Killed 30 hostile mobs:","color":"gold"}," ",{"text":"Max Health increased to","color":"yellow"}," ",{"text":"32","color":"aqua"}]

execute as @a[scores={hostilekills=40..}] run effect give @s minecraft:health_boost infinite 3 true
execute as @a[scores={hostilekills=40}] run title @s actionbar [{"text":"Killed 40 hostile mobs:","color":"gold"}," ",{"text":"Max Health increased to","color":"yellow"}," ",{"text":"36","color":"aqua"}]

execute as @a[scores={hostilekills=50..}] run effect give @s minecraft:health_boost infinite 4 true
execute as @a[scores={hostilekills=50}] run title @s actionbar [{"text":"Killed 50 hostile mobs:","color":"gold"}," ",{"text":"Max Health increased to","color":"yellow"}," ",{"text":"40","color":"aqua"}]

execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 110 unless data entity @s {active_effects:[{id:"minecraft:absorption"}]} run effect give @s minecraft:absorption infinite 0 true
execute as @a[scores={hostilekills=110}] run title @s actionbar [{"text":"Killed 110 hostile mobs:","color":"gold"}," ",{"text":"Absorption increased to","color":"yellow"}," ",{"text":"4","color":"aqua"}]

execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 120 unless data entity @s {active_effects:[{id:"minecraft:absorption",amplifier:1b}]} run effect give @s minecraft:absorption infinite 1 true
execute as @a[scores={hostilekills=120}] run title @s actionbar [{"text":"Killed 120 hostile mobs:","color":"gold"}," ",{"text":"Absorption increased to","color":"yellow"}," ",{"text":"8","color":"aqua"}]

execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 130 unless data entity @s {active_effects:[{id:"minecraft:absorption",amplifier:2b}]} run effect give @s minecraft:absorption infinite 2 true
execute as @a[scores={hostilekills=130}] run title @s actionbar [{"text":"Killed 130 hostile mobs:","color":"gold"}," ",{"text":"Absorption increased to","color":"yellow"}," ",{"text":"12","color":"aqua"}]

execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 140 unless data entity @s {active_effects:[{id:"minecraft:absorption",amplifier:3b}]} run effect give @s minecraft:absorption infinite 3 true
execute as @a[scores={hostilekills=140}] run title @s actionbar [{"text":"Killed 140 hostile mobs:","color":"gold"}," ",{"text":"Absorption increased to","color":"yellow"}," ",{"text":"16","color":"aqua"}]

execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 150 unless data entity @s {active_effects:[{id:"minecraft:absorption",amplifier:4b}]} run effect give @s minecraft:absorption infinite 4 true
execute as @a[scores={hostilekills=150}] run title @s actionbar [{"text":"Killed 150 hostile mobs:","color":"gold"}," ",{"text":"Absorption increased to","color":"yellow"}," ",{"text":"20","color":"aqua"}]

execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 160 unless data entity @s {active_effects:[{id:"minecraft:absorption",amplifier:5b}]} run effect give @s minecraft:absorption infinite 5 true
execute as @a[scores={hostilekills=160}] run title @s actionbar [{"text":"Killed 160 hostile mobs:","color":"gold"}," ",{"text":"Absorption increased to","color":"yellow"}," ",{"text":"24","color":"aqua"}]

execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 170 unless data entity @s {active_effects:[{id:"minecraft:absorption",amplifier:6b}]} run effect give @s minecraft:absorption infinite 6 true
execute as @a[scores={hostilekills=170}] run title @s actionbar [{"text":"Killed 170 hostile mobs:","color":"gold"}," ",{"text":"Absorption increased to","color":"yellow"}," ",{"text":"28","color":"aqua"}]

execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 180 unless data entity @s {active_effects:[{id:"minecraft:absorption",amplifier:7b}]} run effect give @s minecraft:absorption infinite 7 true
execute as @a[scores={hostilekills=180}] run title @s actionbar [{"text":"Killed 180 hostile mobs:","color":"gold"}," ",{"text":"Absorption increased to","color":"yellow"}," ",{"text":"32","color":"aqua"}]

execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 190 unless data entity @s {active_effects:[{id:"minecraft:absorption",amplifier:8b}]} run effect give @s minecraft:absorption infinite 8 true
execute as @a[scores={hostilekills=190}] run title @s actionbar [{"text":"Killed 190 hostile mobs:","color":"gold"}," ",{"text":"Absorption increased to","color":"yellow"}," ",{"text":"36","color":"aqua"}]

execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 200 unless data entity @s {active_effects:[{id:"minecraft:absorption",amplifier:9b}]} run effect give @s minecraft:absorption infinite 9 true
execute as @a[scores={hostilekills=200}] run title @s actionbar [{"text":"Killed 200 hostile mobs:","color":"gold"}," ",{"text":"Absorption increased to","color":"yellow"}," ",{"text":"40","color":"aqua"}]

# Copy current kills to EffectReapply
scoreboard players operation @a[scores={hostilekills=1..}] EffectReapply = @s hostilekills

# Trigger effects if EffectReapply reached 1000
execute as @a[scores={EffectReapply=1000..}] title @s actionbar [{"text":"absorption, regeneration & saturation refilled","color":"gold"}]
execute as @a[scores={EffectReapply=1000..}] run effect give @s minecraft:absorption infinite 9 true
execute as @a[scores={EffectReapply=1000..}] run effect give @s minecraft:regeneration 10 4 true
execute as @a[scores={EffectReapply=1000..}] run effect give @s minecraft:saturation 10 4 true


# Subtract 1000 so it only triggers once per 1000 kills
scoreboard players remove @a[scores={EffectReapply=1000..}] EffectReapply 1000


# --- Update absorpCycle milestone after applying absorption ---
execute as @a if score @s hostilekills > @s absorpCycle if score @s hostilekills matches 0.. run scoreboard players operation @s absorpCycle = @s hostilekills

# --- Reschedule self ---
schedule function totalkills_healthboost:tick 1t

