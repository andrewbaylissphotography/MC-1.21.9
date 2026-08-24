# Update all attributes for the player who triggered
execute as @a[scores={showStats=1..}] run execute store result score @s attrArmor run attribute @s minecraft:armor get
execute as @a[scores={showStats=1..}] run execute store result score @s attrArmorToughness run attribute @s minecraft:armor_toughness get
execute as @a[scores={showStats=1..}] run execute store result score @s attrAttackDamage run attribute @s minecraft:attack_damage get
execute as @a[scores={showStats=1..}] run execute store result score @s attrAttackKnockback run attribute @s minecraft:attack_knockback get
execute as @a[scores={showStats=1..}] run execute store result score @s attrAttackSpeed run attribute @s minecraft:attack_speed get

# KBR scoreboard can stay as-is for now
execute as @a[scores={showStats=1..}] run execute store result score @s attrKnockbackResist run attribute @s minecraft:knockback_resistance get

execute as @a[scores={showStats=1..}] run execute store result score @s attrLuck run attribute @s minecraft:luck get
execute as @a[scores={showStats=1..}] run execute store result score @s attrMaxHealth run attribute @s minecraft:max_health get

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


# Clear previous item data
data remove storage statbook:dialog items
data modify storage statbook:dialog items set value {head:{},chest:{},legs:{},feet:{}}

# Copy equipped armour into storage
execute as @a[scores={showStats=1..}] run data modify storage statbook:dialog items.head set from entity @s equipment.head
execute as @a[scores={showStats=1..}] run data modify storage statbook:dialog items.chest set from entity @s equipment.chest
execute as @a[scores={showStats=1..}] run data modify storage statbook:dialog items.legs set from entity @s equipment.legs
execute as @a[scores={showStats=1..}] run data modify storage statbook:dialog items.feet set from entity @s equipment.feet

# Clear previous Max Health item data
data remove storage statbook:dialog maxHealthHead
data remove storage statbook:dialog maxHealthChest
data remove storage statbook:dialog maxHealthLegs
data remove storage statbook:dialog maxHealthFeet

# Detect armour contributing to Max Health
execute as @a[scores={showStats=1..}] if items entity @s armor.head *[minecraft:attribute_modifiers~{modifiers:{contains:[{attribute:"minecraft:max_health"}]}}] run data modify storage statbook:dialog maxHealthHead set from entity @s equipment.head
execute as @a[scores={showStats=1..}] if items entity @s armor.chest *[minecraft:attribute_modifiers~{modifiers:{contains:[{attribute:"minecraft:max_health"}]}}] run data modify storage statbook:dialog maxHealthChest set from entity @s equipment.chest
execute as @a[scores={showStats=1..}] if items entity @s armor.legs *[minecraft:attribute_modifiers~{modifiers:{contains:[{attribute:"minecraft:max_health"}]}}] run data modify storage statbook:dialog maxHealthLegs set from entity @s equipment.legs
execute as @a[scores={showStats=1..}] if items entity @s armor.feet *[minecraft:attribute_modifiers~{modifiers:{contains:[{attribute:"minecraft:max_health"}]}}] run data modify storage statbook:dialog maxHealthFeet set from entity @s equipment.feet


# Add to storage
execute as @a[scores={showStats=1..}] store result storage statbook:dialog maxHealth int 1 run scoreboard players get @s attrMaxHealth
execute as @a[scores={showStats=1..}] store result storage statbook:dialog armor int 1 run scoreboard players get @s attrArmor
execute as @a[scores={showStats=1..}] store result storage statbook:dialog armorToughness int 1 run scoreboard players get @s attrArmorToughness
execute as @a[scores={showStats=1..}] store result storage statbook:dialog attackDamage int 1 run scoreboard players get @s attrAttackDamage
execute as @a[scores={showStats=1..}] store result storage statbook:dialog attackKnockback int 1 run scoreboard players get @s attrAttackKnockback
execute as @a[scores={showStats=1..}] store result storage statbook:dialog attackSpeed int 1 run scoreboard players get @s attrAttackSpeed

# KBR: get the actual attribute and multiply by 100
#execute as @a[scores={showStats=1..}] store result storage statbook:dialog knockbackResist int 100 run attribute @s minecraft:knockback_resistance get
execute as @a[scores={showStats=1..}] store result storage statbook:dialog knockbackResist double 100 run attribute @s minecraft:knockback_resistance get



execute as @a[scores={showStats=1..}] store result storage statbook:dialog luck int 1 run scoreboard players get @s attrLuck

# Display stats in chat
execute as @a[scores={showStats=1..}] run tellraw @s [{"text":"Your Stats:\n","color":"gold"}, \
{"text":"Max Health: ","color":"green"}, \
{"score":{"name":"@s","objective":"attrMaxHealth"}}, \
{"text":"\n"}, \
{"text":"Armor: ","color":"yellow"}, \
{"score":{"name":"@s","objective":"attrArmor"}}, \
{"text":"\n"}, \
{"text":"Armor Toughness: ","color":"yellow"}, \
{"score":{"name":"@s","objective":"attrArmorToughness"}}, \
{"text":"\n"}, \
{"text":"Attack Damage: ","color":"red"}, \
{"score":{"name":"@s","objective":"attrAttackDamage"}}, \
{"text":"\n"}, \
{"text":"Attack Knockback: ","color":"red"}, \
{"score":{"name":"@s","objective":"attrAttackKnockback"}}, \
{"text":"\n"}, \
{"text":"Attack Speed: ","color":"red"}, \
{"score":{"name":"@s","objective":"attrAttackSpeed"}}, \
{"text":"\n"}, \
{"text":"Knockback Resist: ","color":"aqua"}, \
{"score":{"name":"@s","objective":"attrKnockbackResist"}}, \
{"text":"\n"}, \
{"text":"Luck: ","color":"aqua"}, \
{"score":{"name":"@s","objective":"attrLuck"}} \
]

# Display stats through macro
execute as @a[scores={showStats=1..}] run function statbook:dialog with storage statbook:dialog

# Display stats through dialog - handled via dialog.mcfunction now
#execute as @a[scores={showStats=1..}] run dialog show @s statbook:stats

# Reset trigger

scoreboard players enable @a[scores={showStats=1..}] showStats
scoreboard players set @a[scores={showStats=1..}] showStats 0

schedule function statbook:show 1t