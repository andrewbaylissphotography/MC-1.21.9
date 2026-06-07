# === Cleanup for CoreBound: livestream_status ===

# Remove storage keys

# Remove scoreboards created by CoreBound: livestream
scoreboard objectives remove live 
scoreboard objectives remove live_state
scoreboard objectives remove _state

# Cancel any scheduled CoreBound: livestream functions
schedule clear livestream_status:tick

# Remove teams
team remove --LIVE--

# Remove custom recipes

# Remove any tags

# Remove any effects

# verbose 
tellraw @a [{"text":"[CoreBound: Live Stream Status] Uninstalled cleanly.","color":"yellow"}]
