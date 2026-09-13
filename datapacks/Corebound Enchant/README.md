# CoreBound Enchanting

![Minecraft](https://img.shields.io/badge/Minecraft%20Java-1.21--26.2-62B47A?logo=minecraft&logoColor=white)
![Datapack](https://img.shields.io/badge/Type-Datapack-blue)


Adds the Magnetic enchantment to Minecraft.

## Magnetic

Magnetic automatically pulls nearby dropped items and experience orbs toward the player.

When a player is holding an item enchanted with Magnetic in their main hand:

Dropped items within 8 blocks (configuable) are pulled to the player.
Experience orbs within 8 blocks (configuable) are pulled to the player.
The effect works automatically every tick.

Magnetic can be applied to items in Minecraft's #minecraft:enchantable/durability item category.

Obtaining Magnetic

Magnetic can be obtained as an enchanted book and is added to village temple loot.

Commands

Give yourself Magnetic on a suitable item:

enchant @s corebound_enchant:magnetic


Give yourself a Magnetic enchanted book:

give @s minecraft:enchanted_book[minecraft:stored_enchantments={"corebound_enchant:magnetic":1}] 1

## Technical Details

The enchantment is identified as:

corebound_enchant:magnetic

The pack checks the player's main-hand item each tick. If Magnetic is present, nearby item entities and experience_orb entities within 8 blocks are teleported to the player.

## Requirements

This datapack requires the CoreBound resource pack (corebound_rp).

## Development Notes

Some ideas and programming assistance were generated with the help of AI tools (ChatGPT) for brainstorming and function logic. All code was tested, integrated, and reviewed manually.

Resources
https://vanillatweaks.net/
https://www.gamergeeks.net/apps/minecraft
https://misode.github.io/
https://chatgpt.com/