# altar:check_completion
# Check if AltarTotal Contribution reached 1000 points or more

execute if score AltarTotal Contribution matches 1000.. run say The altar is satisfied with your offerings!

execute if score AltarTotal Contribution matches 1000.. run function altar:reset



# altar:check_completion

# Phase 1: 250 points
execute if score AltarTotal Contribution matches 250 run tellraw @a {"text":"The altar hums faintly...","color":"gray"}

# Phase 2: 500 points
execute if score AltarTotal Contribution matches 500 run tellraw @a {"text":"The altar begins to glow with energy.","color":"aqua"}

# Phase 3: 750 points
execute if score AltarTotal Contribution matches 750 run tellraw @a {"text":"A low voice whispers from the altar...","color":"dark_purple"}

# Final phase: 1000 points — complete
execute if score AltarTotal Contribution matches 1000 run tellraw @a {"text":"§lThe altar is satisfied with your offerings!","color":"gold"}

# Trigger reward/reset at full completion
execute if score AltarTotal Contribution matches 1000.. run function altar:reset
