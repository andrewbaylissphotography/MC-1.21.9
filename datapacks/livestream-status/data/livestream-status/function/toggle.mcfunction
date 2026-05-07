# branch only on snapshot
execute if score @s _state matches 0 run function livestream-status:live_on
execute if score @s _state matches 1 run function livestream-status:live_off
