# One-time setup: make scoreboard and store DataVersion
scoreboard objectives add mc_ver dummy

# data get entity @s DataVersion
execute store result score #ver mc_ver run data get entity @s DataVersion

# sets storage so other modules can check if this module is installed.
data modify storage corebound:core loaded set value 1

tellraw @a [  "",  {"text": "[Corebound] ", "color": "gold"},  {"text": "Set DataVersion to ", "color": "yellow"},  {"score": {"name": "#ver", "objective": "mc_ver"}, "color": "aqua"}]

#function corebound:load
function corebound:load_new