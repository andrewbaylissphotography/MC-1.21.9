// Corebound item tag registration
ServerEvents.tags('item', event => {

// ============================================================================
// Corebound Datapack Items
//
// Every item listed here has its gameplay altered by Corebound.
// Players can search "#corebound" in EMI/JEI to discover items with
// new recipes, alternate acquisition methods, or unique interactions.
//
// This file also serves as the master index of every modified item.
// ============================================================================

  const coreboundItems = [
    'minecraft:echo_shard',

    // Leather armor - breakdown leather armor to leather using the stonecutter
    'minecraft:leather_helmet',
    'minecraft:leather_chestplate',
    'minecraft:leather_leggings',
    'minecraft:leather_boots',

    // Storage blocks - smelt raw blocks
    'minecraft:copper_block',
    'minecraft:iron_block',
    'minecraft:gold_block',

    // Materials - cook rotten flesh
    'minecraft:leather',

    // unpackables - uncompress items back into their source
    'minecraft:nether_wart',

    // upgrade to Diamond tools - use the smithing table with diamond block, book and iron tool
    'minecraft:diamond_shovel',
    'minecraft:diamond_pickaxe',
    'minecraft:diamond_axe',
    'minecraft:diamond_hoe',
    'minecraft:diamond_sword',

    // upgrade to Diamond armor - use the smithing table with diamond block, book and iron armour
    'minecraft:diamond_helmet',
    'minecraft:diamond_chestplate',
    'minecraft:diamond_leggings',
    'minecraft:diamond_boots',
    'minecraft:diamond_horse_armor',

    // upgrade to iron tools - use the smithing table with iron block, book and golden tool
    'minecraft:iron_shovel',
    'minecraft:iron_pickaxe',
    'minecraft:iron_axe',
    'minecraft:iron_hoe',
    'minecraft:iron_sword',

    // upgrade to iron armor - use the smithing table with iron block, book and golden armour
    'minecraft:iron_helmet',
    'minecraft:iron_chestplate',
    'minecraft:iron_leggings',
    'minecraft:iron_boots',
    'minecraft:iron_horse_armor',

  ]

  // Add all listed items to the "corebound" tag.
  event.add('corebound', coreboundItems)

})