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
# Minecraft Java’s real Sharpness bonus:
# Level	Formula	    Real Bonus	Integer Version (floor)
# 1	    1	        1.0	        1
# 2	(0.5×2) + 0.5	1.5         1
# 3	(0.5×3) + 0.5	2.0         2
# 4	(0.5×4) + 0.5	2.5         2
# 5	(0.5×5) + 0.5	3.0         3
execute as @a[scores={showStats=1..}] if score @s sharpBonus matches 1 run scoreboard players set @s sharpBonus 1
execute as @a[scores={showStats=1..}] if score @s sharpBonus matches 2 run scoreboard players set @s sharpBonus 2
execute as @a[scores={showStats=1..}] if score @s sharpBonus matches 3 run scoreboard players set @s sharpBonus 2
execute as @a[scores={showStats=1..}] if score @s sharpBonus matches 4 run scoreboard players set @s sharpBonus 2
execute as @a[scores={showStats=1..}] if score @s sharpBonus matches 5 run scoreboard players set @s sharpBonus 3

# Add Sharpness bonus
scoreboard players operation @a[scores={showStats=1..}] attrAttackDamage += @a[scores={showStats=1..}] sharpBonus

# Display stats in chat
execute as @a[scores={showStats=1..}] run tellraw @s [{"text":"Your Stats:\n","color":"gold"},{"text":"Armor: ","color":"yellow"},{"score":{"name":"@s","objective":"attrArmor"}},{"text":"\n"},{"text":"Armor Toughness: ","color":"yellow"},{"score":{"name":"@s","objective":"attrArmorToughness"}},{"text":"\n"},{"text":"Attack Damage: ","color":"red"},{"score":{"name":"@s","objective":"attrAttackDamage"}},{"text":"\n"},{"text":"Attack Knockback: ","color":"red"},{"score":{"name":"@s","objective":"attrAttackKnockback"}},{"text":"\n"},{"text":"Attack Speed: ","color":"red"},{"score":{"name":"@s","objective":"attrAttackSpeed"}},{"text":"\n"},{"text":"Knockback Resist: ","color":"green"},{"score":{"name":"@s","objective":"attrKnockbackResist"}},{"text":"\n"},{"text":"Luck: ","color":"aqua"},{"score":{"name":"@s","objective":"attrLuck"}}]


# Reset trigger

scoreboard players enable @a[scores={showStats=1..}] showStats
scoreboard players set @a[scores={showStats=1..}] showStats 0

schedule function statbook:show 1t