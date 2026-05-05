# === Cleanup for CoreBound: Newbie Set ===

# Remove storage keys

# Remove scoreboards created by CoreBound: Newbie Set
scoreboard objectives remove godSet
scoreboard objectives remove temp

# Cancel any scheduled CoreBound: Newbie Set functions
schedule clear god:set_bonus

tellraw @a [{"text":"[CoreBound: god Set] Uninstalled cleanly.","color":"yellow"}]
