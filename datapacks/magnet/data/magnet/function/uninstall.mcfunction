# === Cleanup for CoreBound System ===

# Remove storage keys

# Remove scoreboards created by Core

# Cancel any scheduled Core functions
schedule clear magnet:tick

# Remove custon recipes
recipe take @a magnet:v1_21_6/magnet
recipe take @a magnet:v1_21_9/magnet

tellraw @a [{"text":"[CoreBound: Magnet] Uninstalled cleanly.","color":"yellow"}]
