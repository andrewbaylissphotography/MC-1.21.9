# Diamond pickaxe
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}}] run function excavator:raycast_1

# Netherite pickaxe
execute if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_pickaxe"}}] run function excavator:raycast_1
