# Live Status - Controlled by Player
scoreboard players add @a live_state 0
scoreboard players enable @a live

execute as @a[scores={live=1..}] run function livestream_status:toggle_and_reset
