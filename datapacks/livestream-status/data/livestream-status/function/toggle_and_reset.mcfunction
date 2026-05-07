# copy state first - snapshot
scoreboard players operation @s _state = @s live_state

function livestream-status:toggle
scoreboard players set @s live 0