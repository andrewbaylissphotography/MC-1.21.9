# Player roll
scoreboard objectives add VibecheckRewardRoll dummy

# Triggers
scoreboard objectives add vibecheck trigger
scoreboard objectives add vibeleaderboard trigger

scoreboard players enable @e[type=minecraft:player] vibecheck
scoreboard players enable @e[type=minecraft:player] vibeleaderboard

# Fake players to store top scores
scoreboard objectives add topVibes dummy

# place text_display
execute unless entity @e[tag=vibes_title,type=text_display] run summon text_display ~ ~2.5 ~ {text:'{"text":"!vibes leaderboard"}',billboard:"vertical",background:0,shadow:true,see_through:false,Tags:["vibes_title"]}
#set vibes_title formating
data modify entity @e[type=minecraft:text_display,limit=1,tag=vibes_title] text set value [{"text":"[!vibes leaderboard]","color":"gold"}]

execute unless entity @e[tag=vibes_rank_1,type=text_display] run summon text_display ~ ~2 ~ {text:'{"text":"#1 Loading leaderboard..."}',billboard:"vertical",background:0,shadow:true,see_through:false,Tags:["vibes_rank_1"]}
execute unless entity @e[tag=vibes_rank_2,type=text_display] run summon text_display ~ ~1.5 ~ {text:'{"text":"#2 Loading leaderboard..."}',billboard:"vertical",background:0,shadow:true,see_through:false,Tags:["vibes_rank_2"]}
execute unless entity @e[tag=vibes_rank_3,type=text_display] run summon text_display ~ ~1 ~ {text:'{"text":"#3 Loading leaderboard..."}',billboard:"vertical",background:0,shadow:true,see_through:false,Tags:["vibes_rank_3"]}