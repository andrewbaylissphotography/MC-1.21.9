# --- Update mob whitelist and summon missing displays ---
function mobbars:mobwhitelist

# --- Update mob health scoreboard ---
execute as @e[tag=mobHealth,type=!text_display] store result score @s mobHealth run data get entity @s Health 1

# --- Update each display text for its linked mob ---
execute as @e[tag=mobHealthTD] at @s at @e[tag=mobHealth,tag=hasDisplay,sort=nearest,limit=1] if entity @p[distance=..16] run data modify entity @s text set value [{"selector":"@e[tag=mobHealth,tag=hasDisplay,sort=nearest,limit=1]","color":"white"},{"text":" — ","color":"yellow"},{"text":"❤ ","color":"red"},{"score":{"name":"@e[tag=mobHealth,tag=hasDisplay,sort=nearest,limit=1]","objective":"mobHealth"},"color":"green"}]

# --- Teleport display above its mob ---
execute as @e[tag=mobHealthTD] at @s at @e[tag=mobHealth,tag=hasDisplay,sort=nearest,limit=1] if entity @p[distance=..16] run teleport @s ~ ~2 ~

# --- Remove displays if no player is nearby ---
execute as @e[tag=mobHealthTD] at @s unless entity @p[distance=..16] run kill @s
execute as @e at @s if entity @p[distance=17..] run tag @s remove hasDisplay
scoreboard players reset @e[distance=17..]

# --- Reschedule update function every 10 ticks (0.5s) ---
schedule function mobbars:update 10t
