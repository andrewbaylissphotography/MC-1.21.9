# altar:check_completion
execute if score AltarTotal Contribution matches 1000 run tellraw @a {"text":"§The altar is satisfied with your offerings!","color":"gold"}

# Trigger reward/reset at full completion
execute if score AltarTotal Contribution matches 1000.. run function altar:reset
