# uncomment for verbose
# tellraw @a {"text":"toggle.mcfunction","color":"yellow"}

# branch only on snapshot
execute if score @s _state matches 0 run function livestream_status:live_on
execute if score @s _state matches 1 run function livestream_status:live_off
