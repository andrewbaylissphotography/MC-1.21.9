# === Cleanup for CoreBound: Spectator Night Vision ===

# Remove storage keys

# Remove scoreboards created by CoreBound: Spectator Night Vision

# Cancel any scheduled CoreBound: Spectator Night Vision functions
schedule clear gm3nightvision:tick

# Remove custom recipes

# Remove any tags
tag @a remove has_night_vision

# Remove any effects
effect clear @a night_vision

tellraw @a [{"text":"[CoreBound: Spectator Night Vision] Uninstalled cleanly.","color":"yellow"}]
