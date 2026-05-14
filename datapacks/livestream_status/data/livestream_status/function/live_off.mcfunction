# uncomment for verbose
# tellraw @a {"text":"live_off.mcfunction","color":"yellow"}

scoreboard players set @s live_state 0
team leave @s

# state state show to exucuting player
#tellraw @s {"text":"LIVE disabled","color":"gray"}

# Broadcast to other plays of a live player
tellraw @a [{"text":" [LiveStatus] ","color":"yellow"},{"selector":"@s","color":"white"},{"text":" is no longer LIVE!","color":"white"}]