# datapacks\test\data\verbose\function\tick.mcfunction
# called by:
#   datapacks\test\data\verbose\function\load.mcfunction
#   datapacks\test\data\verbose\function\tick.mcfunction

tag @e[gamemode=spectator] add has_night_vision 
effect give @e[tag=has_night_vision] night_vision infinite
effect clear @e[tag=has_night_vision,gamemode=!spectator] night_vision
tag @e[gamemode=!spectator] remove has_night_vision

schedule function verbose:tick 1t