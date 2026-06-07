# Spectator night vision
tag @e[gamemode=creative] add has_creative
attribute @e[tag=has_creative,limit=1] minecraft:attack_damage base set 1000
attribute @e[tag=has_creative,gamemode=!creative,limit=1] minecraft:attack_damage base reset
tag @e[gamemode=!creative] remove has_creative

# Reschedule self
schedule function gm1attack_damage:tick 1t
