# creative mode rules
gamerule doWeatherCycle false
tellraw @a [  "",  {"text": "[Corebound] ", "color": "gold"},  {"text": "Set doWeatherCycle to ", "color": "yellow"},  {"text": "false", "color": "aqua"}]

weather clear
tellraw @a [  "",  {"text": "[Corebound] ", "color": "gold"},  {"text": "Set weather to ", "color": "yellow"},  {"text": "Clear", "color": "aqua"}]

gamerule doDaylightCycle false
tellraw @a [  "",  {"text": "[Corebound] ", "color": "gold"},  {"text": "Set doDaylightCycle to ", "color": "yellow"},  {"text": "false", "color": "aqua"}]

time set day
tellraw @a [  "",  {"text": "[Corebound] ", "color": "gold"},  {"text": "Set time to ", "color": "yellow"},  {"text": "Day", "color": "aqua"}]

gamerule doTraderSpawning false
tellraw @a [  "",  {"text": "[Corebound] ", "color": "gold"},  {"text": "Set doTraderSpawning to ", "color": "yellow"},  {"text": "false", "color": "aqua"}]
