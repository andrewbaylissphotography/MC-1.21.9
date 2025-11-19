# Update all attributes for the player who triggered
execute as @a[scores={showStats=1..}] run execute store result score @s attrArmor run attribute @s minecraft:armor get
execute as @a[scores={showStats=1..}] run execute store result score @s attrArmorToughness run attribute @s minecraft:armor_toughness get
execute as @a[scores={showStats=1..}] run execute store result score @s attrAttackDamage run attribute @s minecraft:attack_damage get
execute as @a[scores={showStats=1..}] run execute store result score @s attrAttackKnockback run attribute @s minecraft:attack_knockback get
execute as @a[scores={showStats=1..}] run execute store result score @s attrAttackSpeed run attribute @s minecraft:attack_speed get
execute as @a[scores={showStats=1..}] run execute store result score @s attrKnockbackResist run attribute @s minecraft:knockback_resistance get
execute as @a[scores={showStats=1..}] run execute store result score @s attrLuck run attribute @s minecraft:luck get

scoreboard players set @a[scores={showStats=1..}] sharpBonus 0

# Get Sharpness level from main hand (0 if none)
execute as @a[scores={showStats=1..}] store result score @s sharpBonus run data get entity @s SelectedItem.components.minecraft:enchantments.minecraft:sharpness

# Calculate Sharpness bonus
# Formula: 0.5 * level + 0.5 → multiply by 2 and floor to integer: int(0.5*level + 0.5)
# We can simplify with integer math: bonus = (level + 1) // 1
# So just add 1 to level and store as bonus
scoreboard players add @a[scores={showStats=1..}] sharpBonus 1
# Add Sharpness bonus
scoreboard players operation @a[scores={showStats=1..}] attrAttackDamage += @a[scores={showStats=1..}] sharpBonus

# Display stats in chat
execute as @a[scores={showStats=1..}] run tellraw @s [{"text":"Your Stats:\n","color":"gold"},{"text":"Armor: ","color":"yellow"},{"score":{"name":"@s","objective":"attrArmor"}},{"text":"\n"},{"text":"Armor Toughness: ","color":"yellow"},{"score":{"name":"@s","objective":"attrArmorToughness"}},{"text":"\n"},{"text":"Attack Damage: ","color":"red"},{"score":{"name":"@s","objective":"attrAttackDamage"}},{"text":"\n"},{"text":"Attack Knockback: ","color":"red"},{"score":{"name":"@s","objective":"attrAttackKnockback"}},{"text":"\n"},{"text":"Attack Speed: ","color":"red"},{"score":{"name":"@s","objective":"attrAttackSpeed"}},{"text":"\n"},{"text":"Knockback Resist: ","color":"green"},{"score":{"name":"@s","objective":"attrKnockbackResist"}},{"text":"\n"},{"text":"Luck: ","color":"aqua"},{"score":{"name":"@s","objective":"attrLuck"}}]


# Reset trigger

scoreboard players enable @a[scores={showStats=1..}] showStats
scoreboard players set @a[scores={showStats=1..}] showStats 0

schedule function statbook:show 1t