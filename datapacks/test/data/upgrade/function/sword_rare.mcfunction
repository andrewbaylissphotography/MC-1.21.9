# Create a dummy scoreboard (only once)
scoreboard objectives add rareSwordCheck dummy

# Check how many the player has (but don't remove them)
execute store result score @s rareSwordCheck run clear @s minecraft:netherite_sword[item_name=[{"text":"Rare Netherite Sword","italic":false,"color":"green"}]] 0

# Only proceed if player has 9 or more
execute if score @s rareSwordCheck matches 9.. run clear @s minecraft:netherite_sword[item_name=[{"text":"Rare Netherite Sword","italic":false,"color":"green"}]] 9

# Give rare sword only if clear succeeded
execute if score @s rareSwordCheck matches 9.. run function references:give_sword_epic

# Optional: tell player
#execute if score @s rareSwordCheck matches ..8 run title @s actionbar {"text":"[✗] You need at least 9 Rare Swords.","color":"red"}
execute if score @s rareSwordCheck matches 9.. run title @s actionbar  {"text":"[✓] You upgraded to a Epic Sword!","color":"aqua"}

# Reset scoreboard
scoreboard players reset @s rareSwordCheck
