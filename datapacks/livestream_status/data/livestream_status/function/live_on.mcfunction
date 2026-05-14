# uncomment for verbose
# tellraw @a {"text":"live_on.mcfunction","color":"yellow"}

scoreboard players set @s live_state 1
team join --LIVE-- @s

# state state show to exucuting player
#tellraw @s {"text":"LIVE enabled","color":"red"}

# Broadcast to other plays of a live player
tellraw @a [{"text":" [LiveStatus] ","color":"yellow"},{"selector":"@s","color":"white"},{"text":" is now LIVE!","color":"white"}]