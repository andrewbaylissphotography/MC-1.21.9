# Emeralds
execute if entity @s[nbt={SelectedItem:{id:"minecraft:emerald"}}] run function server_shop:sell/emerald

# Diamonds
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond"}}] run function server_shop:sell/diamond

# Reset trigger
scoreboard players set @s sell 0
