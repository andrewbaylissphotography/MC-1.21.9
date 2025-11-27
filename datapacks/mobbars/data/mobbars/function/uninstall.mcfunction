# === Cleanup for CoreBound: Mob Status Bar ===

# Remove storage keys

# Remove scoreboards created by CoreBound: Mob Status Bar
scoreboard objectives remove mobHealth

# Cancel any scheduled CoreBound: Mob Status Bar functions
schedule clear mobbars:mobwhitelist
schedule clear mobbars:update

tellraw @a [{"text":"[CoreBound: Mob Status Bar] Uninstalled cleanly.","color":"yellow"}]
