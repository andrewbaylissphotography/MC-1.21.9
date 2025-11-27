# --- Tag mobs near players ---
execute as @e[type=zombie,tag=!mobHealth] at @s if entity @p[distance=..16] run tag @s add mobHealth
execute as @e[type=skeleton,tag=!mobHealth] at @s if entity @p[distance=..16] run tag @s add mobHealth
execute as @e[type=spider,tag=!mobHealth] at @s if entity @p[distance=..16] run tag @s add mobHealth
execute as @e[type=cave_spider,tag=!mobHealth] at @s if entity @p[distance=..16] run tag @s add mobHealth
execute as @e[type=villager,tag=!mobHealth] at @s if entity @p[distance=..16] run tag @s add mobHealth
execute as @e[type=creeper,tag=!mobHealth] at @s if entity @p[distance=..16] run tag @s add mobHealth
execute as @e[type=warden,tag=!mobHealth] at @s if entity @p[distance=..16] run tag @s add mobHealth
execute as @e[type=witch,tag=!mobHealth] at @s if entity @p[distance=..16] run tag @s add mobHealth

execute as @e at @s if entity @p[distance=17..] run tag @s remove mobHealth

# --- Summon a text_display if the mob doesn't already have one ---
execute as @e[tag=mobHealth,tag=!hasDisplay] at @s if entity @p[distance=..16] run summon text_display ~ ~2 ~ {text:"{\"text\":\"0\"}",billboard:"vertical",background:0,shadow:true,see_through:false,Tags:["mobHealthTD"]}

# --- Mark the mob as having a display ---
execute as @e[tag=mobHealth,tag=!hasDisplay] at @s if entity @p[distance=..16] run tag @s add hasDisplay
