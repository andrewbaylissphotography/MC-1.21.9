# === Cleanup for CoreBound: Recipes ===

# Remove storage keys

# Remove scoreboards created by CoreBound: Recipes

# Cancel any scheduled CoreBound: Recipes functions

# Remove custom recipes
recipe take @a mcfix:raw_copper_block_blastfurnce
recipe take @a mcfix:raw_copper_block_furnace

recipe take @a mcfix:raw_gold_block_blastfurnce
recipe take @a mcfix:raw_gold_block_furnace

recipe take @a mcfix:raw_iron_block_blastfurnce
recipe take @a mcfix:raw_iron_block_furnace

recipe take @a mcfix:hopper_from_barrel
recipe take @a mcfix:hopper_from_logs
recipe take @a mcfix:logs_to_chest
recipe take @a mcfix:logs_to_sticks
recipe take @a mcfix:rotten_flesh_to_leather_furnace
recipe take @a mcfix:wool_to_string

recipe take @a mcfix:gunpowder

tellraw @a [{"text":"[CoreBound: Recipes] Uninstalled cleanly.","color":"yellow"}]
