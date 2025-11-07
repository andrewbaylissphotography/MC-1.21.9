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

schedule function verbose:tick 1t