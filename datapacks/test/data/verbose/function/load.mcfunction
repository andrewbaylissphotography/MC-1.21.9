# datapacks\test\data\verbose\function\load.mcfunction
# called by:
#   datapacks\test\data\minecraft\tags\function\load.json

# remove all and give back
recipe take @a *
recipe give @a *

# Create the team "spawn". set colour to grey and set pvp in the team to off
team add worldspawn
team modify worldspawn friendlyFire false
team modify worldspawn color gray

tellraw @a {"text":"[Verbose] Reload complete!","color":"green"}
tellraw @a {"text":"[NEW RECIPE - Copper Shears]","color":"green"}
tellraw @a {"text":"[NEW RECIPE - Compressed Cobblestone]","color":"green"}
tellraw @a {"text":"[NEW RECIPE - Copper Block from Raw Copper Block]","color":"green"}
tellraw @a {"text":"[NEW RECIPE - Iron Block from Raw Iron Block]","color":"green"}
tellraw @a {"text":"[NEW RECIPE - Gold Block from Raw Gold Block]","color":"green"}
tellraw @a {"text":"[Spectator Night Vision]","color":"green"}

schedule function verbose:tick 1t