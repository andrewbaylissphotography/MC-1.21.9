# datapacks\test\data\altar\function\give_reward.mcfunction
# called by:
#   datapacks\test\data\altar\function\reset.mcfunction

tellraw @s [{"text":"The altar rewards you! You rolled: ","color":"gold"},{"score":{"name":"@s","objective":"AltarRewardRoll"}}]

#execute if score @s AltarRewardRoll matches 1 run function altar:reward_roll/give_sword
#execute if score @s AltarRewardRoll matches 2 run function altar:reward_roll/give_axe
#execute if score @s AltarRewardRoll matches 3 run function altar:reward_roll/give_pickaxe
#execute if score @s AltarRewardRoll matches 4 run function altar:reward_roll/give_shovel
#execute if score @s AltarRewardRoll matches 5 run function altar:reward_roll/give_hoe

execute if score @s AltarRewardRoll matches 1 run function references:give_sword_uncommon
execute if score @s AltarRewardRoll matches 2 run function altar:reward_roll/give_axe
execute if score @s AltarRewardRoll matches 3 run function altar:reward_roll/give_pickaxe
execute if score @s AltarRewardRoll matches 4 run function altar:reward_roll/give_shovel
execute if score @s AltarRewardRoll matches 5 run function altar:reward_roll/give_hoe

# Reset the roll after use
scoreboard players reset @s AltarRewardRoll
