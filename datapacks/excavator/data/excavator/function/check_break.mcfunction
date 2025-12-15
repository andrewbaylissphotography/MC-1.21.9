# If player's breakCount increased → they mined a block
execute as @a if score @s breakCount > @s breakLast run function excavator:mine_block_at

# Update last known break value
execute as @a run scoreboard players operation @s breakLast = @s breakCount
