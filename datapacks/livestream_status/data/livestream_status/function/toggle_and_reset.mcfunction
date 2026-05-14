# uncomment for verbose
# tellraw @a {"text":"toggle_and_reset.mcfunction","color":"yellow"}

# copy state first - snapshot
scoreboard players operation @s _state = @s live_state

function livestream_status:toggle
scoreboard players set @s live 0