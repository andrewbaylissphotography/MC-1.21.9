# === Cleanup for CoreBound: Respawn Buff ===

# Remove storage keys

# Remove scoreboards created by CoreBound: Respawn Buff
scoreboard objectives remove deaths
scoreboard objectives remove lastDeath
scoreboard objectives remove justDied

# Cancel any scheduled CoreBound: Respawn Buff functions
schedule clear on_death_effects:tick

# Remove custon recipes

tellraw @a [{"text":"[CoreBound: Respawn Buff] Uninstalled cleanly.","color":"yellow"}]
