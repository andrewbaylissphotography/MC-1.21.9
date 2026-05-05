# datapacks\God_set_bonus\data\God\function\setbonus.mcfunction
# called by:
#   datapacks\God_set_bonus\data\God\function\load.mcfunction

# Reset score each tick
scoreboard players set @a godSet 0

# Helmet check
execute as @a if data entity @s {equipment:{head:{id:"minecraft:leather_helmet",components:{"minecraft:item_name":{text:"God Helmet",color:"yellow",italic:0b}}}}} run scoreboard players add @s godSet 1

# Chestplate check
execute as @a if data entity @s {equipment:{chest:{id:"minecraft:leather_chestplate",components:{"minecraft:item_name":{text:"God Chestplate",color:"yellow",italic:0b}}}}} run scoreboard players add @s godSet 1

# Leggings check
execute as @a if data entity @s {equipment:{legs:{id:"minecraft:leather_leggings",components:{"minecraft:item_name":{text:"God Leggings",color:"yellow",italic:0b}}}}} run scoreboard players add @s godSet 1

# Boots check
execute as @a if data entity @s {equipment:{feet:{id:"minecraft:leather_boots",components:{"minecraft:item_name":{text:"God Boots",color:"yellow",italic:0b}}}}} run scoreboard players add @s godSet 1

# Apply set bonuses
# 1 pieces = Luck
execute as @a if score @s godSet matches 1.. run effect give @s minecraft:luck 10 0 true

# 2 pieces = Speed
execute as @a if score @s godSet matches 2.. run effect give @s minecraft:speed 10 0 true

# 3 pieces = Regen
execute as @a if score @s godSet matches 3.. run effect give @s minecraft:regeneration 10 0 true

# 4 pieces = Resistance
execute as @a if score @s godSet matches 4 run effect give @s minecraft:resistance 10 0 true

# Reschedule self in 100 ticks (5 seconds)
schedule function god:set_bonus 100t