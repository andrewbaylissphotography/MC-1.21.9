# datapacks\newbie_set_bonus\data\newbie\function\setbonus.mcfunction
# called by:
#   datapacks\newbie_set_bonus\data\newbie\function\load.mcfunction

# Reset score each tick
scoreboard players set @a newbieSet 0

# Helmet check
execute as @a if data entity @s {equipment:{head:{id:"minecraft:leather_helmet",components:{"minecraft:item_name":{text:"Newbie Helmet",color:"yellow",italic:0b}}}}} run scoreboard players add @s newbieSet 1

# Chestplate check
execute as @a if data entity @s {equipment:{chest:{id:"minecraft:leather_chestplate",components:{"minecraft:item_name":{text:"Newbie Chestplate",color:"yellow",italic:0b}}}}} run scoreboard players add @s newbieSet 1

# Leggings check
execute as @a if data entity @s {equipment:{legs:{id:"minecraft:leather_leggings",components:{"minecraft:item_name":{text:"Newbie Leggings",color:"yellow",italic:0b}}}}} run scoreboard players add @s newbieSet 1

# Boots check
execute as @a if data entity @s {equipment:{feet:{id:"minecraft:leather_boots",components:{"minecraft:item_name":{text:"Newbie Boots",color:"yellow",italic:0b}}}}} run scoreboard players add @s newbieSet 1

# Apply set bonuses
# 1 pieces = Luck
execute as @a if score @s newbieSet matches 1.. run effect give @s minecraft:luck 10 0 true

# 2 pieces = Speed
execute as @a if score @s newbieSet matches 2.. run effect give @s minecraft:speed 10 0 true

# 3 pieces = Regen
execute as @a if score @s newbieSet matches 3.. run effect give @s minecraft:regeneration 10 0 true

# 4 pieces = Resistance
execute as @a if score @s newbieSet matches 4 run effect give @s minecraft:resistance 10 0 true

# Reschedule self in 100 ticks (5 seconds)
schedule function newbie:set_bonus 100t