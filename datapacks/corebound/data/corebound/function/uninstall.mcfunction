# === Cleanup for CoreBound System ===

# Remove storage keys
data remove storage corebound:core loaded
tellraw @a [{"text":"   [CoreBound: System] Remove storage keys.","color":"yellow"}]

# Remove scoreboards created by Core
scoreboard objectives remove mc_ver
tellraw @a [{"text":"   [CoreBound: System] Remove scoreboards created by Core.","color":"yellow"}]

# Cancel any scheduled Core functions

# remove tags
tag @a remove corebound.init
tellraw @a [{"text":"   [CoreBound: System] remove tags.","color":"yellow"}]


tellraw @a [{"text":"[CoreBound: System] Uninstalled cleanly.","color":"yellow"}]
