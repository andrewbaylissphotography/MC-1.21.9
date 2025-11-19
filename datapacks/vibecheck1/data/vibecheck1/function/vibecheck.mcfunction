# --- Roll a random score 0–100 ---
execute store result score @s VibecheckRewardRoll run random value 0..100

# --- Announce the result ---
tellraw @p [{"text":"[Vibecheck] ","color":"gold"},{"selector":"@s","color":"aqua"},{"text":" got: ","color":"yellow"},{"score":{"name":"@s","objective":"VibecheckRewardRoll"}},{"text":"%","color":"yellow"}]

# --- RESET TOP TAGS ---
tag @a remove top1
tag @a remove top2
tag @a remove top3

# --- RESET TOP SCORES ---
scoreboard players set Top1 topVibes 0
scoreboard players set Top2 topVibes 0
scoreboard players set Top3 topVibes 0

# (We’ll compute Top1, Top2, Top3 values using standard ops)
execute as @a if score @s VibecheckRewardRoll > Top1 topVibes run scoreboard players operation Top1 topVibes = @s VibecheckRewardRoll
execute as @a if score @s VibecheckRewardRoll > Top2 topVibes unless score @s VibecheckRewardRoll = Top1 topVibes run scoreboard players operation Top2 topVibes = @s VibecheckRewardRoll
execute as @a if score @s VibecheckRewardRoll > Top3 topVibes unless score @s VibecheckRewardRoll = Top1 topVibes unless score @s VibecheckRewardRoll = Top2 topVibes run scoreboard players operation Top3 topVibes = @s VibecheckRewardRoll

# --- TAG TOP PLAYERS (handles ties automatically) ---
execute as @a if score @s VibecheckRewardRoll = Top1 topVibes run tag @s add top1
execute as @a if score @s VibecheckRewardRoll = Top2 topVibes run tag @s add top2
execute as @a if score @s VibecheckRewardRoll = Top3 topVibes run tag @s add top3

# --- UPDATE TEXT DISPLAYS (all tied players show on same line) ---
data modify entity @e[type=minecraft:text_display,limit=1,tag=vibes_rank_1] text set value [{"text":"#1: ","color":"white"},{"selector":"@a[tag=top1]","color":"green","separator":", "},{"text":" - ","color":"yellow"},{"score":{"name":"@e[tag=top1]","objective":"VibecheckRewardRoll"},"color":"green"},{"text":"%","color":"yellow"}]
data modify entity @e[type=minecraft:text_display,limit=1,tag=vibes_rank_2] text set value [{"text":"#2: ","color":"white"},{"selector":"@a[tag=top2]","color":"green","separator":", "},{"text":" - ","color":"yellow"},{"score":{"name":"@e[tag=top2]","objective":"VibecheckRewardRoll"},"color":"green"},{"text":"%","color":"yellow"}]
data modify entity @e[type=minecraft:text_display,limit=1,tag=vibes_rank_3] text set value [{"text":"#3: ","color":"white"},{"selector":"@a[tag=top3]","color":"green","separator":", "},{"text":" - ","color":"yellow"},{"score":{"name":"@e[tag=top3]","objective":"VibecheckRewardRoll"},"color":"green"},{"text":"%","color":"yellow"}]

# --- RESET TRIGGER ---
scoreboard players set @a[scores={vibecheck=1..}] vibecheck 0
scoreboard players enable @a[scores={vibecheck=0..}] vibecheck

