# === Cleanup for CoreBound System ===

# Remove storage keys

# Remove scoreboards created by Core
scoreboard objectives remove mc_ver

# Cancel any scheduled Core functions

tellraw @a [{"text":"[CoreBound: Skyhomes] Uninstalled cleanly.","color":"yellow"}]
