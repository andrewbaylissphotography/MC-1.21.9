# Ensure all players have a coin score
scoreboard players add @a[scores={coin=..-1}] coin 0

# Handle sell trigger
execute as @a[scores={sell=1..}] run function server_shop:sell/main
