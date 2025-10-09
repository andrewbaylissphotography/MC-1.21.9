# ================================
# altar:process_items
# Called every tick from altar:tick
# Processes dropped items tagged as altar_donation
# ================================

# 1. Run visuals if donation item is detected nearby
execute positioned -65 59 21 if entity @e[tag=altar_donation,distance=..12] run function altar:visuals/donation_found

# 2. Show red glass if there are items nearby but none are valid
execute positioned -65 59 21 if entity @e[type=item,distance=..12] unless entity @e[tag=altar_donation,distance=..12] run function altar:visuals/wrong_donation

# 3. Reset per-entity Contribution score
scoreboard players set @e[tag=altar_donation] Contribution 0

# 4. Store stack count into Contribution score (e.g., 13 diamonds = 13 points)
execute as @e[tag=altar_donation] store result score @s Contribution run data get entity @s Item.count

# 5. Add each item's contribution to the global AltarTotal score
execute as @e[tag=altar_donation] run scoreboard players operation AltarTotal Contribution += @s Contribution

# 6. Remove processed items from the world
kill @e[tag=altar_donation]

# 7. Clean up tag (optional safety)
tag @e[tag=altar_donation] remove altar_donation





