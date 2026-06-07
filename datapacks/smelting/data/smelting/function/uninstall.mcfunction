# === Cleanup for CoreBound: Recipes ===

# Remove storage keys

# Remove scoreboards created by CoreBound: Recipes

# Cancel any scheduled CoreBound: Recipes functions

# Remove custom recipes
recipe take @a smelting:raw_copper_block_blastfurnce
recipe take @a smelting:raw_copper_block_furnace

recipe take @a smelting:raw_gold_block_blastfurnce
recipe take @a smelting:raw_gold_block_furnace

recipe take @a smelting:raw_iron_block_blastfurnce
recipe take @a smelting:raw_iron_block_furnace

recipe take @a smelting:rotten_flesh_to_leather_furnace


tellraw @a [{"text":"[CoreBound: Smelting] Uninstalled cleanly.","color":"yellow"}]
