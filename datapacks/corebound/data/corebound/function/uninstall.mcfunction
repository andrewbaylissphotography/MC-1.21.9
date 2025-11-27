# === Cleanup for CoreBound System ===

# Remove storage keys
data remove storage corebound:core loaded

# Remove scoreboards created by Core
scoreboard objectives remove mc_ver

# Cancel any scheduled Core functions

tellraw @a [{"text":"[CoreBound: System] Uninstalled cleanly.","color":"yellow"}]
