# === Cleanup for CoreBound: Recipes ===

# Remove storage keys

# Remove scoreboards created by CoreBound: unpackables

# Cancel any scheduled CoreBound: unpackables functions

# Remove custom recipes
function unpackables:v1_21_0-take
function unpackables:v1_21_2-take


tellraw @a [{"text":"[CoreBound: Unpackables] Uninstalled cleanly.","color":"yellow"}]
