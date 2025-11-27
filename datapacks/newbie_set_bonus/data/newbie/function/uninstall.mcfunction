# === Cleanup for CoreBound: Newbie Set ===

# Remove storage keys

# Remove scoreboards created by CoreBound: Newbie Set
scoreboard objectives remove newbieSet
scoreboard objectives remove temp

# Cancel any scheduled CoreBound: Newbie Set functions
schedule clear newbie:set_bonus

tellraw @a [{"text":"[CoreBound: Newbie Set] Uninstalled cleanly.","color":"yellow"}]
