# apply this enchant to SelectedItem
enchant @s corebound_enchant:magnetic

# test for item has this enchantment
execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"corebound_enchant:magnetic"}]]

# give book with enchant in it
give @s minecraft:enchanted_book[minecraft:stored_enchantments={"corebound_enchant:magnetic":1}] 1
