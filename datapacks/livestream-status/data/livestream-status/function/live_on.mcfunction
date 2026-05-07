scoreboard players set @s live_state 1
team join --LIVE-- @s
tellraw @s {"text":"LIVE enabled","color":"red"}

# Broadcast to other plays of a live player
tellraw @a [{"text":"🔴 ","color":"red"},{"selector":"@s"},{"text":" is now LIVE!","color":"white"}]