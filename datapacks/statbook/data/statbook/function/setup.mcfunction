scoreboard objectives add attrArmor dummy
scoreboard objectives add attrArmorToughness dummy
scoreboard objectives add attrAttackDamage dummy
scoreboard objectives add attrAttackKnockback dummy
scoreboard objectives add attrAttackSpeed dummy
scoreboard objectives add attrKnockbackResist dummy
scoreboard objectives add attrLuck dummy

# enchantment bonus
scoreboard objectives add sharpBonus dummy

# Trigger for showing stats
scoreboard objectives add showStats trigger
scoreboard players enable @a showStats

schedule function statbook:show 1t