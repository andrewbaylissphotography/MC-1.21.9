# One-time setup: make scoreboard and store DataVersion
scoreboard objectives add mc_ver dummy

# /data get entity @s DataVersion
# execute store result score #ver mc_ver run data get entity @s DataVersion
execute store result score #ver mc_ver run data get entity @s DataVersion
tellraw @a [  "",  {"text": "[Corebound] ", "color": "gold"},  {"text": "Set DataVersion to ", "color": "yellow"},  {"score": {"name": "#ver", "objective": "mc_ver"}, "color": "aqua"}]

reload